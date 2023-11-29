package hcmuaf.edu.vn.BikeEcommerce.model;

import hcmuaf.edu.vn.BikeEcommerce.service.CartItemsService;
import hcmuaf.edu.vn.BikeEcommerce.service.CartService;

import java.util.List;

/**
 * Created by Admin on 19-8-23 <br/>
 * This class is used to store information of cart <br/>
 * This class is used to map with cart table in database <br/>
 * One user have one cart <br/>
 * One cart have many cart items <br/>
 *
 * @version 1.0
 * @Author Hoang Hai
 * @see CartItem
 * @see User
 */
public class Cart {
    private String cartId;
    private String userId;
    private String ssId;
    private String createdAt;
    private String updatedAt;
    private List<CartItem> cartItemList;

    CartItemsService cartItemsService = CartItemsService.getInstance();

    public Cart() {
    }

    public Cart(String cartId, String userId, String ssId, List<CartItem> cartItemList) {
        this.cartId = cartId;
        this.userId = userId;
        this.ssId = ssId;
        this.cartItemList = cartItemList;
    }

    public Cart(String cartId, String userId, String ssId) {
        this.cartId = cartId;
        this.userId = userId;
        this.ssId = ssId;
    }

    public double total() {
        return total(cartItemList);
    }

    public double totalDiscount() {
        double total = 0;
        for (CartItem cartItem : cartItemList) {
            total += cartItem.totalDiscount();
        }
        return total;
    }

    public double total(List<CartItem> cartItemList) {
        double total = 0;
        for (CartItem cartItem : cartItemList) {
            total += cartItem.total();
        }
        return total;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "cartId='" + cartId + '\'' +
                ", userId='" + userId + '\'' +
                ", ssId='" + ssId + '\'' +
                ", createdAt='" + createdAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                ", cartItemList=" + cartItemList +
                '}';
    }

    public String getCartId() {
        return cartId;
    }

    public void setCartId(String cartId) {
        this.cartId = cartId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getSsId() {
        return ssId;
    }

    public void setSsId(String ssId) {
        this.ssId = ssId;
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

    public List<CartItem> getCartItemList() {
        return cartItemList;
    }

    public void setCartItemList(List<CartItem> cartItemList) {
        this.cartItemList = cartItemList;
    }

    public boolean addOrUpdateItemToCart(CartItem cartItem) {
        cartItem.setCartId(this.cartId);
        try {
            if (cartItemList.size() == 0) {
                cartItemsService.insertCartItem(cartItem);
                return true;
            }
            for (CartItem item : cartItemList) {
                if (item.getCartItemId().equals(cartItem.getCartItemId())) {
//                    System.out.println("update");
                    item.setQuantity(item.getQuantity() + cartItem.getQuantity());
                    cartItemsService.updateCartItem(item);
                    return true;
                }
            }
            cartItemsService.insertCartItem(cartItem);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean removeItem(String cartItemId) {
        try {
            cartItemsService.deleteCartItem(cartItemId);
            return true;
        } catch (Exception e) {
            return false;
        }

    }


    public static void main(String[] args) {
        CartItemsService cartItemsService = new CartItemsService();
        CartService cartService = new CartService();
        Cart cart = CartService.getInstance().getCartByKey("5");
        CartItem cartItem = new CartItem();
        cartItem.setCartItemId("1");
        cartItem.setCartId(cart.getCartId());
        cartItem.setProductId("1");
        cartItem.setColorId("1");
        cartItem.setQuantity(1);
        cartItemsService.insertCartItem(cartItem);
        cart.addOrUpdateItemToCart(cartItem);
        System.out.println(cartService.getCartByKey("5"));

    }
}
