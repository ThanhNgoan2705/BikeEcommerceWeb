package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.CartItem;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

import java.util.List;

@RegisterBeanMapper(CartItem.class)
public interface CartItemsDao {
    @SqlQuery(ScirptSQL.getAllCartItem)
    public List<CartItem> getAllCartItem();

    @SqlQuery(ScirptSQL.getCartItemsByCartId)
    public List<CartItem> getCartItemsByCartId(@Bind("cartId") String cartId);

    @SqlQuery(ScirptSQL.getCartItemById)
    CartItem getCartItemById(@Bind("cartItemId")String cartItemId);
    @SqlQuery(ScirptSQL.insertCartItem)
    void insertCartItem(@BindBean CartItem cartItem);
    @SqlQuery(ScirptSQL.updateCartItem)
    void updateCartItem(@BindBean CartItem cartItem);
    @SqlQuery(ScirptSQL.deleteCartItem)
    void deleteCartItem(@Bind("cartItemId") String cartItemId);
}
