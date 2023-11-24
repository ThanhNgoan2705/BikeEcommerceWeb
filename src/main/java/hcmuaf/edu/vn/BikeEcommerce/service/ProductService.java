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
        List<Product> products = jdbi.withExtension(ProductDAO.class, dao -> dao.getAllProduct());
        return products.stream().map(product -> mapOtherBean(product)).collect(Collectors.toList());

    }

    public Product getProductById(String productId) {
        Product product = jdbi.withExtension(ProductDAO.class, dao -> dao.getProductById(productId));
        return mapOtherBean(product);
    }

    public List<Product> findProductByName(String productName) {
        List<Product> products = jdbi.withExtension(ProductDAO.class, dao -> dao.getProductByName(productName));
        return products.stream().map(product -> mapOtherBean(product)).collect(Collectors.toList());
    }

    private Product mapOtherBean(Product product) {
        if (product == null) {
            return new Product();
        }

        Category category = CategoryService.getInstance().getById(product.getCategoryId());
        Supplier supplier = SupplierService.getInstance().getById(product.getSupplierId());
        Brand brand = BrandService.getInstance().getById(product.getBrandId());
        Discount discount = DiscountService.getInstance().getById(product.getDiscountId());
        List<Color> colors = ColorService.getInstance().getColorByProductId(product.getProductId());
        List<ImageProduct> imageProducts = ImageProductService.getInstance().getImageProductByProductId(product.getProductId());
        List<Comment> comments = CommentService.getInstance().getCmtByProductId(product.getProductId());
        List<Favorite> favorites = FavoriteService.getInstance().getFavoriteByProductId(product.getProductId());

        product.setComments(comments);
        product.setFavorites(favorites);
        product.setImageProductList(imageProducts);
        product.setColors(colors);
        product.setCategory(category);
        product.setSupplier(supplier);
        product.setBrand(brand);
        product.setDiscount(discount);
        return product;

    }


    public void insert(Product product) {
        jdbi.useExtension(ProductDAO.class, dao -> dao.insertProduct(product));
    }

    public void update(Product product) {
        jdbi.useExtension(ProductDAO.class, dao -> dao.updateProduct(product));
    }

    public void delete(String productId) {
        jdbi.useExtension(ProductDAO.class, dao -> dao.deleteProduct(productId));
    }


    public List<Product> getProductByCategoryId(String categoryId) {
        return jdbi.withExtension(ProductDAO.class, dao -> dao.getProductByCategoryId(categoryId));
    }

    public List<Product> getProductByCategoryName(String categoryName) {
        return jdbi.withExtension(ProductDAO.class, dao -> dao.getProductByCategoryName(categoryName));
    }

    public List<Product> getProductByBrandId(String brandId) {
        return jdbi.withExtension(ProductDAO.class, dao -> dao.getProductByBrandId(brandId));
    }

    public List<Product> getProductBySupplierId(String supplierId) {
        return jdbi.withExtension(ProductDAO.class, dao -> dao.getProductBySupplierId(supplierId));
    }

    public List<Product> getProductByDiscount(String discountId) {
        return jdbi.withExtension(ProductDAO.class, dao -> dao.getProductByDiscount(discountId));
    }

    public List<Product> getProductByStatus(String status) {
        return jdbi.withExtension(ProductDAO.class, dao -> dao.getProductByStatus(status));
    }

    public List<Product> getProductByPrice(int minPrice, int maxPrice) {
        return jdbi.withExtension(ProductDAO.class, dao -> dao.getProductByPrice(minPrice, maxPrice));
    }

    public List<Product> getProductByWheelSize(String wheelSize) {
        return jdbi.withExtension(ProductDAO.class, dao -> dao.getProductByWheelSize(wheelSize));
    }

    public List<Product> getProductByName(String name) {
        return jdbi.withExtension(ProductDAO.class, dao -> dao.getProductByName(name));
    }

    public List<Product> getTop1Product() {
        return jdbi.withExtension(ProductDAO.class, dao -> dao.getTop1Product());
    }

    public boolean checkProductQuantity(String productId, int quantity) {
        return jdbi.withExtension(ProductDAO.class, dao -> dao.checkProductQuantity(productId, quantity));
    }

    public static void main(String[] args) {
//        ELECe37922
        ProductService productService = ProductService.getInstance();
//        List<Product> products = productService.findProductByName("Bike");
//        Product product = productService.getProductById("1");
//        Gson gson = new Gson();
//        String json = gson.toJson(product);
//        System.out.println(json);
//        productService.delete("ELECe37922");
        List<Product> products = productService.getTop1Product();
//        List<String> categoryNames = CategoryService.getInstance().getAllCategoryName();
//        for (String categoryName : categoryNames) {
//           products.addAll(productService.getProductByCategoryName(categoryName));
//        }
        for (Product product : products) {
            System.out.println(product);
        }
//        System.out.println(productService.checkProductQuantity("1", 51));


    }
}
