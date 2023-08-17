package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.BrandDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Brand;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;

@RegisterBeanMapper(Brand.class)
public class BrandService {
    public static BrandService instance = null;
    Jdbi jdbi = JDBIConnector.get();
    public static BrandService getInstance() {
        if (instance == null) {
            instance = new BrandService();
        }
        return instance;
    }

    public BrandService() {
    }

    public Brand getById(String brandId) {
        return jdbi.withExtension(BrandDAO.class, dao -> dao.getById(brandId));
    }

    public static void main(String[] args) {
        BrandService brandService = new BrandService();
        Brand brand = brandService.getById("1");
        System.out.println(brand);
    }
}
