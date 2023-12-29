package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.CartDao;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.*;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateId;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

/**
 * da test and fix by hoang hai 20-8-23
 */
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

    public List<Cart> getAllCart() {
        return jdbi.withExtension(CartDao.class, dao -> dao.getAllCart());
    }

    public Cart getCartByKey(String key) {
        Cart cart = jdbi.withExtension(CartDao.class, dao -> dao.getCartByKey(key));
        return mapCart(cart);
    }

    public void insertCart(Cart cart) {
        jdbi.useExtension(CartDao.class, dao -> dao.insertCart(cart));
    }

    public void updateUserId(String cartId, String userId) {
        jdbi.useExtension(CartDao.class, dao -> dao.updateUserIdForCart(cartId, userId));
    }

    public void deleteCart(String cartId) {
        CartItemsService.getInstance().deleteCartItemByCartId(cartId);
        jdbi.useExtension(CartDao.class, dao -> dao.deleteCart(cartId));
    }

    Cart mapCart(Cart cart) {
        if (cart == null) return null;
        List<CartItem> cartItems = CartItemsService.getInstance().getCartItemsByCartId(cart.getCartId());
        cart.setCartItemList(cartItems);
        return cart;
    }

    public String saveCartItemIntoOrder(String userId, String addressId, double shippingFee) {
        String orderId;
        try {
            Cart cart = getCartByKey(userId);
//            System.out.println("Cart: " + cart);
            Order order = new Order();
            orderId = GenerateId.generateOrderId();
            order.setOrderId(orderId);//tu tao
            order.setUserId(cart.getUserId());
            Address address = AddressService.getInstance().getAddressByAddressId(addressId);
            order.setFullAddress(address.getFullAddress());
            order.setPrice(cart.total());//tong tien
            order.setDiscount(cart.totalDiscount());
            order.setShippingFee(shippingFee);
            order.setTotal(cart.total() + shippingFee - cart.totalDiscount());

            OrderService.getInstance().insertOrder(order);
//            System.out.println("orderId: " + orderId);
            //set orderItem
            for (CartItem cartItem : cart.getCartItemList()) {
                OrderItem orderItem = new OrderItem();

                orderItem.setOrderItemId(GenerateId.generateId());
                orderItem.setOrderId(order.getOrderId());
                orderItem.setProductId(cartItem.getProductId());
                orderItem.setQuantity(cartItem.getQuantity());
                orderItem.setColorId(cartItem.getColorId());
                orderItem.setPrice(cartItem.getPrice());

                OrderItemService.getInstance().insertOrderItem(orderItem);
//                System.out.println("orderItem: " + orderItem.getOrderItemId());
            }

        } catch (Exception e) {
            System.out.println("error :"+e.getMessage());
            return null;
        }
        return orderId;
    }

    public static void main(String[] args) {

//        CartService.getInstance().insertCart(new Cart("5", "user5", "1"));
//        System.out.println(CartService.getInstance().getCartByKey("5"));
//
//        CartItem cartItem = new CartItem( "2", "5", "1","1", 1);
//        CartItemsService.getInstance().insertCartItem(cartItem);
//
//
//
//
//        CartService.getInstance().updateUserId("5", "user5");
//        System.out.println(CartService.getInstance().getCartByKey("5"));
//
//        CartService.getInstance().deleteCart("5");
//        System.out.println(CartService.getInstance().getCartByKey("5"));

        System.out.println(CartService.getInstance().saveCartItemIntoOrder("2db4ba63-9561-4a57-82c0-d9faf20e43e0", "1", 0));


    }
}
