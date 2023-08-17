package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.ImageSliderDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.ImageSlider;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class ImageSliderService {
    Jdbi jdbi = JDBIConnector.get();
    public static ImageSliderService instance = null;

    public static ImageSliderService getInstance() {
        if (instance == null) {
            instance = new ImageSliderService();
        }
        return instance;
    }

    List<ImageSlider> getAllImageImageSlider() {
        return jdbi.withExtension(ImageSliderDAO.class, dao -> dao.getAll());
    }
}
