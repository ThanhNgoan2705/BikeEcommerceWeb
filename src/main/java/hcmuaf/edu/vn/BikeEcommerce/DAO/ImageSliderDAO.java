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
    @SqlQuery("select * from image_slider")
    List<ImageSlider> getAll();
    @SqlQuery("select * from image_slider where id = :id")
    ImageSlider getImageSliderById(@Bind("id") String id);
    @SqlUpdate("insert into image_slider(id,link) values(:id,:link)")
    void insertImageSlider(@BindBean ImageSlider imageSlider);
    @SqlUpdate("update image_slider set link = :link where id = :id")
    void updateImageSlider(@BindBean ImageSlider imageSlider);
    @SqlUpdate("delete from image_slider where id = :id")
    void deleteImageSlider(@Bind("id") String id);
}
