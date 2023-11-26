package hcmuaf.edu.vn.BikeEcommerce.model;

import java.util.Objects;

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
    private String cartItemId;
    private String cartId;
    private String productId;
    private String colorId;
    private int quantity;
    private String createdAt;
    private String updatedAt;
    private Product product;


    public CartItem() {
    }

    public CartItem(String cartItemId, String cartId, String productId, String colorId, int quantity) {
        this.cartItemId = cartItemId;
        this.cartId = cartId;
        this.productId = productId;
        this.colorId = colorId;
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "CartItem{" +
                "cartItemId='" + cartItemId + '\'' +
                ", cartId='" + cartId + '\'' +
                ", productId='" + productId + '\'' +
                ", colorId='" + colorId + '\'' +
                ", quantity=" + quantity +
                ", createdAt='" + createdAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                ", product=" + product +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CartItem item = (CartItem) o;
        return Objects.equals(cartItemId, item.cartItemId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(cartItemId);
    }

    public double total() {
        return product.getPrice() * quantity;
    }

    public double totalDiscount() {
        return product.getPrice() * quantity * (1 - product.getDiscount().getDiscountPercent());
    }

    public String getColorId() {
        return colorId;
    }

    public void setColorId(String colorId) {
        this.colorId = colorId;
    }

    public String getCartItemId() {
        return cartItemId;
    }

    public void setCartItemId(String cartItemId) {
        this.cartItemId = cartItemId;
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

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
