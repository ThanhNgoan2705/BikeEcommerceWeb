package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Address;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Address.class)
public interface AddressDAO {

    @SqlQuery(ScirptSQL.getAddressByUserId)
    List<Address> getAddressByUserId(@Bind("userId") String userId);
    @SqlQuery(ScirptSQL.getAddressByAddressId)
    Address getAddressByAddressId(@Bind("addressId") String addressId);
    @SqlQuery(ScirptSQL.getAllAddress)
    List<Address> getAllAddress();
    @SqlUpdate(ScirptSQL.insertAddress)
    void insertAddress(@BindBean Address address);
    @SqlUpdate(ScirptSQL.updateAddress)
    void updateAddress(@BindBean Address address);
    @SqlUpdate(ScirptSQL.deleteAddressById)
    void deleteAddressById(@Bind("addressId") String addressId);
}
