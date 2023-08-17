package hcmuaf.edu.vn.BikeEcommerce.model;

import java.time.LocalDateTime;

public class ImageProduct {
    private String imageProductId;
    private String link;
    private String productId;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;
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
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
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

    public LocalDateTime getCreateAt() {
        return createAt;
    }

    public void setCreateAt(LocalDateTime createAt) {
        this.createAt = createAt;
    }

    public LocalDateTime getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(LocalDateTime updateAt) {
        this.updateAt = updateAt;
    }
}
