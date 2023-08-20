package hcmuaf.edu.vn.BikeEcommerce.model;

import java.util.List;
/**
 * Created by Admin on 19-8-23 <br/>
 * This class is used to store information of cart <br/>
 * This class is used to map with cart table in database <br/>
 * One user have one cart <br/>
 * One cart have many cart items <br/>
 * @see CartItem
 * @see User
 * @Author Hoang Hai
 * @version 1.0
 */
public class Cart {
    private String cartId;
    private String userId;
    private String ssId;
    private String createdAt;
    private String updatedAt;
    private List<CartItem> cartItemList;


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
    public double total(){
        double total = 0;
        for (CartItem cartItem:cartItemList){
            total+=cartItem.total();
        }
        return total;
    }
    public double totalDiscount(){
        double total = 0;
        for (CartItem cartItem:cartItemList){
            total+=cartItem.totalDiscount();
        }
        return total;
    }
    public double total(List<CartItem> cartItemList){
        double total = 0;
        for (CartItem cartItem:cartItemList){
            total+=cartItem.total();
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
}
