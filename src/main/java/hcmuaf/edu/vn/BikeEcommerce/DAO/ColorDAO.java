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
    @SqlQuery(ScirptSQL.getAllColor)
    List<Color> getAll();

    @SqlQuery(ScirptSQL.getColorById)
    Color getColorById(@Bind("colorId") String colorId);

    @SqlUpdate(ScirptSQL.insertColor)
    void insertColor(@BindBean Color color);

    @SqlUpdate(ScirptSQL.updateColor)
    void updateColor(@BindBean Color color);

    @SqlUpdate(ScirptSQL.deleteColor)
    void deleteColor(@Bind("colorId") String colorId);

    @SqlQuery(ScirptSQL.getColorByProductId)
    List<Color> getColorByProductId(@Bind("productId") String productId);
}
