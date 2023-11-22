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
    @SqlQuery(ScirptSQL.getAllCategory)
    List<Category> getAllCategory();

    @SqlQuery(ScirptSQL.getCategoryById)
    Category getCategoryById(@Bind("categoryId") String categoryId);

    @SqlQuery(ScirptSQL.getCategoryByName)
    List<Category> getCategoryByName(@Bind("name") String name);

    @SqlUpdate(ScirptSQL.insertCategory)
    void insertCategory(@BindBean Category category);

    @SqlUpdate(ScirptSQL.updateCategory)
    void updateCategory(@BindBean Category category);

    @SqlUpdate(ScirptSQL.deleteCategory)
    void deleteCategory(@Bind("categoryId") String categoryId);
    @SqlQuery(ScirptSQL.getAllCategoryName)
    List<String> getAllCategoryName();
}
