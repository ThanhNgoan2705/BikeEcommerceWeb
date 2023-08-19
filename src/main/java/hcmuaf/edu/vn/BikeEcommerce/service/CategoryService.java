package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.CategoryDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Category;
import org.jdbi.v3.core.Jdbi;


public class CategoryService {
    private static CategoryService instance = null;
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
        return jdbi.withExtension(CategoryDAO.class, dao -> dao.getCategoryById(categoryId));
    }

    public void insert(Category category) {
        jdbi.useExtension(CategoryDAO.class, dao -> dao.insertCategory(category));
    }

    public void update(Category category) {
        jdbi.useExtension(CategoryDAO.class, dao -> dao.updateCategory(category));
    }

    public void delete(String categoryId) {
        jdbi.useExtension(CategoryDAO.class, dao -> dao.deleteCategory(categoryId));
    }

    public static void main(String[] args) {
        CategoryService categoryService = new CategoryService();
        Category category = categoryService.getById("4");
        System.out.println(category);
    }
}
