package hcmuaf.edu.vn.BikeEcommerce.DAO.digitSig;

import hcmuaf.edu.vn.BikeEcommerce.DAO.ScirptSQL;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.OrderSig;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

@RegisterBeanMapper(OrderSig.class)

public interface OrderSigDAO {
    @SqlQuery(ScirptSQL.getSigByOrderId)
    OrderSig getSigByOrderId(@Bind("orderId") String orderId);

    @SqlUpdate(ScirptSQL.insertOrderSig)
    void insert(@BindBean OrderSig orderSig);

    @SqlUpdate(ScirptSQL.deleteOrderSig)
    void delete(@Bind("orderId") String orderId);
}
