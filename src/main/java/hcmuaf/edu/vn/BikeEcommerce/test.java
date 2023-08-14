package hcmuaf.edu.vn.BikeEcommerce;

import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;

public class Test {
    public static void main(String[] args) {
        Product product = new Product("1", "Pega", 4500000);
        ProductService.getInstance().insert(product);
        System.out.println(product);
    }
}
