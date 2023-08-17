package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Color;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Color.class)
public interface ColorDAO {
    @SqlQuery("select * from color")
    List<Color> getAll();

    @SqlQuery("select * from color where color_id = :colorId")
    Color getColorById(@Bind("colorId") String colorId);

    @SqlUpdate("insert into color(color_name,code) values(:colorName,:code)")
    void insertColor(@BindBean Color color);

    @SqlUpdate("update color set color_name = :colorName, code = :code where color_id = :colorId")
    void updateColor(@BindBean Color color);

    @SqlUpdate("delete from color where color_id = :colorId")
    void deleteColor(@Bind("colorId") String colorId);

    @SqlQuery("select * from color where color_id in (select color_id from color_product where product_id = :productId)")
    List<Color> getColorByProductId(@Bind("productId") String productId);
}
