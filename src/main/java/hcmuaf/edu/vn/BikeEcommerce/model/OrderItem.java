package hcmuaf.edu.vn.BikeEcommerce.model;

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
