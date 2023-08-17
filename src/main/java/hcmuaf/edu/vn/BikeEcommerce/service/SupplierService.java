package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.SupplierDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Supplier;
import org.jdbi.v3.core.Jdbi;

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
}
