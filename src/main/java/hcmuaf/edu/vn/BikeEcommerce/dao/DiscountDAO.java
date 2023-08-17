package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Discount;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Discount.class)
public interface DiscountDAO {
    @SqlQuery("Select * from Discount ")
    List<Discount> getAll();

    @SqlQuery("Select * from Discount where discount_id = :discountId")
    Discount getById(@Bind("discountId") String discountId);

    @SqlQuery("Select * from Discount where name like concat('%',:name,'%')")
    List<Discount> getByName(@Bind("name") String name);

    @SqlUpdate("Insert into `Discount`(`discount_id`, `name`,`description`,`discount_percent`,`start_date`,`end_date`)" +
            " values (:discountId, :name, :description,:discountPercent,:startDate,:endDate)")
    void insert(@BindBean Discount discount);

    @SqlUpdate("Update `Discount` set `name` = :name, `description` = :description,`discount_percent` = :discountPercent,`start_date` = :startDate,`end_date` = :endDate where `discount_id` = :discountId")
    void update(@BindBean Discount discount);

    @SqlUpdate("Delete from `Discount` where `discountId` = :discountId")
    void delete(@Bind("discountId") String discountId);


}
