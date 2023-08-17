package hcmuaf.edu.vn.BikeEcommerce.model;

import java.util.List;
import java.util.Objects;

/**
 * <b>Product model</b> <br>
 * <b>not null attributes:</b> name, price, inventory <br>
 * <b>object Attributes:</b> image, colours, category, brand, supplier, discount <br>
 * <b>database table:</b> product <br>
 * <b>status :</b>
 * <ul>1: active</ul>
 * <ul>2: inactive</ul>
 * <ul>3: out of stock</ul>
 * <ul>4: on sale</ul>
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
    private String create_at;
    private String update_at;

    // atributos objects , don't match with database but help to get data easier
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
    public Product(String productId, String name, double price, String description, String wheelSize, String material, String warranty, int inventory, String discountId, String categoryId, String brandId, String supplierId, int status, List<ImageProduct> image, List<Color> colors, Category category, Brand brand, Supplier supplier, Discount discount) {
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
        if (!(o instanceof Product)) return false;
        Product product = (Product) o;
        return Double.compare(getPrice(), product.getPrice()) == 0 && getInventory() == product.getInventory() && getStatus() == product.getStatus() && Objects.equals(getProductId(), product.getProductId()) && Objects.equals(getName(), product.getName()) && Objects.equals(getDescription(), product.getDescription()) && Objects.equals(getWheelSize(), product.getWheelSize()) && Objects.equals(getImage(), product.getImage()) && Objects.equals(getColours(), product.getColours()) && Objects.equals(getMaterial(), product.getMaterial()) && Objects.equals(getWarranty(), product.getWarranty()) && Objects.equals(getDiscountId(), product.getDiscountId()) && Objects.equals(getCategoryId(), product.getCategoryId()) && Objects.equals(getBrandId(), product.getBrandId()) && Objects.equals(getSupplierId(), product.getSupplierId()) && Objects.equals(getCategory(), product.getCategory()) && Objects.equals(getBrand(), product.getBrand()) && Objects.equals(getSupplier(), product.getSupplier()) && Objects.equals(getDiscount(), product.getDiscount()) && Objects.equals(getCreate_at(), product.getCreate_at()) && Objects.equals(getUpdate_at(), product.getUpdate_at());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getProductId(), getName(), getPrice(), getDescription(), getWheelSize(), getImage(), getColours(), getMaterial(), getWarranty(), getInventory(), getDiscountId(), getCategoryId(), getBrandId(), getSupplierId(), getStatus(), getCategory(), getBrand(), getSupplier(), getDiscount(), getCreate_at(), getUpdate_at());
    }

    public String getCreate_at() {
        return create_at;
    }

    public void setCreate_at(String create_at) {
        this.create_at = create_at;
    }

    public String getUpdate_at() {
        return update_at;
    }

    public void setUpdate_at(String update_at) {
        this.update_at = update_at;
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

    public List<ImageProduct> getImage() {
        return image;
    }

    public void setImage(List<ImageProduct> image) {
        this.image = image;
    }

    public String getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(String supplierId) {
        this.supplierId = supplierId;
    }

    public Supplier getSupplier() {
        return supplier;
    }

    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }

    public List<Color> getColours() {
        return colors;
    }

    public void setColours(List<Color> colors) {
        this.colors = colors;
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
                ", create_at='" + create_at + '\'' +
                ", update_at='" + update_at + '\'' +
                ", image=" + image +
                ", colours=" + colors +
                ", category=" + category +
                ", brand=" + brand +
                ", supplier=" + supplier +
                ", discount=" + discount +
                '}';
    }
}