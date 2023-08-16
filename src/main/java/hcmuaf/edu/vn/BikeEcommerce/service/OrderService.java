package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.OrderDAO;
import hcmuaf.edu.vn.BikeEcommerce.DAO.UserDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateId;
import org.jdbi.v3.core.Jdbi;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

public class OrderService {
    Jdbi jdbi = JDBIConnector.get();
    public List<Order> getAllOrder(){
        return jdbi.withExtension(OrderDAO.class, dao-> dao.getAllOrder());
    }
    public Order getOrderById(String orderId) {
            Order order = jdbi.withExtension(OrderDAO.class, dao-> dao.getOrderById(orderId));
            User user = jdbi.withExtension(UserDAO.class, dao-> dao.getUserByKey(order.getUserId()));
            order.setUser(user);
        return order;
    }
    public void insertOrder(Order order) {
        jdbi.useExtension(OrderDAO.class, dao-> dao.insertOrder(order));
    }
    public void updateOrder(Order order) {
        jdbi.useExtension(OrderDAO.class, dao-> dao.updateOrder(order));
    }
    public void deleteOrderById(String orderId) {
        jdbi.useExtension(OrderDAO.class, dao-> dao.deleteOrderById(orderId));
    }

    public static void main(String[] args) {
        OrderService orderService = new OrderService();
        UserService userService = new UserService();
        User user =userService.getUserByKey("h@gmail.com");
        Order order = new Order();
        order.setOrderId(GenerateId.generateIdOrder());
        order.setUserId(user.getUserId());
        order.setPrice(500);
        order.setDiscount(20);
        order.setShippingFee(5);
        order.setTotal(order.getPrice(),order.getShippingFee(),order.getDiscount());
        order.setSendDay(Timestamp.valueOf(LocalDateTime.now()).toString());
        order.setReceiveDay(Timestamp.valueOf(LocalDateTime.now()).toString());
        order.setStatus(1);
        System.out.println(order);
        System.out.println(user);
//
        orderService.insertOrder(order);
        Order order1 = orderService.getOrderById("230816C0C989");
        System.out.println(order1);
    }
}
