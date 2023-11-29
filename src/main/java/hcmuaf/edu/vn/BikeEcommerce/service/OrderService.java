package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.OrderDAO;
import hcmuaf.edu.vn.BikeEcommerce.DAO.UserDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.model.OrderItem;
import hcmuaf.edu.vn.BikeEcommerce.model.User;
import org.jdbi.v3.core.Jdbi;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;
import java.util.ArrayList;
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
        order.setUser(user);
        order.setOrderItemList(items);
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
        order.setFullAddress(orderTokenizer.nextToken());
        order.setPrice(Double.parseDouble(orderTokenizer.nextToken()));
        order.setDiscount(Double.parseDouble(orderTokenizer.nextToken()));
        order.setShippingFee(Double.parseDouble(orderTokenizer.nextToken()));
        order.setTotal(Double.parseDouble(orderTokenizer.nextToken()));
        String itemToken = stringTokenizer.nextToken();
        StringTokenizer itemTokenizer = new StringTokenizer(itemToken, "+");
        List<OrderItem> orderItemList = new ArrayList<>();
        while (itemTokenizer.hasMoreTokens()) {
            String item = itemTokenizer.nextToken();
            StringTokenizer itemToken2 = new StringTokenizer(item, ",");
            OrderItem orderItem = new OrderItem();
            orderItem.setOrderItemId(itemToken2.nextToken());
            orderItem.setOrderId(itemToken2.nextToken());
            orderItem.setProductId(itemToken2.nextToken());
            orderItem.setQuantity(Integer.parseInt(itemToken2.nextToken()));
            orderItem.setColorId(itemToken2.nextToken());
            orderItem.setPrice(Double.parseDouble(itemToken2.nextToken()));
            orderItemList.add(orderItem);
        }
        order.setOrderItemList(orderItemList);
        return order;
    }

    public static void main(String[] args) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException {


        OrderService    orderService = new OrderService();
        Order order = orderService.getOrderById("23113014fd04");
        System.out.println(order);
        System.out.println(order.toStringForHash());
        System.out.println(orderService.getOrderFromBytes(order.toStringForHash()));


    }
}
