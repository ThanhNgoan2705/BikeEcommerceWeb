package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.ColorProduct;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(ColorProduct.class)
public interface ColorProductDAO {
    @SqlQuery(ScirptSQL.getAllColorProduct)
    public List<ColorProduct> getAllColorProduct();

    @SqlQuery(ScirptSQL.getColorProductByProductId)
    List<ColorProduct> getColorProductByProductId(@Bind("productId") String productId);

    @SqlQuery(ScirptSQL.getColorProductByColorId)
    List<ColorProduct> getColorProductByColorId(@Bind("colorId") String colorId);

    @SqlUpdate(ScirptSQL.insertColorProduct)
    void insertColorProduct(@BindBean ColorProduct colorProduct);

    @SqlUpdate(ScirptSQL.updateColorProduct)
    void updateColorProduct(@BindBean ColorProduct colorProduct);

    @SqlUpdate(ScirptSQL.deleteColorProduct)
    void deleteColorProduct(@Bind("colorId") String colorId, @Bind("productId") String productId);
}
