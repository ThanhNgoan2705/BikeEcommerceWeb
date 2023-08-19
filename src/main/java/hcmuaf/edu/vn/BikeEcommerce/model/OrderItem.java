package hcmuaf.edu.vn.BikeEcommerce.model;

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
    private String orderId;
    private String productId;
    private int quantity;
    // attribute object
    private Product product;

    public OrderItem(String orderId, String productId, int quantity) {
        this.orderId = orderId;
        this.productId = productId;
        this.quantity = quantity;
    }

    public OrderItem() {
    }

    public OrderItem(String orderId, String productId, int quantity, Product product) {
        this.orderId = orderId;
        this.productId = productId;
        this.quantity = quantity;
        this.product = product;
    }

    @Override
    public String toString() {
        return "OrderItem{" +
                "orderId='" + orderId + '\'' +
                ", productId='" + productId + '\'' +
                ", quantity=" + quantity +
                ", product=" + product +
                '}';
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
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
}
