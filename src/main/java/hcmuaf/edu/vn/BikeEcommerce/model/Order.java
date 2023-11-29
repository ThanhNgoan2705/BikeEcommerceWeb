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
    private String fullAddress;
    @ColumnName("price")
    private double price;
    @ColumnName("discount")
    private double discount;
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
    private List<OrderItem> orderItemList;

    //1-pending, 2-Confirmed, 3-Processing, 4-Shipped,5-Delivered,6-Cancelled,7-Returned,8-Refunded
    public Order() {
    }

    public Order(String orderId, String userId, String fullAddress, double price, double discount, double shippingFee, double total, String sendDay, String receiveDay, int status, String createdAt, String updatedAt) {
        this.orderId = orderId;
        this.userId = userId;
        this.fullAddress = fullAddress;
        this.price = price;
        this.discount = discount;
        this.shippingFee = shippingFee;
        this.total = total;
        this.sendDay = sendDay;
        this.receiveDay = receiveDay;
        this.status = status;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId='" + orderId + '\'' +
                ", userId='" + userId + '\'' +
                ", fullAddress='" + fullAddress + '\'' +
                ", price=" + price +
                ", discount=" + discount +
                ", shippingFee=" + shippingFee +
                ", total=" + total +
                ", sendDay='" + sendDay + '\'' +
                ", receiveDay='" + receiveDay + '\'' +
                ", status=" + status +
                ", createdAt='" + createdAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                ", user=" + user +
                ", orderItemList=" + orderItemList +
                '}';
    }

    public String getFullAddress() {
        return fullAddress;
    }

    public void setFullAddress(String fullAddress) {
        this.fullAddress = fullAddress;
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

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
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
        this.total = price + shippingFee - discount;
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

    public String toStringForHash() {
        String orderItemListToString = "";
        if (orderItemList != null) {
            for (OrderItem orderItem : orderItemList) {
                orderItemListToString = orderItemListToString + orderItem.forToBytesOfOrder();
            }
        }
        return (":" + orderId + ";" + userId + ";" + fullAddress + ";" + price + ";" + discount + ";" + shippingFee + ";" + total + ":" + orderItemListToString);
    }


//    public static Order getOrderFromBytes(byte[] bytes) {
//        Order order = new Order();
//        String s = new String(bytes);
//        StringTokenizer stringTokenizer = new StringTokenizer(s, ":");
//        String orderToken = stringTokenizer.nextToken();
//        StringTokenizer orderTokenizer = new StringTokenizer(orderToken, ";");
//        order.setOrderId(orderTokenizer.nextToken());
//        order.setUserId(orderTokenizer.nextToken());
//        order.setAddressId(orderTokenizer.nextToken());
//        order.setPrice(Double.parseDouble(orderTokenizer.nextToken()));
//        order.setDiscount(Integer.parseInt(orderTokenizer.nextToken()));
//        order.setShippingFee(Double.parseDouble(orderTokenizer.nextToken()));
//        order.setTotal(Double.parseDouble(orderTokenizer.nextToken()));
//        String itemToken = stringTokenizer.nextToken();
//        StringTokenizer itemTokenizer = new StringTokenizer(itemToken, "+");
//        List<OrderItem> orderItemList = new ArrayList<>();
//        while (itemTokenizer.hasMoreTokens()) {
//            String item = itemTokenizer.nextToken();
//            StringTokenizer itemToken2 = new StringTokenizer(item, "--");
//            OrderItem orderItem = new OrderItem();
//            orderItem.setOrderId(order.getOrderId());
//            orderItem.setProductId(itemToken2.nextToken());
//            orderItem.setQuantity(Integer.parseInt(itemToken2.nextToken()));
//            orderItemList.add(orderItem);
//        }
//        order.setOrderItemList(orderItemList);
//        return order;
//    }

//    public static void main(String[] args) {
//        Order order = new Order("1", "2", "3", 2, 0, 1, 5, "8", "9", 1);
//        List<OrderItem> orderItemList = new ArrayList<>();
//        orderItemList.add(new OrderItem("1", "1", 1));
//        orderItemList.add(new OrderItem("1", "2", 2));
//        order.setOrderItemList(orderItemList);
//        byte[] bytes = order.toBytes();
//        Order order1 = Order.getOrderFromBytes(bytes);
//        List<OrderItem> orderItems = order1.getOrderItemList();
//        System.out.println(orderItems);
//
//    }


}
