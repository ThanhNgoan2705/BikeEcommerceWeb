package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Cart;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Cart.class)
public interface CartDao {
    @SqlQuery("select * from cart")
    List<Cart> getAllCart();

    @SqlQuery("select * from cart where ss_id = :key or  cart_id = :key or user_id = :key")
    Cart getCartByKey(@Bind("key") String key);

    @SqlUpdate("insert into cart(cart_id,user_id,ss_id) values(:cart.cartId,:cart.userId,:cart.ssId)")
    void insertCart(@BindBean Cart cart);

    @SqlUpdate("update cart set user_id = :userId where cart_id = :cartId")
    void updateUserId(@Bind("cartId") String cartId, @Bind("userId") String userId);

    @SqlUpdate("delete from cart where cart_id = :cartId")
    void deleteCart(@Bind("cartId") String cartId);
}
