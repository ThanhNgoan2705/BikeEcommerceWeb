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
    @SqlQuery(ScirptSQL.getAllCart)
    List<Cart> getAllCart();

    @SqlQuery(ScirptSQL.getCartByKey)
    Cart getCartByKey(@Bind("key") String key);

    @SqlUpdate(ScirptSQL.insertCart)
    void insertCart(@BindBean Cart cart);

    @SqlUpdate(ScirptSQL.updateUserIdForCart)
    void updateUserIdForCart(@Bind("cartId")String cartId,@Bind("userId") String userId);

    @SqlUpdate(ScirptSQL.deleteCart)
    void deleteCart(@Bind("cartId")String cartId);

}
