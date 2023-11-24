package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.CartItemsDao;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.CartItem;
import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.stream.Collectors;

/**
 * da test and fix by hoang hai 20-8-23
 */
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

    List<CartItem> getAllCartItem() {
        return jdbi.withExtension(CartItemsDao.class, dao -> dao.getAllCartItem());
    }


    List<CartItem> getCartItemsByCartId(String cartId) {
        List<CartItem> cartItems = jdbi.withExtension(CartItemsDao.class, dao -> dao.getCartItemsByCartId(cartId));
        return cartItems.stream().map(cartItem -> mapCartItem(cartItem)).collect(Collectors.toList());
    }
    public CartItem getCartItemByCartIdAndProductId(String cartId, String productId) {
        return  jdbi.withExtension(CartItemsDao.class, dao -> dao.getCartItemByCartIdAndProductId(cartId,productId));
    }

    CartItem mapCartItem(CartItem cartItem) {
        if (cartItem == null) return null;
        Product product = ProductService.getInstance().getProductById(cartItem.getProductId());
        cartItem.setProduct(product);
        return cartItem;
    }

    public void insertCartItem(CartItem cartItem) {
        jdbi.useExtension(CartItemsDao.class, dao -> dao.insertCartItem(cartItem));
    }

    public void updateCartItem(CartItem cartItem) {
        jdbi.useExtension(CartItemsDao.class, dao -> dao.updateCartItem(cartItem));
    }

    public void deleteCartItem(String cartId,String productId) {
        jdbi.useExtension(CartItemsDao.class, dao -> dao.deleteCartItem(cartId,productId));
    }
    public void deleteCartItemByCartId(String cartId) {
        jdbi.useExtension(CartItemsDao.class, dao -> dao.deleteCartItemByCartId(cartId));
    }

    public static void main(String[] args) {
        CartItem cartItem = new CartItem( "1", "1", 1);
        CartItemsService cartItemsService = CartItemsService.getInstance();
//        cartItemsService.insertCartItem(cartItem);
        cartItem.setQuantity(10);
        System.out.println(cartItem);
        cartItemsService.updateCartItem(cartItem);

    }
}
