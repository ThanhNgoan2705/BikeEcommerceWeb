package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.ColorProductDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Color;
import hcmuaf.edu.vn.BikeEcommerce.model.ColorProduct;
import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.stream.Collectors;

/**
 * da test and fix by hoang hai 20-8-23
 */
public class ColorProductService {
    Jdbi jdbi = JDBIConnector.get();
    public static ColorProductService instance = null;

    public static ColorProductService getInstance() {
        if (instance == null) {
            instance = new ColorProductService();
        }
        return instance;
    }

    List<ColorProduct> getAllColorProduct() {
        return jdbi.withExtension(ColorProductDAO.class, dao -> dao.getAllColorProduct());
    }

    List<ColorProduct> getColorProductByProductId(String productId) {
        List<ColorProduct> colorProducts = jdbi.withExtension(ColorProductDAO.class, dao -> dao.getColorProductByProductId(productId));
        return colorProducts.stream().map(ColorProduct -> mapOrderColorProduct(ColorProduct)).collect(Collectors.toList());
    }

    List<ColorProduct> getColorProductByColorId(String colorId) {
        List<ColorProduct> colorProducts = jdbi.withExtension(ColorProductDAO.class, dao -> dao.getColorProductByColorId(colorId));
        return colorProducts.stream().map(ColorProduct -> mapOrderColorProduct(ColorProduct)).collect(Collectors.toList());
    }

    ColorProduct mapOrderColorProduct(ColorProduct colorProduct) {
        if (colorProduct.getColorId() == null || colorProduct.getProductId() == null) {
            return null;
        }
        Color color = ColorService.getInstance().getColorById(colorProduct.getColorId());
        Product product = ProductService.getInstance().getProductById(colorProduct.getProductId());
        colorProduct.setColor(color);
        colorProduct.setProduct(product);
        return colorProduct;
    }

    public void insertColorProduct(ColorProduct colorProduct) {
        jdbi.useExtension(ColorProductDAO.class, dao -> dao.insertColorProduct(colorProduct));
    }

    public void updateColorProduct(ColorProduct colorProduct) {
        jdbi.useExtension(ColorProductDAO.class, dao -> dao.updateColorProduct(colorProduct));
    }

    public void deleteColorProduct(String productId, String colorId) {
        jdbi.useExtension(ColorProductDAO.class, dao -> dao.deleteColorProduct(productId, colorId));
    }

    public void deleteColorProductByProductId(String productId) {
        jdbi.useExtension(ColorProductDAO.class, dao -> dao.deleteColorProductByProductId(productId));
    }
    public void deleteColorProductByColorId(String colorId) {
        jdbi.useExtension(ColorProductDAO.class, dao -> dao.deleteColorProductByColorId(colorId));
    }

    public static void main(String[] args) {


        ColorProductService colorProductService = ColorProductService.getInstance();
        List<ColorProduct> colorProducts = colorProductService.getAllColorProduct();
        List<ColorProduct> colorProducts1 = colorProductService.getColorProductByProductId("1");
        List<ColorProduct> colorProducts2 = colorProductService.getColorProductByColorId("1");
        System.out.println(" productId 1 :  " + colorProducts1);
        System.out.println(" colorId 1  " + colorProducts2);
        System.out.println("all : " + colorProducts);

        // insert
        ColorProduct colorProduct = new ColorProduct();
        colorProduct.setColorId("1");
        colorProduct.setProductId("5");
        colorProductService.insertColorProduct(colorProduct);
        System.out.println("insert : " + colorProductService.getColorProductByColorId("1"));

        // update
        colorProduct.setColorId("1");
        colorProduct.setProductId("4");
        colorProductService.updateColorProduct(colorProduct);
        System.out.println("update : " + colorProductService.getColorProductByColorId("1"));
        // delete
        colorProductService.deleteColorProduct("4", "1");
//        System.out.println(colorProductService.getColorProductByColorId("1"));


    }
}
