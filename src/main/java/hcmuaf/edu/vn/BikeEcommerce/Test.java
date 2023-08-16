package hcmuaf.edu.vn.BikeEcommerce;

import hcmuaf.edu.vn.BikeEcommerce.model.Category;
import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import hcmuaf.edu.vn.BikeEcommerce.service.BrandService;
import hcmuaf.edu.vn.BikeEcommerce.service.CategoryService;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;

public class Test {
    public static void main(String[] args) {

        Product product = new Product("1", "Pega", 4500000, "Pega","24 inch", "Thép", "1 năm", 1, 1, null, null, null, null, 1 );
        Category category = new Category("1", "Xe đạp thể thao", "chay em", null, null, 1,1);
        ProductService.getInstance().insert(product);
        CategoryService.getInstance().insert(category);
        ProductService.getInstance().update(product);
        System.out.println(product);
    }
}
