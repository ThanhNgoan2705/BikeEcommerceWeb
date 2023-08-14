package hcmuaf.edu.vn.BikeEcommerce.model;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Objects;

public class Product {
    private String id;
    private String name;
    private double price;
    private String description;
    private List<ImageProduct> image;
    private List<Colour> colours;
    private String material;
    private String warranty;
    private int quantity;
    private int inventory;
    private String discount_id;
    private String category_id;
    private String brand_id;
    private String supplier_id;
    private int status;
    private Category category;
    private Brand brand;
    private Supplier supplier;
    private Discount discount;


    public Product() {
    }

    public Product(String id, String name, double price, String description, List<ImageProduct> image, List<Colour> colours, String material, String warranty, int quantity, int inventory, String discount_id, String category_id, String brand_id, String supplier_id, int status, Category category, Brand brand, Supplier supplier, Discount discount) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.image = image;
        this.colours = colours;
        this.material = material;
        this.warranty = warranty;
        this.quantity = quantity;
        this.inventory = inventory;
        this.discount_id = discount_id;
        this.category_id = category_id;
        this.brand_id = brand_id;
        this.supplier_id = supplier_id;
        this.status = status;
        this.category = category;
        this.brand = brand;
        this.supplier = supplier;
        this.discount = discount;
    }
    public Product (String id, String name, double price){
        this.id = id;
        this.name = name;
        this.price = price;
    }
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return Double.compare(product.price, price) == 0  && material == product.material && warranty == product.warranty && quantity == product.quantity && inventory == product.inventory && status == product.status && Objects.equals(id, product.id) && Objects.equals(name, product.name) && Objects.equals(description, product.description) && Objects.equals(image, product.image) && Objects.equals(colours, product.colours) && Objects.equals(discount_id, product.discount_id) && Objects.equals(category_id, product.category_id) && Objects.equals(brand_id, product.brand_id) && Objects.equals(supplier_id, product.supplier_id) && Objects.equals(category, product.category) && Objects.equals(brand, product.brand) && Objects.equals(supplier, product.supplier) && Objects.equals(discount, product.discount) ;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, price, description, image, colours, material, warranty, quantity, inventory, discount_id, category_id, brand_id, supplier_id, status, category, brand, supplier, discount );
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

    public List<ImageProduct> getImage() {
        return image;
    }

    public void setImage(List<ImageProduct> image) {
        this.image = image;
    }

    public String getSupplier_id() {
        return supplier_id;
    }

    public void setSupplier_id(String supplier_id) {
        this.supplier_id = supplier_id;
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

    public String getDiscount_id() {
        return discount_id;
    }

    public void setDiscount_id(String discount_id) {
        this.discount_id = discount_id;
    }

    public String getCategory_id() {
        return category_id;
    }

    public void setCategory_id(String category_id) {
        this.category_id = category_id;
    }

    public String getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(String brand_id) {
        this.brand_id = brand_id;
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
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", image=" + image +
                ", colours=" + colours +
                ", material=" + material +
                ", warranty=" + warranty +
                ", quantity=" + quantity +
                ", inventory=" + inventory +
                ", discount_id='" + discount_id + '\'' +
                ", category_id='" + category_id + '\'' +
                ", brand_id='" + brand_id + '\'' +
                ", supplier_id='" + supplier_id + '\'' +
                ", status=" + status +
                ", category=" + category +
                ", brand=" + brand +
                ", supplier=" + supplier +
                ", discount=" + discount +
                '}';
    }
}