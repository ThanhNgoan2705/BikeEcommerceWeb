package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Category;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Category.class)
public interface CategoryDAO {
    @SqlQuery("Select * from Category ")
    List<Category> getAll();

    @SqlQuery("Select * from Category where id = :id")
    Category getById(@Bind("id") String id);

    @SqlQuery("Select * from Category where name like = :name")
    List<Category> getByName(@Bind("name") String name);

    @SqlUpdate("Insert into `Category`(`id`, `name`,`description`,`active`,`level`,`parent_id`,`createAt`,`updateAt`)" +
            " values (:id, :name, :description,:active,:level,:parent_id, now(), now())")
    int insert(@Bind("id") String id, @Bind("name") String name, @Bind("description") String description,@Bind("active") int active,@Bind("level") int level,@Bind("parent_id") String parent_id);

    @SqlUpdate("Update `Category` set `name` = :name, `description` = :description,`active`=:active,`level`=:level,`parent_id`=:parent_id, `updateAt` = now() where `id` = :id")
    int update(@Bind("id") String id, @Bind("name") String name, @Bind("description") String description,@Bind("active") int active,@Bind("level") int level,@Bind("parent_id") String parent_id);

    @SqlUpdate("Delete from `Category` where `id` = :id")
    int delete(@Bind("id") String id);


}
