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
    @SqlQuery("select * from color_product")
    public List<ColorProduct> getAll();
    @SqlQuery("select * from color_product where  product_id = :productId")
    List<ColorProduct> getColorProductByProductId(@Bind("productId") String productId);
    @SqlQuery("select * from color_product where color_id = :colorId")
    List<ColorProduct> getColorProductByColorId(@Bind("colorId") String colorId);
    @SqlUpdate("insert into color_product(color_id,product_id) values(:colorId,:productId)")
    void insertColorProduct(@BindBean ColorProduct colorProduct);
    @SqlUpdate("update color_product set color_id = :colorId, product_id = :productId where color_id = :colorId")
    void updateColorProduct(@BindBean ColorProduct colorProduct);
    @SqlUpdate("delete from color_product where color_id = :colorId and product_id = :productId")
    void deleteColorProduct(@Bind("colorId") String colorId, @Bind("productId") String productId);
}
