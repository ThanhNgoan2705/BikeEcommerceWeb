package hcmuaf.edu.vn.BikeEcommerce.model;

public class Favorite {
    private String userId;
    private String productId;
    private User user;
    private Product product;
    private String createdAt;
    private String updatedAt;

    public Favorite() {
    }


    public Favorite(String userId, String productId, User user, Product product) {
        this.userId = userId;
        this.productId = productId;
        this.user = user;
        this.product = product;
    }

    public Favorite(String userId, String productId) {
        this.userId = userId;
        this.productId = productId;
    }

    @Override
    public String toString() {
        return "Favorite{" +
                "userId='" + userId + '\'' +
                ", productId='" + productId + '\'' +
                ", user=" + user +
                ", product=" + product +
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

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
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