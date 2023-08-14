package hcmuaf.edu.vn.BikeEcommerce.model;

public class User {
    String userId;
    String email;
    String pass;
    String userName;
    String salt;

    public User() {
    }

    public User(String userId, String email, String pass, String userName, String salt) {
        this.userId = userId;
        this.email = email;
        this.pass = pass;
        this.userName = userName;
        this.salt = salt;
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

    @Override
    public String toString() {
        return "User{" +
                "userId='" + userId + '\'' +
                ", email='" + email + '\'' +
                ", pass='" + pass + '\'' +
                ", userName='" + userName + '\'' +
                ", salt='" + salt + '\'' +
                '}';
    }
}
