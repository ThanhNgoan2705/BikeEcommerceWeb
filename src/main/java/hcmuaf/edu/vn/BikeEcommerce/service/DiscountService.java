package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Discount;
import org.jdbi.v3.core.Jdbi;

public class DiscountService {
    public static DiscountService instance = null;
    Jdbi jdbi = JDBIConnector.get();

    public static DiscountService getInstance() {
        if (instance == null) {
            instance = new DiscountService();
        }
        return instance;
    }
    public DiscountService() {
    }

    public Discount getById(String discountId) {
        return jdbi.withExtension(DiscountService.class, dao -> dao.getById(discountId));
    }
}
