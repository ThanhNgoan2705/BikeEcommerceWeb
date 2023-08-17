package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.ColorDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Color;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class ColorService {
    Jdbi jdbi = JDBIConnector.get();
    public static ColorService instance = null;

    public static ColorService getInstance() {
        if (instance == null) {
            instance = new ColorService();
        }
        return instance;
    }
    List<Color> allColor() {
        return jdbi.withExtension(ColorDAO.class, dao -> dao.getAll());
    }

    public Color getColorById(String colorId) {
        return jdbi.withExtension(ColorDAO.class, dao -> dao.getColorById(colorId));
    }
}
