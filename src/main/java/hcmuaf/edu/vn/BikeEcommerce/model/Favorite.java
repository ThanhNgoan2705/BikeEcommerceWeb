package hcmuaf.edu.vn.BikeEcommerce.model;

public class Favorite {
    private String favoriteId;
    private String userId;
    private String productId;
    private User user;
    private Product product;
    private String createdAt;
    private String updatedAt;

    public Favorite() {
    }

    public Favorite(String favoriteId, String userId, String productId) {
        this.favoriteId = favoriteId;
        this.userId = userId;
        this.productId = productId;
    }

    public Favorite(String favoriteId, String userId, String productId, User user, Product product) {
        this.favoriteId = favoriteId;
        this.userId = userId;
        this.productId = productId;
        this.user = user;
        this.product = product;
    }

    @Override
    public String toString() {
        return "Favorite{" +
                "favoriteId='" + favoriteId + '\'' +
                ", userId='" + userId + '\'' +
                ", productId='" + productId + '\'' +
                ", user=" + user +
                ", product=" + product +
                ", createdAt='" + createdAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                '}';
    }

    public String getFavoriteId() {
        return favoriteId;
    }

    public void setFavoriteId(String favoriteId) {
        this.favoriteId = favoriteId;
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
