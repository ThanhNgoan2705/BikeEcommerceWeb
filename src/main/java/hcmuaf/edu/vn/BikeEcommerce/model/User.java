package hcmuaf.edu.vn.BikeEcommerce.model;

import org.jdbi.v3.core.mapper.reflect.ColumnName;
/**
 * Created by Admin on 05-Jun-18. <br/>
 * <b>role:</b> 1-user, 2-admin
 *
 */
public class User {
    private static final int USER = 1;
    private static final int ADMIN = 2;
    @ColumnName("user_id")
    private String userId;
    @ColumnName("email")
    private String email;
    @ColumnName("pass")
    private String pass;
    @ColumnName("user_name")
    private String userName;
    @ColumnName("salt")
    private  String salt;
    @ColumnName("create_at")
    private   String createdAt;
    @ColumnName("update_at")
    private  String updatedAt;
    @ColumnName("role")
    private int role; // 1-user, 2-admin

    public User() {
    }


    public User(String userId, String email, String pass, String userName, String salt) {
        this.userId = userId;
        this.email = email;
        this.pass = pass;
        this.userName = userName;
        this.salt = salt;
    }

    @Override
    public String toString() {
        return "User{" + "userId='" + userId + '\'' + ", email='" + email + '\'' + ", pass='" + pass + '\'' + ", userName='" + userName + '\'' + ", salt='" + salt + '\'' + ", createdAt='" + createdAt + '\'' + ", updatedAt='" + updatedAt + '\'' + ", role=" + role + '}';
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
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
        return getSalt() + pass;
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

}
