package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.ImageProductDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.ImageProduct;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class ImageProductService {
    Jdbi jdbi = JDBIConnector.get();
    public static ImageProductService instance = null;

    public static ImageProductService getInstance() {
        if (instance == null) {
            instance = new ImageProductService();
        }
        return instance;
    }

    List<ImageProduct> getAllImageProduct() {
        return jdbi.withExtension(ImageProductDAO.class, dao -> dao.getAll());
    }

    public List<ImageProduct> getImageProductByProductId(String productId) {
        return jdbi.withExtension(ImageProductDAO.class, dao -> dao.getImageProductByProductId(productId));
    }
}
