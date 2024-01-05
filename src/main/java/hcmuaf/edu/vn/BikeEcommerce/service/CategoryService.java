package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.CategoryDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Category;
import org.jdbi.v3.core.Jdbi;

import java.util.ArrayList;
import java.util.List;

/**
 * da test by hoang hai 20-8-23
 */
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

    public List<Category> getAll() {
        return jdbi.withExtension(CategoryDAO.class, dao -> dao.getAllCategory());
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
        List<Category> list = new ArrayList<>();
       List<Category> cateName = CategoryService.getInstance().getAllParent(1);
//        for (String s : cateName) {
//             list.addAll(CategoryService.getInstance().getCategoryByName(s));
//        }
//        for (Category category : list) {
//            System.out.println(category);
//        }
//        Map<String,Integer> quantityByCategory = new HashMap<>();
//        for (String categoryName : CategoryService.getInstance().getAllCategoryName()) {
//            quantityByCategory.put(categoryName,ProductService.getInstance().getProductByCategoryName(categoryName).size());
//        }

        System.out.println(cateName);


    }


    List<Category> getCategoryByName(String name){
        return jdbi.withExtension(CategoryDAO.class, dao -> dao.getCategoryByName(name));
    }

    public List<String> getAllCategoryName() {
        List<String> list = jdbi.withExtension(CategoryDAO.class, dao -> dao.getAllCategoryName());
          return list;
    }

    public List<Category> getAllParent(int level) {
        List<Category> list = jdbi.withExtension(CategoryDAO.class, dao -> dao.getAllParent(level));
        return list;
    }
}
