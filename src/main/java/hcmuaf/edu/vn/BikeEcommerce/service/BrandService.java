package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Brand;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;

@RegisterBeanMapper(Brand.class)
public class BrandService {
    public static BrandService instance = null;
    Jdbi jdbi = JDBIConnector.get();
    public Brand getById(String brandId) {
        return jdbi.withExtension(BrandService.class, dao -> dao.getById(brandId));
    }
}
