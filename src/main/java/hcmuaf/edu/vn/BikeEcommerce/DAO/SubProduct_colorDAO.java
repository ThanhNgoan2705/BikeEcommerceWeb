package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.SubProduct_color;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(SubProduct_color.class)
public interface SubProduct_colorDAO {
    @SqlQuery(ScirptSQL.getAllColorProduct)
    public List<SubProduct_color> getAllColorProduct();

    @SqlQuery(ScirptSQL.getColorProductByProductId)
    List<SubProduct_color> getColorProductByProductId(@Bind("productId") String productId);

    @SqlQuery(ScirptSQL.getColorProductByColorId)
    List<SubProduct_color> getColorProductByColorId(@Bind("colorId") String colorId);

    @SqlUpdate(ScirptSQL.insertColorProduct)
    void insertColorProduct(@BindBean SubProduct_color subProductColor);

    @SqlUpdate(ScirptSQL.updateColorProduct)
    void updateColorProduct(@BindBean SubProduct_color subProductColor);

    @SqlUpdate(ScirptSQL.deleteColorProduct)
    void deleteColorProduct(@Bind("productId") String productId, @Bind("colorId") String colorId);

    @SqlUpdate(ScirptSQL.deleteColorProductByProductId)
    void deleteColorProductByProductId(@Bind("productId") String productId);

    @SqlUpdate(ScirptSQL.deleteColorProductByColorId)
    void deleteColorProductByColorId(@Bind("colorId") String colorId);

    @SqlQuery(ScirptSQL.getPriceByProductIdAndColorId)
    Double getPriceByProductIdAndColorId(@Bind("productId") String productId, @Bind("colorId") String colorId);

    @SqlQuery(ScirptSQL.getColorProductByProductIdAndColorId)
    SubProduct_color getColorProductByProductIdAndColorId(@Bind("productId") String productId, @Bind("colorId") String colorId);

    @SqlQuery(ScirptSQL.getInventoryByProductIdAndColorId)
    Integer getInventoryByProductIdAndColorId(@Bind("productId") String productId, @Bind("colorId") String colorId);
}
