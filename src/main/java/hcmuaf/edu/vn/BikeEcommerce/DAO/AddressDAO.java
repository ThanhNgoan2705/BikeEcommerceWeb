package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Address;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

@RegisterBeanMapper(Address.class)
public interface AddressDAO {
    @SqlQuery(ScirptSQL.getAddressById)
    Address getAddressById(@Bind("addressId") String addressId);
}
