package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Cart;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

@RegisterBeanMapper(Cart.class)
public interface CartDao {
    @SqlQuery(ScirptSQL.getAllCart)
    Cart getAllCart();

    @SqlQuery(ScirptSQL.getCartByKey)
    Cart getCartByKey(String key);

    @SqlQuery(ScirptSQL.insertCart)
    void insertCart(Cart cart);

    @SqlQuery(ScirptSQL.updateUserIdForCart)
    void updateUserIdForCart(String cartId, String userId);

    @SqlQuery(ScirptSQL.deleteCart)
    void deleteCart(String cartId);

}
