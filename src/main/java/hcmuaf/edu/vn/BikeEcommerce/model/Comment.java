package hcmuaf.edu.vn.BikeEcommerce.model;

public class Comment {
    private String commentId;
    private String userId;
    private String productId;
    private String content;
    private User user;
    private Product product;
    private String createdAt;
    private String updatedAt;

    public Comment() {
    }

    public Comment(String commentId, String userId, String productId, String content) {
        this.commentId = commentId;
        this.userId = userId;
        this.productId = productId;
        this.content = content;
    }

    public Comment(String commentId, String userId, String productId, String content, User user, Product product) {
        this.commentId = commentId;
        this.userId = userId;
        this.productId = productId;
        this.content = content;
        this.user = user;
        this.product = product;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "commentId='" + commentId + '\'' +
                ", userId='" + userId + '\'' +
                ", productId='" + productId + '\'' +
                ", content='" + content + '\'' +
                ", user=" + user +
                ", product=" + product +
                ", createdAt='" + createdAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                '}';
    }

    public String getCommentId() {
        return commentId;
    }

    public void setCommentId(String commentId) {
        this.commentId = commentId;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
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
