package hcmuaf.edu.vn.BikeEcommerce.model;

public class CartItem {
    private String cartItemId;
    private String cartId;
    private String productId;
    private int quantity;
    private String createdAt;
    private String updatedAt;
    private Product product;

    public CartItem(String cartItemId, String cartId, String productId, int quantity, Product product) {
        this.cartItemId = cartItemId;
        this.cartId = cartId;
        this.productId = productId;
        this.quantity = quantity;
        this.product = product;
    }

    public CartItem(String cartItemId, String cartId, String productId, int quantity) {
        this.cartItemId = cartItemId;
        this.cartId = cartId;
        this.productId = productId;
        this.quantity = quantity;
    }

    public CartItem() {
    }
    public double total(){
        return product.getPrice()*quantity;
    }
    public double totalDiscount(){
        return product.getPrice()*quantity*(1-product.getDiscount().getDiscountPercent());
    }
    @Override
    public String toString() {
        return "CartItem{" +
                "cartItemId='" + cartItemId + '\'' +
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
}
