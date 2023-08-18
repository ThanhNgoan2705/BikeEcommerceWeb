package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.CartDao;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Cart;
import hcmuaf.edu.vn.BikeEcommerce.model.CartItem;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class CartService {
    Jdbi jdbi = JDBIConnector.get();
    static CartService cartService = null;

    public static CartService getInstance() {
        if (cartService == null) {
            cartService = new CartService();
        }
        return cartService;
    }

    public CartService() {
    }
    public List<Cart> getAllCart(){
        return jdbi.withExtension(CartDao.class, dao -> dao.getAllCart());
    }
    public Cart getCartByKey(String key){
        Cart cart = jdbi.withExtension(CartDao.class, dao -> dao.getCartByKey(key));
        return mapCart(cart);
    }
    public void insertCart(Cart cart){
        jdbi.useExtension(CartDao.class, dao -> dao.insertCart(cart));
    }
    public void updateUserId(String cartId,String userId){
        jdbi.useExtension(CartDao.class, dao -> dao.updateUserId(cartId,userId));
    }
    public void deleteCart(String cartId){
        jdbi.useExtension(CartDao.class, dao -> dao.deleteCart(cartId));
    }
    Cart mapCart(Cart cart){
        if (cart == null) return null;
        List<CartItem> cartItems = CartItemsService.getInstance().getCartItemsByCartId(cart.getCartId());
        cart.setCartItemList(cartItems);
        return cart;
    }

    public static void main(String[] args) {
        CartService cartService = CartService.getInstance();

    }
}
