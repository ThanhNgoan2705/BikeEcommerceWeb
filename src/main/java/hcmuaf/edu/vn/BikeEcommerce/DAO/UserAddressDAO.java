package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Address;
import hcmuaf.edu.vn.BikeEcommerce.model.UserAddress;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

import java.util.List;

@RegisterBeanMapper(UserAddressDAO.class)
public interface UserAddressDAO {
    @SqlQuery(ScirptSQL.getAllAddressByUserId)
    List<Address> getAllAddressByUserId(@Bind("userId") String userId);
    @SqlQuery(ScirptSQL.getAllAddressByAddressId)
    List<Address> getAllAddressByAddressId(@Bind("addressId")String addressId);
    @SqlQuery(ScirptSQL.insertUserAddress)
    void insertUserAddress(@BindBean UserAddress userAddress);
    @SqlQuery(ScirptSQL.deleteUserAddress)
    void deleteUserAddress(@BindBean UserAddress userAddress);


}
