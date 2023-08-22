package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.SupplierDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Supplier;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

/**
 * da test va fix by Hoang Hai 21-8-23
 */
public class SupplierService {
    public static SupplierService instance = null;
    Jdbi jdbi = JDBIConnector.get();

    public static SupplierService getInstance() {
        if (instance == null) {
            instance = new SupplierService();
        }
        return instance;
    }
    public Supplier getById(String supplierId) {
        return jdbi.withExtension(SupplierDAO.class, dao -> dao.getById(supplierId));
    }
    public List<Supplier> getAllSupplier() {
        return jdbi.withExtension(SupplierDAO.class, dao -> dao.getAllSupplier());
    }
    public List<Supplier> getSuppliersByName(String supplierName) {
        return jdbi.withExtension(SupplierDAO.class, dao -> dao.getSuppliersByName(supplierName));
    }
    public void insertSupplier(Supplier supplier) {
         jdbi.useExtension(SupplierDAO.class, dao -> dao.insertSupplier(supplier));
    }
    public void updateSupplier(Supplier supplier) {
         jdbi.useExtension(SupplierDAO.class, dao -> dao.updateSupplier(supplier));
    }
    public void deleteSupplier(String supplierId) {
         jdbi.useExtension(SupplierDAO.class, dao -> dao.deleteSupplier(supplierId));
    }
}
