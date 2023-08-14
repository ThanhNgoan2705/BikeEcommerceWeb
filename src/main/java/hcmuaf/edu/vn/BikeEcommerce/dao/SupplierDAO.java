package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Supplier;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

public interface SupplierDAO {
    @SqlQuery("Select * from Supplier ")
    List<Supplier> getAll();

    @SqlQuery("Select * from Supplier where id = :id")
    Supplier getById(@Bind("id") String id);

    @SqlQuery("Select * from Supplier where name like = :name")
    List<Supplier> getByName(@Bind("name") String name);

    @SqlUpdate("Insert into `Supplier`(`id`, `name`,`description`,`createAt`,`updateAt`)" +
            " values (:id, :name, :description, now(), now())")
    int insert(@Bind("id") String id, @Bind("name") String name, @Bind("description") String description);

    @SqlUpdate("Update `Supplier` set `name` = :name, `description` = :description, `updateAt` = now() where `id` = :id")
    int update(@Bind("id") String id, @Bind("name") String name, @Bind("description") String description);

    @SqlUpdate("Delete from `Supplier` where `id` = :id")
    int delete(@Bind("id") String id);


}
