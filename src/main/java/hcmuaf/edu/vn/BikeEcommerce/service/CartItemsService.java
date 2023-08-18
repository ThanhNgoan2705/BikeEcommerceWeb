package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.CartItemsDao;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Cart;
import hcmuaf.edu.vn.BikeEcommerce.model.CartItem;
import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.stream.Collectors;

public class CartItemsService {
    Jdbi jdbi = JDBIConnector.get();
    static CartItemsService cartItemsService = null;
    public static CartItemsService getInstance() {
        if (cartItemsService == null) {
            cartItemsService = new CartItemsService();
        }
        return cartItemsService;
    }
    public CartItemsService() {
    }
    List<CartItem> getAllCartItems(){
        return jdbi.withExtension(CartItemsDao.class, dao -> dao.getAllCartItems());
    }
    CartItem getCartItemById(String cartItemId){
       CartItem cartItem = jdbi.withExtension(CartItemsDao.class, dao -> dao.getCartItemById(cartItemId));
        return mapCartItem(cartItem);
    }
    List<CartItem> getCartItemsByCartId(String cartId){
        List<CartItem> cartItems =jdbi.withExtension(CartItemsDao.class, dao -> dao.getCartItemsByCartId(cartId));
        return cartItems.stream().map(cartItem -> mapCartItem(cartItem)).collect(Collectors.toList());
    }
    CartItem mapCartItem(CartItem cartItem){
        if (cartItem == null) return null;
        Product product = ProductService.getInstance().getProductById(cartItem.getProductId());
        cartItem.setProduct(product);
        return cartItem;
    }
    public static void main(String[] args) {
        CartItemsService cartItemsService = CartItemsService.getInstance();
        List<CartItem> cartItems = cartItemsService.getCartItemsByCartId("1");
        System.out.println(cartItems.get(0));
        System.out.println(cartItems.get(1));
    }
}
