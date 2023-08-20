package hcmuaf.edu.vn.BikeEcommerce.model;

import java.util.List;
import java.util.Objects;

/**
 * Created by Admin on 19-8-23.<br/>
 * This class is used to store information of product <br/>
 * This class is used to map with product table in database <br/>
 * One product have many images <br/>
 * One product have one category <br/>
 * One product have one brand <br/>
 * One product have one supplier <br/>
 * One product may have one discount <br/>
 * One product have many comments <br/>
 * One product have many colors <br/>
 * One product have many favorites <br/>
 *
 * @version 1.0 <br>
 *
 * <b>not null attributes:</b> name, price, inventory <br>
 * <b>object Attributes:</b> image, colours, category, brand, supplier, discount <br>
 * <b>status :</b>
 * <ul>1: active</ul>
 * <ul>2: inactive</ul>
 * <ul>3: out of stock</ul>
 * <ul>4: on sale</ul>
 * @Author Hoang Hai
 * @see Comment
 * @see ImageProduct
 * @see Category
 * @see Brand
 * @see Supplier
 * @see Discount
 * @see Color
 * @see Favorite
 */
public class Product {
    public static final int ACTIVE = 1;
    public static final int INACTIVE = 2;
    public static final int OUT_OF_STOCK = 3;
    public static final int ON_SALE = 4;
    // normal attributes match with database
    private String productId;
    private String name;
    private double price;
    private String description;
    private String wheelSize;
    private String material;
    private String warranty;
    private int inventory;
    private String discountId;
    private String categoryId;
    private String brandId;
    private String supplierId;
    private int status;
    private String createdAt;
    private String updatedAt;

    // atributos objects , don't match with database but help to get data easier
    private List<Comment> comments; //    get comments by productId
    private List<Favorite> favorites; //    get favorites by productId
    private List<ImageProduct> image; //    get image by productId
    private List<Color> colors; //    get colour by productId
    private Category category; //   get category by categoryId
    private Brand brand;//   get brand by brandId
    private Supplier supplier;//    get supplier by supplierId
    private Discount discount;//    get discount by discountId


    public Product() {
    }

    // constructor for fast insert, not null attributes
    public Product(String name, double price, int inventory) {
        this.name = name;
        this.price = price;
        this.inventory = inventory;
    }

    // constructor for insert normal attributes
    public Product(String productId, String name, double price, String description, String wheelSize, String material, String warranty, int inventory, String discountId, String categoryId, String brandId, String supplierId, int status) {
        this.productId = productId;
        this.name = name;
        this.price = price;
        this.description = description;
        this.wheelSize = wheelSize;
        this.material = material;
        this.warranty = warranty;
        this.inventory = inventory;
        this.discountId = discountId;
        this.categoryId = categoryId;
        this.brandId = brandId;
        this.supplierId = supplierId;
        this.status = status;
    }

    // constructor for insert all attributes


    public Product(String productId, String name, double price, String description, String wheelSize, String material, String warranty, int inventory, String discountId, String categoryId, String brandId, String supplierId, int status, List<Comment> comments, List<Favorite> favorites, List<ImageProduct> image, List<Color> colors, Category category, Brand brand, Supplier supplier, Discount discount) {
        this.productId = productId;
        this.name = name;
        this.price = price;
        this.description = description;
        this.wheelSize = wheelSize;
        this.material = material;
        this.warranty = warranty;
        this.inventory = inventory;
        this.discountId = discountId;
        this.categoryId = categoryId;
        this.brandId = brandId;
        this.supplierId = supplierId;
        this.status = status;
        this.comments = comments;
        this.favorites = favorites;
        this.image = image;
        this.colors = colors;
        this.category = category;
        this.brand = brand;
        this.supplier = supplier;
        this.discount = discount;
    }



    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return Objects.equals(productId, product.productId);
    }

    @Override
    public String toString() {
        return "Product{" +
                "productId='" + productId + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", wheelSize='" + wheelSize + '\'' +
                ", material='" + material + '\'' +
                ", warranty='" + warranty + '\'' +
                ", inventory=" + inventory +
                ", discountId='" + discountId + '\'' +
                ", categoryId='" + categoryId + '\'' +
                ", brandId='" + brandId + '\'' +
                ", supplierId='" + supplierId + '\'' +
                ", status=" + status +
                ", createdAt='" + createdAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                ", comments=" + comments +
                ", favorites=" + favorites +
                ", image=" + image +
                ", colors=" + colors +
                ", category=" + category +
                ", brand=" + brand +
                ", supplier=" + supplier +
                ", discount=" + discount +
                '}';
    }

    @Override
    public int hashCode() {
        return Objects.hash(productId);
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public List<Favorite> getFavorites() {
        return favorites;
    }

    public void setFavorites(List<Favorite> favorites) {
        this.favorites = favorites;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getWheelSize() {
        return wheelSize;
    }

    public void setWheelSize(String wheelSize) {
        this.wheelSize = wheelSize;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getWarranty() {
        return warranty;
    }

    public void setWarranty(String warranty) {
        this.warranty = warranty;
    }

    public int getInventory() {
        return inventory;
    }

    public void setInventory(int inventory) {
        this.inventory = inventory;
    }

    public String getDiscountId() {
        return discountId;
    }

    public void setDiscountId(String discountId) {
        this.discountId = discountId;
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

    public String getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(String supplierId) {
        this.supplierId = supplierId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
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

    public List<ImageProduct> getImage() {
        return image;
    }

    public void setImage(List<ImageProduct> image) {
        this.image = image;
    }

    public List<Color> getColors() {
        return colors;
    }

    public void setColors(List<Color> colors) {
        this.colors = colors;
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

    public Supplier getSupplier() {
        return supplier;
    }

    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }

    public Discount getDiscount() {
        return discount;
    }

    public void setDiscount(Discount discount) {
        this.discount = discount;
    }
}