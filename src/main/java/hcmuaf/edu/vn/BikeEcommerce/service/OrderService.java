package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.OrderDAO;
import hcmuaf.edu.vn.BikeEcommerce.DAO.UserDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Address;
import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.model.OrderItem;
import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.RSA;
import org.jdbi.v3.core.Jdbi;

import java.security.*;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.StringTokenizer;
import java.util.stream.Collectors;

public class OrderService {
    Jdbi jdbi = JDBIConnector.get();
    private static OrderService instance = null;


    public static OrderService getInstance() {
        if (instance == null) {
            instance = new OrderService();
        }
        return instance;
    }

    public OrderService() {
    }

    public List<Order> getAllOrder() {
        return jdbi.withExtension(OrderDAO.class, dao -> dao.getAllOrder());
    }

    public List<Order> getAllOrderByUserId(String userId) {
        List<Order> orders = jdbi.withExtension(OrderDAO.class, dao -> dao.getAllOrderByUserId(userId));
        return orders.stream().map(order -> mapToOrder(order)).collect(Collectors.toList());
    }

    public Order getOrderById(String orderId) {
        return mapToOrder(jdbi.withExtension(OrderDAO.class, dao -> dao.getOrderById(orderId)));
    }

    public Order mapToOrder(Order order) {
        if (order == null) {
            return null;
        }
        User user = jdbi.withExtension(UserDAO.class, dao -> dao.getUserByKey(order.getUserId()));
        List<OrderItem> items = OrderItemService.getInstance().getOrderItemsByOrderId(order.getOrderId());
        Address address = AddressService.getInstance().getAddressByAddressId(order.getAddressId());
        order.setUser(user);
        order.setOrderItemList(items);
        order.setAddress(address);
        return order;
    }

    public void insertOrder(Order order) {
        jdbi.useExtension(OrderDAO.class, dao -> dao.insertOrder(order));
    }

    public void updateOrder(Order order) {
        jdbi.useExtension(OrderDAO.class, dao -> dao.updateOrder(order));
    }

    public void deleteOrderById(String orderId) {
        jdbi.useExtension(OrderDAO.class, dao -> dao.deleteOrderById(orderId));
    }

    public Order getOrderFromBytes(String orderCode) {
        Order order = new Order();
        StringTokenizer stringTokenizer = new StringTokenizer(orderCode, ":");
        String orderToken = stringTokenizer.nextToken();
        StringTokenizer orderTokenizer = new StringTokenizer(orderToken, ";");
        order.setOrderId(orderTokenizer.nextToken());
        order.setUserId(orderTokenizer.nextToken());
        order.setAddressId(orderTokenizer.nextToken());
        order.setPrice(Double.parseDouble(orderTokenizer.nextToken()));
        order.setDiscount(Integer.parseInt(orderTokenizer.nextToken()));
        order.setShippingFee(Double.parseDouble(orderTokenizer.nextToken()));
        order.setTotal(Double.parseDouble(orderTokenizer.nextToken()));
        String itemToken = stringTokenizer.nextToken();
        StringTokenizer itemTokenizer = new StringTokenizer(itemToken, "+");
        List<OrderItem> orderItemList = new ArrayList<>();
        while (itemTokenizer.hasMoreTokens()) {
            String item = itemTokenizer.nextToken();
            StringTokenizer itemToken2 = new StringTokenizer(item, "--");
            OrderItem orderItem = new OrderItem();
            orderItem.setOrderId(order.getOrderId());
            orderItem.setProductId(itemToken2.nextToken());
            orderItem.setQuantity(Integer.parseInt(itemToken2.nextToken()));
            orderItemList.add(orderItem);
        }
        order.setOrderItemList(orderItemList);
        return order;
    }

    public static void main(String[] args) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException {
//        Jdbi jdbi = JDBIConnector.get();
//        String orderId = "1";
//        OrderService orderService = new OrderService();
//        Order order = orderService.getOrderById(orderId);
//        System.out.println(order);
//        List<OrderItem> items = jdbi.withExtension(OrderItemDAO.class, dao -> dao.getOrderItemsByOrderId(orderId));
//        System.out.println(items);


//        Order order = new Order("1", "2", "3", 2, 0, 1, 5, "8", "9", 1);
//        List<OrderItem> orderItemList = new ArrayList<>();
//        orderItemList.add(new OrderItem("1", "1", 1));
//        orderItemList.add(new OrderItem("1", "2", 2));
//        order.setOrderItemList(orderItemList);
//
//        System.out.println(order.toStringForHash());

        RSA rsa = RSA.getInstance();

        KeyPair keyPair = rsa.generateKeyPair();
        PrivateKey privateKey = keyPair.getPrivate();
        PublicKey publicKey = keyPair.getPublic();
        System.out.println(privateKey.getFormat().toString());
        System.out.println(privateKey.getAlgorithm().toString());

        System.out.println(publicKey.getFormat().toString());
        System.out.println(publicKey.getAlgorithm().toString());

        KeyPair keyPair2 = rsa.generateKeyPair();
        PrivateKey privateKey2 = keyPair2.getPrivate();
        PublicKey  publicKey2 = keyPair2.getPublic();
        System.out.println(Base64.getEncoder().encodeToString( privateKey2.getEncoded()));
        System.out.println(publicKey2.getFormat().toString());
//
//        byte[] bytes = rsa.getHashWithSHA256(order.toStringForHash());
////        byte[] bytes = order.toStringForHash().getBytes();
//        String s = rsa.packageSignature(rsa.getSignature(privateKey, bytes), bytes);
//
//
//        StringTokenizer stringTokenizer = new StringTokenizer(s, " ");
//
//        String signature = stringTokenizer.nextToken();
//
//        String message = stringTokenizer.nextToken();

//        boolean b = rsa.verifySignature(publicKey, Base64.getDecoder().decode(message), signature);
//        System.out.println(b);
//        System.out.println(signature);
//        System.out.println(new String (Base64.getDecoder().decode(message)) );
//        byte[] decodeBase64 = Base64.getDecoder().decode(message);


    }
}
