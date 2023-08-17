package hcmuaf.edu.vn.BikeEcommerce.model;

import java.time.LocalDateTime;

public class ImageProduct {
    private String imageProductId;
    private String link;
    private String productId;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private Product product;

    public ImageProduct() {
    }

    public ImageProduct(String imageProductId, String link, String productId) {
        this.imageProductId = imageProductId;
        this.link = link;
        this.productId = productId;
    }

    public ImageProduct(String imageProductId, String link, String productId, Product product) {
        this.imageProductId = imageProductId;
        this.link = link;
        this.productId = productId;
        this.product = product;
    }

    @Override
    public String toString() {
        return "ImageProduct{" +
                "imageProductId='" + imageProductId + '\'' +
                ", link='" + link + '\'' +
                ", productId='" + productId + '\'' +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                ", product=" + product +
                '}';
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String getImageProductId() {
        return imageProductId;
    }

    public void setImageProductId(String imageProductId) {
        this.imageProductId = imageProductId;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }
}
