package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.AddressDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Address;
import org.jdbi.v3.core.Jdbi;

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
    public Address getById(String addressId) {
        return jdbi.withExtension(AddressDAO.class, dao -> dao.getAddressById(addressId));
    }
    public static void main(String[] args) {
        AddressService addressService = new AddressService();
        Address address = addressService.getById("1");
        System.out.println(address);
    }
}
