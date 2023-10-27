package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.CartItem;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(CartItem.class)
public interface CartItemsDao {
    @SqlQuery(ScirptSQL.getAllCartItem)
    public List<CartItem> getAllCartItem();

    @SqlQuery(ScirptSQL.getCartItemsByCartId)
    public List<CartItem> getCartItemsByCartId(@Bind("cartId") String cartId);

    @SqlQuery(ScirptSQL.getCartItemByCartIdAndProductId)
    CartItem getCartItemByCartIdAndProductId(@Bind("cartId") String cartId,@Bind("productId") String productId);

    @SqlUpdate(ScirptSQL.insertCartItem)
    void insertCartItem(@BindBean CartItem cartItem);

    @SqlUpdate(ScirptSQL.updateCartItem)
    void updateCartItem(@BindBean CartItem cartItem);

    @SqlUpdate(ScirptSQL.deleteCartItem)
    void deleteCartItem(@Bind("cartId") String cartId, @Bind("productId") String productId);

    @SqlUpdate(ScirptSQL.deleteCartItemByCartId)
    void deleteCartItemByCartId(@Bind("cartId")String cartId);
}
