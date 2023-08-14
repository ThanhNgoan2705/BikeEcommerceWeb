package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Brand;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

public interface BrandDAO {
    @SqlQuery("Select * from Brand ")
    List<Brand> getAll();

    @SqlQuery("Select * from Brand where id = :id")
    Brand getById(@Bind("id") String id);

    @SqlQuery("Select * from Brand where name like = :name")
    List<Brand> getByName(@Bind("name") String name);

    @SqlUpdate("Insert into `Brand`(`id`, `name`,`description`,`createAt`,`updateAt`)" +
            " values (:id, :name, :description, now(), now())")
    int insert(@Bind("id") String id, @Bind("name") String name, @Bind("description") String description);

    @SqlUpdate("Update `Brand` set `name` = :name, `description` = :description, `updateAt` = now() where `id` = :id")
    int update(@Bind("id") String id, @Bind("name") String name, @Bind("description") String description);

    @SqlUpdate("Delete from `Brand` where `id` = :id")
    int delete(@Bind("id") String id);
}
