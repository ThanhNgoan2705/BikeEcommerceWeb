package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Cart;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Cart.class)
public interface CartDao {
    @SqlQuery(ScirptSQL.getAllCart)
    List<Cart> getAllCart();

    @SqlQuery(ScirptSQL.getCartByKey)
    Cart getCartByKey(String key);

    @SqlUpdate(ScirptSQL.insertCart)
    void insertCart(Cart cart);

    @SqlUpdate(ScirptSQL.updateUserIdForCart)
    void updateUserIdForCart(String cartId, String userId);

    @SqlUpdate(ScirptSQL.deleteCart)
    void deleteCart(String cartId);

}
