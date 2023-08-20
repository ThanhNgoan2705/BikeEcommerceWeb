package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.AddressDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Address;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class AddressService {
    public static AddressService instance = null;
    Jdbi jdbi = JDBIConnector.get();
    public static AddressService getInstance() {
        if (instance == null) {
            instance = new AddressService();
        }
        return instance;
    }

    public AddressService() {
    }
    public List<Address> getAllAddress() {
        return jdbi.withExtension(AddressDAO.class, dao -> dao.getAllAddress());
    }
    public Address getAddressByAddressId(String addressId) {
        return jdbi.withExtension(AddressDAO.class, dao -> dao.getAddressByAddressId(addressId));
    }
    public List<Address> getAddressByUserId(String userId) {
        return jdbi.withExtension(AddressDAO.class, dao -> dao.getAddressByUserId(userId));
    }
    public void insertAddress(Address address) {
        jdbi.useExtension(AddressDAO.class, dao -> dao.insertAddress(address));
    }
    public void updateAddress(Address address) {
        jdbi.useExtension(AddressDAO.class, dao -> dao.updateAddress(address));
    }
    public void deleteAddressById(String addressId) {
        jdbi.useExtension(AddressDAO.class, dao -> dao.deleteAddressById(addressId));
    }
}
