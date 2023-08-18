package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.CartItem;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(CartItem.class)
public interface CartItemsDao {
    @SqlQuery("select * from cart_item")
    public List<CartItem> getAllCartItems();

    @SqlQuery("select * from cart_item where cart_id = :cartId")
    public List<CartItem> getCartItemsByCartId(@Bind("cartId") String cartId);

    @SqlQuery("select * from cart_item where cart_item_id = :cartItemId")
    CartItem getCartItemById(@Bind("cartItemId")String cartItemId);
}
