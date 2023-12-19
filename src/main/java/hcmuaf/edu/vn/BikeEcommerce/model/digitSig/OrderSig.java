package hcmuaf.edu.vn.BikeEcommerce.model.digitSig;

public class OrderSig {
    String OrderId;
    String sig;
    String createdAt;

    public OrderSig(String orderId, String sig) {
        OrderId = orderId;
        this.sig = sig;
    }

    public OrderSig() {
    }

    @Override
    public String toString() {
        return "OrderSig{" +
                "OrderId='" + OrderId + '\'' +
                ", sig='" + sig + '\'' +
                ", createdAt='" + createdAt + '\'' +
                '}';
    }

    public String getOrderId() {
        return OrderId;
    }

    public void setOrderId(String orderId) {
        OrderId = orderId;
    }

    public String getSig() {
        return sig;
    }

    public void setSig(String sig) {
        this.sig = sig;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

}
