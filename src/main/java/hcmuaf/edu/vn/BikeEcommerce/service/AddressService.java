package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.AddressDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Address;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

/**
 * da test and fix ngay 20-8-23
 * by Hoang Hai
 */
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
    public List<Address> getAllAddressByUserId(String userId) {
        return jdbi.withExtension(AddressDAO.class, dao -> dao.getAllAddressByUserId(userId));
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

    public static void main(String[] args) {
        AddressService.getInstance().insertAddress(new Address("6","user1", "1", "1", "1", "1", "1"));
        System.out.println("da tao :" + AddressService.getInstance().getAddressByAddressId("6"));
        AddressService.getInstance().updateAddress(new Address("6","user1", "2", "2", "2", "2", "2"));
        System.out.println("da sua :" + AddressService.getInstance().getAddressByAddressId("6"));
        AddressService.getInstance().deleteAddressById("6");
        System.out.println(AddressService.getInstance().getAddressByAddressId("6"));


        List<Address> addressList = AddressService.getInstance().getAllAddress();
        for (Address address : addressList) {
            System.out.println(address);
        }

    }

}
