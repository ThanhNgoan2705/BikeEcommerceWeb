package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.ColorProductDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Color;
import hcmuaf.edu.vn.BikeEcommerce.model.ColorProduct;
import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

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
        return jdbi.withExtension(ColorProductDAO.class, dao -> dao.getAll());
    }

    ColorProduct getColorProductByProductId(String productId) {
        ColorProduct colorProduct = jdbi.withExtension(ColorProductDAO.class, dao -> dao.getColorProductByProductId(productId));
        return mapOrderColorProduct(colorProduct);
    }

    ColorProduct getColorProductByColorId(String colorId) {
        ColorProduct colorProduct = jdbi.withExtension(ColorProductDAO.class, dao -> dao.getColorProductByColorId(colorId));
        return mapOrderColorProduct(colorProduct);
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
}
