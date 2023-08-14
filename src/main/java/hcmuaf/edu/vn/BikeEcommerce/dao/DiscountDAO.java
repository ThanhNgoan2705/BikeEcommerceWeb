package hcmuaf.edu.vn.BikeEcommerce.dao;

import hcmuaf.edu.vn.BikeEcommerce.model.Discount;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

public interface DiscountDAO {
    @SqlQuery("Select * from Discount ")
    List<Discount> getAll();

    @SqlQuery("Select * from Discount where id = :id")
    Discount getById(@Bind("id") String id);

    @SqlQuery("Select * from Discount where name like = :name")
    List<Discount> getByName(@Bind("name") String name);

    @SqlUpdate("Insert into `Discount`(`id`, `name`,`description`,`createAt`,`updateAt`)" +
            " values (:id, :name, :description, now(), now())")
    int insert(@Bind("id") String id, @Bind("name") String name, @Bind("description") String description);

    @SqlUpdate("Update `Discount` set `name` = :name, `description` = :description, `updateAt` = now() where `id` = :id")
    int update(@Bind("id") String id, @Bind("name") String name, @Bind("description") String description);

    @SqlUpdate("Delete from `Discount` where `id` = :id")
    int delete(@Bind("id") String id);


}
