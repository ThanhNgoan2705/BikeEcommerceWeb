package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.OrderItem;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

import java.util.List;
@RegisterBeanMapper(OrderItem.class)
public interface OrderItemDAO {

    @SqlQuery(ScirptSQL.getProductsByOrderId)
    public List<OrderItem> getOrderItemsByOrderId(@Bind("orderId")String orderId);
}
