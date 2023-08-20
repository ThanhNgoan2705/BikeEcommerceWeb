package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.DiscountDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Discount;
import org.jdbi.v3.core.Jdbi;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Locale;

/**
 *  da test va fix by Hoang Hai 20-8-23
 */
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

    public List<Discount> getAll() {
        return jdbi.withExtension(DiscountDAO.class, dao -> dao.getAll());
    }

    public List<Discount> getByName(String name) {
        return jdbi.withExtension(DiscountDAO.class, dao -> dao.getByName(name));
    }

    public Discount getById(String discountId) {
        return jdbi.withExtension(DiscountDAO.class, dao -> dao.getById(discountId));
    }

    public void insertDiscount(Discount discount) {
        jdbi.useExtension(DiscountDAO.class, dao -> dao.insertDiscount(discount));
    }

    public void updateDiscount(Discount discount) {
        jdbi.useExtension(DiscountDAO.class, dao -> dao.updateDiscount(discount));
    }

    public void deleteDiscount(String discountId) {
        jdbi.useExtension(DiscountDAO.class, dao -> dao.deleteDiscount(discountId));
    }

    public static void main(String[] args) {
        DiscountService discountService = new DiscountService();
//        List<Discount> discounts = discountService.getAll();
//        System.out.println(discounts);
        discountService.insertDiscount(new Discount("D0001", "Discount 1", "d1", 0.1, 1, LocalDate.parse("2020-01-01"), LocalDate.parse("2020-01-31")));
        System.out.println(discountService.getById("D0001"));
        discountService.updateDiscount(new Discount("D0001", "Discount 1", "d1", 0.2, 1, LocalDate.parse("2020-01-01"), LocalDate.parse("2020-01-31")));
        System.out.println(discountService.getById("D0001"));
        discountService.deleteDiscount("D0001");
        System.out.println(discountService.getById("D0001"));
    }
}
