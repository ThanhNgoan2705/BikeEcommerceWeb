package hcmuaf.edu.vn.BikeEcommerce.model;

/**
 * Created by Admin on 19-8-23.<br/>
 * This class is used to store information of cart item <br/>
 * This class is used to map with cart item table in database <br/>
 * One cart have many cart items <br/>
 * One cart item have one product and quantity <br/>
 *
 * @version 1.0
 * @Author Hoang Hai
 * @see Cart
 * @see Product
 */
public class CartItem {

    private String cartId;
    private String productId;
    private int quantity;
    private String createdAt;
    private String updatedAt;
    private Product product;

    public CartItem(String cartId, String productId, int quantity, Product product) {
        this.cartId = cartId;
        this.productId = productId;
        this.quantity = quantity;
        this.product = product;
    }

    public CartItem(String cartId, String productId, int quantity) {
        this.cartId = cartId;
        this.productId = productId;
        this.quantity = quantity;
    }

    public CartItem(String productId, int quantity) {
        this.productId = productId;
        this.quantity = quantity;
    }

    public CartItem() {
    }

    public double total() {
        return product.getPrice() * quantity;
    }

    public double totalDiscount() {
        return product.getPrice() * quantity * (1 - product.getDiscount().getDiscountPercent());
    }

    @Override
    public String toString() {
        return "CartItem{" +
                ", cartId='" + cartId + '\'' +
                ", productId='" + productId + '\'' +
                ", quantity='" + quantity + '\'' +
                ", createdAt='" + createdAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                ", product=" + product +
                '}';
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }


    public String getCartId() {
        return cartId;
    }

    public void setCartId(String cartId) {
        this.cartId = cartId;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
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
