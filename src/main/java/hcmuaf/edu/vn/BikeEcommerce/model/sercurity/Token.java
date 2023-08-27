package hcmuaf.edu.vn.BikeEcommerce.model.sercurity;

public class Token {
    String UserId;
    String UserName;
    String role;


    public Token(String userId, String userName, String role) {
        UserId = userId;
        UserName = userName;
        this.role = role;
    }

    public Token() {
    }

    public String getUserId() {
        return UserId;
    }

    public void setUserId(String userId) {
        UserId = userId;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String userName) {
        UserName = userName;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
//        if (role.equals("1"))
//            this.role = "user";
//        else if (role.equals("2"))
//            this.role = "admin";
//        else
            this.role = role;
    }

    @Override
    public String toString() {
        return "Token{" +
                "UserId='" + UserId + '\'' +
                ", UserName='" + UserName + '\'' +
                ", role='" + role + '\'' +
                '}';
    }
}
