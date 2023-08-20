package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.OrderDAO;
import hcmuaf.edu.vn.BikeEcommerce.DAO.UserDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Address;
import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.model.OrderItem;
import hcmuaf.edu.vn.BikeEcommerce.model.User;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
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


    public static void main(String[] args) {
        Jdbi jdbi = JDBIConnector.get();
        String orderId = "1";
        OrderService orderService = new OrderService();
        Order order = orderService.getOrderById(orderId);
        System.out.println(order);
//        List<OrderItem> items = jdbi.withExtension(OrderItemDAO.class, dao -> dao.getOrderItemsByOrderId(orderId));
//        System.out.println(items);
    }
}
