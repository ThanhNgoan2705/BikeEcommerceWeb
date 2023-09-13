package hcmuaf.edu.vn.BikeEcommerce.model;

import java.util.List;

/**
 * Created by Admin on 05-Jun-18. <br/>
 * This class is used to store information of User <br/>
 * This class is used to map with User table in database <br/>
 * One user have many orders <br/>
 * One user have many comments <br/>
 * One user have many favorites <br/>
 * One user have many addresses <br/>
 * One user have one cart <br/>
 *
 * <b>role:</b>  <br/>
 * 0-pending (when register), 1-user (when login), 2-admin, 3-blocked (when user violate the rules) <br/>
 *
 * @version 1.0
 * @Author Hoang Hai
 * @see Address
 * @see Order
 * @see Cart
 * @see Comment
 * @see Favorite
 */
public class User {
    private static final int PENDING = 0;
    private static final int USER = 1;
    private static final int ADMIN = 2;
    private static final int BLOCKED = 3;
    private String userId;
    private String email;
    private String pass;
    private String userName;
    private String salt;
    private int role; // 1-user, 2-admin
    private List<Address> addresses;
    private List<Order> orders;
    private List<Comment> comments;
    private List<Favorite> favorites;
    private String createdAt;
    private String updatedAt;

    public User() {
    }

    public User(String userId, String email, String pass, String userName, String salt, int role) {
        this.userId = userId;
        this.email = email;
        this.pass = pass;
        this.userName = userName;
        this.salt = salt;
        this.role = role;
    }

    public User(String userId, String email, String pass, String userName, String salt, int role, List<Address> addresses, List<Order> orders, List<Comment> comments, List<Favorite> favorites) {
        this.userId = userId;
        this.email = email;
        this.pass = pass;
        this.userName = userName;
        this.salt = salt;
        this.role = role;
        this.addresses = addresses;
        this.orders = orders;
        this.comments = comments;
        this.favorites = favorites;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId='" + userId + '\'' +
                ", email='" + email + '\'' +
                ", pass='" + pass + '\'' +
                ", userName='" + userName + '\'' +
                ", salt='" + salt + '\'' +
                ", role=" + role +
                ", addresses=" + addresses +
                ", orders=" + orders +
                ", comments=" + comments +
                ", favorites=" + favorites +
                ", createdAt='" + createdAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                '}';
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return salt + pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public List<Address> getAddresses() {
        return addresses;
    }

    public void setAddresses(List<Address> addresses) {
        this.addresses = addresses;
    }

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public List<Favorite> getFavorites() {
        return favorites;
    }

    public void setFavorites(List<Favorite> favorites) {
        this.favorites = favorites;
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
}
