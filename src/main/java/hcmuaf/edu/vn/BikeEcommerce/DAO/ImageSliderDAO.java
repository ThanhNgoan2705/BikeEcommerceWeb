package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.ImageSlider;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;
@RegisterBeanMapper(ImageSlider.class)
public interface ImageSliderDAO {
    @SqlQuery(ScirptSQL.getAllSlider)
    List<ImageSlider> getAllSlider();

    @SqlQuery(ScirptSQL.getSliderById)
    ImageSlider getImageSliderById(@Bind("id") String id);

    @SqlUpdate(ScirptSQL.insertImageSlider)
    void insertImageSlider(@BindBean ImageSlider imageSlider);

    @SqlUpdate(ScirptSQL.updateImageSlider)
    void updateImageSlider(@BindBean ImageSlider imageSlider);

    @SqlUpdate(ScirptSQL.deleteImageSlider)
    void deleteImageSlider(@Bind("id") String id);

}
