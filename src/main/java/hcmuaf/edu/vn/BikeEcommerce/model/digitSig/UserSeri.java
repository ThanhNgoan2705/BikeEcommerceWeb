package hcmuaf.edu.vn.BikeEcommerce.model.digitSig;

public class UserSeri {
    String UserId;
    String seri;

    String createdAt;

    public UserSeri(String userId, String seri) {
        UserId = userId;
        this.seri = seri;

    }

    public UserSeri() {
    }

    @Override
    public String toString() {
        return "UserSeri{" +
                "UserId='" + UserId + '\'' +
                ", seri='" + seri + '\'' +
                ", createdAt='" + createdAt + '\'' +
                '}';
    }

    public String getUserId() {
        return UserId;
    }

    public void setUserId(String userId) {
        UserId = userId;
    }

    public String getSeri() {
        return seri;
    }

    public void setSeri(String seri) {
        this.seri = seri;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
}
