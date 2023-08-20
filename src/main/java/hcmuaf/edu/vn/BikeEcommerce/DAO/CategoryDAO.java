package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Category;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

@RegisterBeanMapper(Category.class)
public interface CategoryDAO {
    @SqlQuery(ScirptSQL.getAllCategory)
    Category getAllCategory();

    @SqlQuery(ScirptSQL.getCategoryById)
    Category getCategoryById(@Bind("categoryId") String categoryId);

    @SqlQuery(ScirptSQL.getCategoryByName)
    Category getCategoryByName(@Bind("name") String name);

    @SqlQuery(ScirptSQL.insertCategory)
    void insertCategory(@BindBean Category category);

    @SqlQuery(ScirptSQL.updateCategory)
    void updateCategory(@BindBean Category category);

    @SqlQuery(ScirptSQL.deleteCategory)
    void deleteCategory(@Bind("categoryId") String categoryId);

}
