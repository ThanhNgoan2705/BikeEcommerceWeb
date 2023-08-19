package hcmuaf.edu.vn.BikeEcommerce.model;

import org.jdbi.v3.core.mapper.Nested;
import org.jdbi.v3.core.mapper.reflect.ColumnName;

import java.util.List;

/**
 * Created by Admin on 05-Jun-18.<br/>
 * This class is used to store information of order <br/>
 * This class is used to map with order table in database <br/>
 * One user have many orders    <br/>
 * One order have many order items <br/>
 * One order have one address <br/>
 * One order have one user <br/>
 *
 * <b>status:</b>
 * 1-pending,
 * 2-Confirmed,
 * 3-Processing,
 * 4-Shipped,
 * 5-Delivered,
 * 6-Cancelled,
 * 7-Returned,
 * 8-Refunded
 *
 * @version 1.0
 * @Author Hoang Hai
 * @see User
 * @see OrderItem
 * @see Address
 */
public class Order {
    public static final int PENDING = 1;
    public static final int CONFIRMED = 2;
    public static final int PROCESSING = 3;
    public static final int SHIPPED = 4;
    public static final int DELIVERED = 5;
    public static final int CANCELLED = 6;
    public static final int RETURNED = 7;
    public static final int REFUNDED = 8;

    private String orderId;

    private String userId;
    private String addressId;
    @ColumnName("price")
    private double price;
    @ColumnName("discount")
    private int discount;
    @ColumnName("shipping_fee")
    private double shippingFee;
    @ColumnName("total")
    private double total;
    @ColumnName("send_day")
    private String sendDay;
    @ColumnName("receive_day")
    private String receiveDay;
    @ColumnName("status")
    private int status;
    @ColumnName("create_at")
    private String createdAt;
    @ColumnName("update_at")
    private String updatedAt;
    // atrribute object
    @Nested("u")
    private User user;
    private Address address;
    private List<OrderItem> orderItemList;

    //1-pending, 2-Confirmed, 3-Processing, 4-Shipped,5-Delivered,6-Cancelled,7-Returned,8-Refunded
    public Order() {
    }

    public Order(String orderId, String userId, String addressId, double price, int discount, double shippingFee, double total, String sendDay, String receiveDay, int status) {
        this.orderId = orderId;
        this.userId = userId;
        this.addressId = addressId;
        this.price = price;
        this.discount = discount;
        this.shippingFee = shippingFee;
        this.total = total;
        this.sendDay = sendDay;
        this.receiveDay = receiveDay;
        this.status = status;
    }

    public Order(String orderId, String userId, String addressId, double price, int discount, double shippingFee, double total, String sendDay, String receiveDay, int status, User user, Address address, List<OrderItem> orderItemList) {
        this.orderId = orderId;
        this.userId = userId;
        this.addressId = addressId;
        this.price = price;
        this.discount = discount;
        this.shippingFee = shippingFee;
        this.total = total;
        this.sendDay = sendDay;
        this.receiveDay = receiveDay;
        this.status = status;
        this.user = user;
        this.address = address;
        this.orderItemList = orderItemList;
    }

    @Override
    public String toString() {
        return "Order{" + "orderId='" + orderId + '\'' + ", userId='" + userId + '\'' + ", addressId='" + addressId + '\'' + ", price=" + price + ", discount=" + discount + ", shippingFee=" + shippingFee + ", total=" + total + ", sendDay='" + sendDay + '\'' + ", receiveDay='" + receiveDay + '\'' + ", status=" + status + ", createdAt='" + createdAt + '\'' + ", updatedAt='" + updatedAt + '\'' + ", user=" + user + ", address=" + address + ", orderItemList=" + orderItemList + '}';
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public String getAddressId() {
        return addressId;
    }

    public void setAddressId(String addressId) {
        this.addressId = addressId;
    }

    public List<OrderItem> getOrderItemList() {
        return orderItemList;
    }

    public void setOrderItemList(List<OrderItem> orderItemList) {
        this.orderItemList = orderItemList;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
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

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public double getShippingFee() {
        return shippingFee;
    }

    public void setShippingFee(double shippingFee) {
        this.shippingFee = shippingFee;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public void setTotal(double price, double shippingFee, double discount) {
        double sum = price + shippingFee;
        double discountMoney = price * discount / 100;
        this.total = sum - discountMoney;
    }

    public String getSendDay() {
        return sendDay;
    }

    public void setSendDay(String sendDay) {
        this.sendDay = sendDay;
    }

    public String getReceiveDay() {
        return receiveDay;
    }

    public void setReceiveDay(String receiveDay) {
        this.receiveDay = receiveDay;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
