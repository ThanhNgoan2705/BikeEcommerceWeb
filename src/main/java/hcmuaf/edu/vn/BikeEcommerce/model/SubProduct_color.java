package hcmuaf.edu.vn.BikeEcommerce.model;

import java.util.Objects;

/**
 * Created by Admin on 19-8-23.<br/>
 * This class is used to store information of colorProduct <br/>
 * This class is used to connect product and color <br/>
 *
 * @version 1.0
 * @Author Hoang Hai
 * @see Product
 * @see Color
 */
public class SubProduct_color {

    private String productId;
    private String colorId;
    private int inventory;
    private double price;
    private String imageProductId;
    private String createdAt;
    private String updatedAt;
    private Product product;
    private Color color;

    public SubProduct_color(String productId, String colorId, int inventory, double price, String image) {
        this.productId = productId;
        this.colorId = colorId;
        this.inventory = inventory;
        this.price = price;
        this.imageProductId = image;
    }

    public SubProduct_color() {
    }

    @Override
    public String toString() {
        return "SubProduct_color{" +
                "productId='" + productId + '\'' +
                ", colorId='" + colorId + '\'' +
                ", inventory=" + inventory +
                ", price=" + price +
                ", image='" + imageProductId + '\'' +
                ", createdAt='" + createdAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                ", product=" + product +
                ", color=" + color +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SubProduct_color that = (SubProduct_color) o;
        return Objects.equals(productId, that.productId) && Objects.equals(colorId, that.colorId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(productId, colorId);
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getColorId() {
        return colorId;
    }

    public void setColorId(String colorId) {
        this.colorId = colorId;
    }

    public int getInventory() {
        return inventory;
    }

    public void setInventory(int inventory) {
        this.inventory = inventory;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImageProductId() {
        return imageProductId;
    }

    public void setImageProductId(String imageProductId) {
        this.imageProductId = imageProductId;
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

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }
}
