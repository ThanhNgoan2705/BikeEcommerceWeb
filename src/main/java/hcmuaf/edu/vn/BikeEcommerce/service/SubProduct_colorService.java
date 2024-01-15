package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.SubProduct_colorDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Color;
import hcmuaf.edu.vn.BikeEcommerce.model.SubProduct_color;
import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.stream.Collectors;

/**
 * da test and fix by hoang hai 20-8-23
 */
public class SubProduct_colorService {
    Jdbi jdbi = JDBIConnector.get();
    public static SubProduct_colorService instance = null;

    public static SubProduct_colorService getInstance() {
        if (instance == null) {
            instance = new SubProduct_colorService();
        }
        return instance;
    }

    List<SubProduct_color> getAllColorProduct() {
        return jdbi.withExtension(SubProduct_colorDAO.class, dao -> dao.getAllColorProduct());
    }

    public SubProduct_color getColorProductByProductIdAndColorId(String productId, String colorId) {
        return jdbi.withExtension(SubProduct_colorDAO.class, dao -> dao.getColorProductByProductIdAndColorId(productId, colorId));
    }

    List<SubProduct_color> getColorProductByProductId(String productId) {
        List<SubProduct_color> subProductColors = jdbi.withExtension(SubProduct_colorDAO.class, dao -> dao.getColorProductByProductId(productId));
        return subProductColors.stream().map(SubProduct_color -> mapOrderColorProduct(SubProduct_color)).collect(Collectors.toList());
    }

    List<SubProduct_color> getColorProductByColorId(String colorId) {
        List<SubProduct_color> subProductColors = jdbi.withExtension(SubProduct_colorDAO.class, dao -> dao.getColorProductByColorId(colorId));
        return subProductColors.stream().map(SubProduct_color -> mapOrderColorProduct(SubProduct_color)).collect(Collectors.toList());
    }

    SubProduct_color mapOrderColorProduct(SubProduct_color subProductColor) {
        if (subProductColor.getColorId() == null || subProductColor.getProductId() == null) {
            return null;
        }
        Color color = ColorService.getInstance().getColorById(subProductColor.getColorId());
        Product product = ProductService.getInstance().getProductById(subProductColor.getProductId());
        subProductColor.setColor(color);
        subProductColor.setProduct(product);
        return subProductColor;
    }

    public void insertColorProduct(SubProduct_color subProductColor) {
        jdbi.useExtension(SubProduct_colorDAO.class, dao -> dao.insertColorProduct(subProductColor));
    }

    public void updateColorProduct(SubProduct_color subProductColor) {
        jdbi.useExtension(SubProduct_colorDAO.class, dao -> dao.updateColorProduct(subProductColor));
    }

    public void deleteColorProduct(String productId, String colorId) {
        jdbi.useExtension(SubProduct_colorDAO.class, dao -> dao.deleteColorProduct(productId, colorId));
    }

    public void deleteColorProductByProductId(String productId) {
        jdbi.useExtension(SubProduct_colorDAO.class, dao -> dao.deleteColorProductByProductId(productId));
    }

    public void deleteSubProduct_colorByColorId(String colorId) {
        jdbi.useExtension(SubProduct_colorDAO.class, dao -> dao.deleteColorProductByColorId(colorId));
    }

    public double getPriceByProductIdAndColorId(String productId, String colorId) {
        return jdbi.withExtension(SubProduct_colorDAO.class, dao -> dao.getPriceByProductIdAndColorId(productId, colorId));
    }
    public int getInventoryByProductIdAndColorId(String productId, String colorId) {
        return jdbi.withExtension(SubProduct_colorDAO.class, dao -> dao.getInventoryByProductIdAndColorId(productId, colorId));
    }
    public static void main(String[] args) {

//        System.out.println(SubProduct_colorService.getInstance().getInventoryByProductIdAndColorId("1","1"));
        System.out.println(SubProduct_colorService.getInstance().getPriceByProductIdAndColorId("product1","color1"));
    }


}
