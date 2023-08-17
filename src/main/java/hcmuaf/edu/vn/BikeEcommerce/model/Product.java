package hcmuaf.edu.vn.BikeEcommerce.model;

import java.util.List;
import java.util.Objects;

public class Product {
    private String productId;
    private String name;
    private double price;
    private String description;
    private String wheelSize;
    private List<ImageProduct> image;
    private List<Colour> colours;
    private String material;
    private String warranty;
    private int quantity;
    private int inventory;
    private String discountId;
    private String categoryId;
    private String brandId;
    private String supplierId;
    private int status;
    private Category category;
    private Brand brand;
    private Supplier supplier;
    private Discount discount;


    public Product() {
    }

    public Product(String productId, String name, double price, String description, String wheelSize, List<ImageProduct> image, List<Colour> colours, String material, String warranty, int quantity, int inventory, String discountId, String categoryId, String brandId, String supplierId, int status, Category category, Brand brand, Supplier supplier, Discount discount) {
        this.productId = productId;
        this.name = name;
        this.price = price;
        this.description = description;
        this.wheelSize = wheelSize;
        this.image = image;
        this.colours = colours;
        this.material = material;
        this.warranty = warranty;
        this.quantity = quantity;
        this.inventory = inventory;
        this.discountId = discountId;
        this.categoryId = categoryId;
        this.brandId = brandId;
        this.supplierId = supplierId;
        this.status = status;
        this.category = category;
        this.brand = brand;
        this.supplier = supplier;
        this.discount = discount;
    }
    public Product (String productId, String name, double price){
        this.productId = productId;
        this.name = name;
        this.price = price;
    }
    public Product (String productId, String name , double price, String description, String wheelSize, String material, String warranty, int quantity, int inventory, String discountId, String categoryId, String brandId, String supplierId, int status){
        this.productId = productId;
        this.name = name;
        this.price = price;
        this.description = description;
        this.wheelSize = wheelSize;
        this.material = material;
        this.warranty = warranty;
        this.quantity = quantity;
        this.inventory = inventory;
        this.discountId = discountId;
        this.categoryId = categoryId;
        this.brandId = brandId;
        this.supplierId = supplierId;
        this.status = status;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return Double.compare(product.price, price) == 0 && quantity == product.quantity && inventory == product.inventory && status == product.status && Objects.equals(productId, product.productId) && Objects.equals(name, product.name) && Objects.equals(description, product.description) && Objects.equals(wheelSize, product.wheelSize) && Objects.equals(image, product.image) && Objects.equals(colours, product.colours) && Objects.equals(material, product.material) && Objects.equals(warranty, product.warranty) && Objects.equals(discountId, product.discountId) && Objects.equals(categoryId, product.categoryId) && Objects.equals(brandId, product.brandId) && Objects.equals(supplierId, product.supplierId) && Objects.equals(category, product.category) && Objects.equals(brand, product.brand) && Objects.equals(supplier, product.supplier) && Objects.equals(discount, product.discount);
    }

    @Override
    public int hashCode() {
        return Objects.hash(productId, name, price, description, wheelSize, image, colours, material, warranty, quantity, inventory, discountId, categoryId, brandId, supplierId, status, category, brand, supplier, discount);
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

    public List<Colour> getColours() {
        return colours;
    }

    public void setColours(List<Colour> colours) {
        this.colours = colours;
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
                "id='" + productId + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", wheelSize='" + wheelSize + '\'' +
                ", image=" + image +
                ", colours=" + colours +
                ", material=" + material +
                ", warranty=" + warranty +
                ", quantity=" + quantity +
                ", inventory=" + inventory +
                ", discount_id='" + discountId + '\'' +
                ", category_id='" + categoryId + '\'' +
                ", brand_id='" + brandId + '\'' +
                ", supplier_id='" + supplierId + '\'' +
                ", status=" + status +
                ", category=" + category +
                ", brand=" + brand +
                ", supplier=" + supplier +
                ", discount=" + discount +
                '}';
    }
}