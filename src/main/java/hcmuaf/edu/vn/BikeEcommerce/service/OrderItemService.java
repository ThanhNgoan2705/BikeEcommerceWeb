package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.OrderItemDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.OrderItem;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.stream.Collectors;

public class OrderItemService {
    Jdbi jdbi = JDBIConnector.get();
    private static OrderItemService instance = null;

    public static OrderItemService getInstance() {
        if (instance == null) {
            instance = new OrderItemService();
        }
        return instance;
    }

    public OrderItemService() {
    }

    public List<OrderItem> getOrderItemsByOrderId(String orderId) {
        List<OrderItem> items = jdbi.withExtension(OrderItemDAO.class, dao -> dao.getOrderItemsByOrderId(orderId));
        return items.stream().map(item -> mapOrderBean(item)).collect(Collectors.toList());
    }

    public OrderItem mapOrderBean(OrderItem item) {
        if (item == null) return null;
        item.setProduct(ProductService.getInstance().getProductById(item.getProductId()));
        return item;
    }

    public void insertOrderItem(OrderItem orderItem) {
        jdbi.useExtension(OrderItemDAO.class, dao -> dao.insertOrderItem(orderItem));
    }

    public void updateOrderItem(OrderItem orderItem) {
        jdbi.useExtension(OrderItemDAO.class, dao -> dao.updateOrderItem(orderItem));
    }

    public void deleteOrderItem(String id) {
        jdbi.useExtension(OrderItemDAO.class, dao -> dao.deleteOrderItem(id));
    }

    public static void main(String[] args) {
        OrderItemService orderItemService = new OrderItemService();
        String orderId = "1";
        List<OrderItem> items = orderItemService.getOrderItemsByOrderId(orderId);
        System.out.println(items);
    }
}
