package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.dao.CategoryDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Category;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;


public class CategoryService {
    private static  CategoryService instance = null;
    Jdbi jdbi = JDBIConnector.get();

public static CategoryService getInstance() {
        if (instance == null) {
            instance = new CategoryService();
        }
        return instance;
    }
    public CategoryService() {
    }

    public Category getById(String categoryId) {
   return jdbi.withExtension(CategoryDAO.class, dao -> dao.getById(categoryId));
    }
    public int insert(Category category) {
        return jdbi.withExtension(CategoryDAO.class, dao -> dao.insert(category.getId(), category.getName(), category.getDescription()));
    }
    public int update(Category category) {
        return jdbi.withExtension(CategoryDAO.class, dao -> dao.update(category.getId(), category.getName(), category.getDescription()));
    }
    public int delete(String categoryId) {
        return jdbi.withExtension(CategoryDAO.class, dao -> dao.delete(categoryId));
    }

}
