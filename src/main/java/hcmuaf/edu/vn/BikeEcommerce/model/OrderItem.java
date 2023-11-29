package hcmuaf.edu.vn.BikeEcommerce.model;

import java.util.Objects;

/**
 * Created by Admin on 19-8-23.<br/>
 * This class is used to store information of order item <br/>
 * This class is used to map with order item table in database <br/>
 * One order have many order items <br/>
 * One order item have one product and quantity <br/>
 *
 * @version 1.0
 * @Author Hoang Hai
 * @see Order
 * @see Product
 */
public class OrderItem {
    private String orderItemId;
    private String orderId;
    private String productId;
    private int quantity;
    private String colorId;
    private double price;
    private String createdAt;
    private String updatedAt;
    // attribute object
    private Product product;
    private Color color;

    public OrderItem() {
    }

    public OrderItem(String orderItemId, String orderId, String productId, int quantity, String colorId, double price, String createdAt, String updatedAt) {
        this.orderItemId = orderItemId;
        this.orderId = orderId;
        this.productId = productId;
        this.quantity = quantity;
        this.colorId = colorId;
        this.price = price;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    @Override
    public String toString() {
        return "OrderItem{" +
                "orderItemId='" + orderItemId + '\'' +
                ", orderId='" + orderId + '\'' +
                ", productId='" + productId + '\'' +
                ", quantity=" + quantity +
                ", colorId='" + colorId + '\'' +
                ", price=" + price +
                ", createdAt='" + createdAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                ", product=" + product +
                ", color=" + color +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderItem orderItem = (OrderItem) o;
        return Objects.equals(orderItemId, orderItem.orderItemId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(orderItemId);
    }

    public String getOrderItemId() {
        return orderItemId;
    }

    public void setOrderItemId(String orderItemId) {
        this.orderItemId = orderItemId;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getColorId() {
        return colorId;
    }

    public void setColorId(String colorId) {
        this.colorId = colorId;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public String getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(String updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public String forToBytesOfOrder() {
        return orderItemId + "," + orderId + "," + productId + "," + quantity + "," + colorId + "," + price ;
    }
}