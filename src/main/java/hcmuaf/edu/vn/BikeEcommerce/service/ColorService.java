package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.ColorDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Color;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

/**
 * da test and fix by Hoang Hai 20-8-23
 */
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

    public List<Color> getColorByProductId(String productId) {
        return jdbi.withExtension(ColorDAO.class, dao -> dao.getColorByProductId(productId));
    }

    public void insertColor(Color color) {
        jdbi.useExtension(ColorDAO.class, dao -> dao.insertColor(color));
    }

    public void updateColor(Color color) {

        jdbi.useExtension(ColorDAO.class, dao -> dao.updateColor(color));
    }

    public void deleteColor(String id) {
        SubProduct_colorService.getInstance().deleteSubProduct_colorByColorId(id);
        jdbi.useExtension(ColorDAO.class, dao -> dao.deleteColor(id));
    }

    public static void main(String[] args) {
        ColorService.getInstance().insertColor(new Color("6", "red","red"));
        System.out.println(ColorService.getInstance().getColorById("6"));
        ColorService.getInstance().updateColor(new Color("6", "blue","blue"));
        System.out.println(ColorService.getInstance().getColorById("6"));
        ColorService.getInstance().deleteColor("6");
        System.out.println(ColorService.getInstance().getColorById("6"));

    }

}
