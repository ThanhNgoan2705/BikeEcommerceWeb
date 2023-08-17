package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Category;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Category.class)
public interface CategoryDAO {
    @SqlQuery("Select * from Category ")
    List<Category> getAll();

    @SqlQuery("Select * from Category where category_id = :id")
    Category getById(@Bind("id") String id);

    @SqlQuery("Select * from Category where name like = :name")
    List<Category> getByName(@Bind("name") String name);

    @SqlUpdate("INSERT INTO categories (id, name, description, image, parentId, active, level, shortId) " +
            "VALUES (:id, :name, :description, :image, :parentId, :active, :level, :shortId)")
    void insert(@BindBean Category category);

    @SqlUpdate("UPDATE categories " +
            "SET name = :name, description = :description, image = :image, parentId = :parentId, " +
            "active = :active, level = :level, shortId = :shortId " +
            "WHERE id = :id")
    void update(@BindBean Category category);

    @SqlUpdate("DELETE FROM categories WHERE id = :id")
    void delete(@Bind("id") String categoryId);


}
