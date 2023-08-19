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

    public ImageProduct getImageProductById(String id) {
        return jdbi.withExtension(ImageProductDAO.class, dao -> dao.getImageProductById(id));
    }

    public void insertImageProduct(ImageProduct imageProduct) {
        jdbi.useExtension(ImageProductDAO.class, dao -> dao.insertImageProduct(imageProduct));
    }

    public void updateImageProduct(ImageProduct imageProduct) {
        jdbi.useExtension(ImageProductDAO.class, dao -> dao.updateImageProduct(imageProduct));
    }

    public void deleteImageProduct(String id) {
        jdbi.useExtension(ImageProductDAO.class, dao -> dao.deleteImageProduct(id));
    }
}
