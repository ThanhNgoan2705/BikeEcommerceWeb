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
        CartItem c = jdbi.withExtension(CartItemsDao.class, dao -> dao.getCartItemByCartIdAndProductId(cartId, productId));
        return mapCartItem(c);
    }

    public CartItem getCartItemByCartItemId(String cartItemId) {
        CartItem c = jdbi.withExtension(CartItemsDao.class, dao -> dao.getCartItemByCartItemId(cartItemId));
        return mapCartItem(c);
    }

    CartItem mapCartItem(CartItem cartItem) {
        if (cartItem == null) return null;
        Product product = ProductService.getInstance().getProductById(cartItem.getProductId());
        cartItem.setPrice(SubProduct_colorService.getInstance().getPriceByProductIdAndColorId(cartItem.getProductId(), cartItem.getColorId()));
        cartItem.setProduct(product);
        return cartItem;
    }

    public void insertCartItem(CartItem cartItem) {
        jdbi.useExtension(CartItemsDao.class, dao -> dao.insertCartItem(cartItem));
    }

    public void updateCartItem(CartItem cartItem) {
        jdbi.useExtension(CartItemsDao.class, dao -> dao.updateCartItem(cartItem));
    }

    public void deleteCartItem(String cartItemId) {
        jdbi.useExtension(CartItemsDao.class, dao -> dao.deleteCartItem(cartItemId));
    }

    public void deleteCartItemByCartId(String cartId) {
        jdbi.useExtension(CartItemsDao.class, dao -> dao.deleteCartItemByCartId(cartId));
    }

    public static void main(String[] args) {
        CartItemsService cartItemsService = new CartItemsService();
        CartItem cartItem = new CartItem();
        cartItem.setCartItemId("1");
        cartItem.setCartId("1");
        cartItem.setProductId("1");
        cartItem.setColorId("1");
        cartItem.setQuantity(1);
        cartItemsService.insertCartItem(cartItem);
        System.out.println(cartItemsService.getCartItemsByCartId("1"));
        cartItem.setQuantity(2);
        cartItemsService.updateCartItem(cartItem);
        System.out.println(cartItemsService.getCartItemByCartItemId("1"));
        cartItemsService.deleteCartItem("1");
        System.out.println(cartItemsService.getCartItemsByCartId("1"));


    }
}
