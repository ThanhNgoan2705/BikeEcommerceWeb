package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.UserAddressDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Address;
import hcmuaf.edu.vn.BikeEcommerce.model.UserAddress;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class UserAddressService {
    Jdbi jdbi = JDBIConnector.get();
    private static UserAddressService instance = null;

    public static UserAddressService getInstance() {
        if (instance == null) {
            instance = new UserAddressService();
        }
        return instance;
    }

    public UserAddressService() {
    }

    public List<Address> getAllAddressByUserId(String userId) {
        return jdbi.withExtension(UserAddressDAO.class, dao -> dao.getAllAddressByUserId(userId));
    }

    public List<Address> getAllAddressByAddressId(String addressId) {
        return jdbi.withExtension(UserAddressDAO.class, dao -> dao.getAllAddressByAddressId(addressId));
    }

    public void insertUserAddress(UserAddress userAddress) {
        jdbi.useExtension(UserAddressDAO.class, dao -> dao.insertUserAddress(userAddress));
    }

    public void deleteUserAddress(UserAddress userAddress) {
        jdbi.useExtension(UserAddressDAO.class, dao -> dao.deleteUserAddress(userAddress));
    }

}
