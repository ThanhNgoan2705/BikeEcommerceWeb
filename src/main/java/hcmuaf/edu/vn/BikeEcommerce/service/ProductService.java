package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.ProductDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.*;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.stream.Collectors;

public class ProductService {
    private static ProductService instance = null;
    Jdbi jdbi = JDBIConnector.get();

    public static ProductService getInstance() {
        if (instance == null) {
            instance = new ProductService();
        }
        return instance;
    }

    public ProductService() {
    }

    public List<Product> getAllProduct() {
        List<Product> products = jdbi.withExtension(ProductDAO.class, dao -> dao.getAll());
        return products.stream().map(product -> mapOtherBean(product)).collect(Collectors.toList());

    }

    private Product mapOtherBean(Product product) {
        if (product == null) {
            return new Product();
        }
        Category category = jdbi.withExtension(CategoryService.class, dao -> dao.getById(product.getCategoryId()));
        Supplier supplier = jdbi.withExtension(SupplierService.class, dao -> dao.getById(product.getSupplierId()));
        Brand brand = jdbi.withExtension(BrandService.class, dao -> dao.getById(product.getBrandId()));
        Discount discount = jdbi.withExtension(DiscountService.class, dao -> dao.getById(product.getDiscountId()));
        product.setCategory(category);
        product.setSupplier(supplier);
        product.setBrand(brand);
        product.setDiscount(discount);
        return product;

    }


    public void insert(Product product) {
        jdbi.useExtension(ProductDAO.class, dao -> dao.insert(product));
    }

    public void update(Product product) {
        jdbi.useExtension(ProductDAO.class, dao -> dao.update(product));
    }

    public void delete(String productId) {
        jdbi.useExtension(ProductDAO.class, dao -> dao.delete(productId));
    }
}
