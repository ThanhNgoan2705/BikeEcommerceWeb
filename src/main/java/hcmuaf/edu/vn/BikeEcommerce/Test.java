package hcmuaf.edu.vn.BikeEcommerce;

import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import hcmuaf.edu.vn.BikeEcommerce.service.BrandService;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;

public class Test {
    public static void main(String[] args) {

        Product product = new Product("1", "Pega", 4500000, "Pega","24 inch", "Thép", "1 năm", 1, 1, null, null, null, null, 1 );

        ProductService.getInstance().insert(product);
        ProductService.getInstance().update(product);
        System.out.println(product);
    }
}
