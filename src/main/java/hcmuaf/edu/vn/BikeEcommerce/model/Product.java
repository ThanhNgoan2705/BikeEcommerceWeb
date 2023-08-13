package hcmuaf.edu.vn.BikeEcommerce.model;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Objects;

public class Product {
    private String id;
    private String name;
    private int price;
    private String description;
    private List<ImageProduct> image;
    private List<Colour> colours;
    private int wheelsize;
    private int material;
    private int warranty;
    private int quantity;
    private int inventory;
    private String discount_id;
    private String categoryId;
    private String brandId;
    private int status;
    private Category category;
    private Brand brand;
    private Discount discount;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;


    public Product() {
    }
    public Product(String id, String name, int price, String description, List<ImageProduct> image, List<Colour> colours, int wheelsize, int material, int warranty, int quantity, int inventory, String discount_id, String categoryId, String brandId, int status, Category category, Brand brand, Discount discount, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.image = image;
        this.colours = colours;
        this.wheelsize = wheelsize;
        this.material = material;
        this.warranty = warranty;
        this.quantity = quantity;
        this.inventory = inventory;
        this.discount_id = discount_id;
        this.categoryId = categoryId;
        this.brandId = brandId;
        this.status = status;
        this.category = category;
        this.brand = brand;
        this.discount = discount;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return price == product.price && wheelsize == product.wheelsize && material == product.material && warranty == product.warranty && quantity == product.quantity && inventory == product.inventory && status == product.status && Objects.equals(id, product.id) && Objects.equals(name, product.name) && Objects.equals(description, product.description) && Objects.equals(image, product.image) && Objects.equals(colours, product.colours) && Objects.equals(discount_id, product.discount_id) && Objects.equals(categoryId, product.categoryId) && Objects.equals(brandId, product.brandId) && Objects.equals(category, product.category) && Objects.equals(brand, product.brand) && Objects.equals(discount, product.discount) && Objects.equals(createdAt, product.createdAt) && Objects.equals(updatedAt, product.updatedAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, price, description, image, colours, wheelsize, material, warranty, quantity, inventory, discount_id, categoryId, brandId, status, category, brand, discount, createdAt, updatedAt);
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<ImageProduct> getImage() {
        return image;
    }

    public void setImage(List<ImageProduct> image) {
        this.image = image;
    }

    public List<Colour> getColours() {
        return colours;
    }

    public void setColours(List<Colour> colours) {
        this.colours = colours;
    }

    public int getWheelsize() {
        return wheelsize;
    }

    public void setWheelsize(int wheelsize) {
        this.wheelsize = wheelsize;
    }

    public int getMaterial() {
        return material;
    }

    public void setMaterial(int material) {
        this.material = material;
    }

    public int getWarranty() {
        return warranty;
    }

    public void setWarranty(int warranty) {
        this.warranty = warranty;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getInventory() {
        return inventory;
    }

    public void setInventory(int inventory) {
        this.inventory = inventory;
    }

    public String getDiscount_id() {
        return discount_id;
    }

    public void setDiscount_id(String discount_id) {
        this.discount_id = discount_id;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getBrandId() {
        return brandId;
    }

    public void setBrandId(String brandId) {
        this.brandId = brandId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public Discount getDiscount() {
        return discount;
    }

    public void setDiscount(Discount discount) {
        this.discount = discount;
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

    @Override
    public String toString() {
        return "Product{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", image=" + image +
                ", colours=" + colours +
                ", wheelsize=" + wheelsize +
                ", material=" + material +
                ", warranty=" + warranty +
                ", quantity=" + quantity +
                ", inventory=" + inventory +
                ", discount_id='" + discount_id + '\'' +
                ", categoryId='" + categoryId + '\'' +
                ", brandId='" + brandId + '\'' +
                ", status=" + status +
                ", category=" + category +
                ", brand=" + brand +
                ", discount=" + discount +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
    }
}