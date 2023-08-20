package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Address;
import hcmuaf.edu.vn.BikeEcommerce.model.UserAddress;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(UserAddressDAO.class)
public interface UserAddressDAO {
    @SqlQuery(ScirptSQL.getAllAddressByUserId)
    List<Address> getAllAddressByUserId(@Bind("userId") String userId);
    @SqlQuery(ScirptSQL.getAllAddressByAddressId)
    List<Address> getAllAddressByAddressId(@Bind("addressId")String addressId);
    @SqlUpdate(ScirptSQL.insertUserAddress)
    void insertUserAddress(@BindBean UserAddress userAddress);
    @SqlUpdate(ScirptSQL.deleteUserAddress)
    void deleteUserAddress(@BindBean UserAddress userAddress);


}
