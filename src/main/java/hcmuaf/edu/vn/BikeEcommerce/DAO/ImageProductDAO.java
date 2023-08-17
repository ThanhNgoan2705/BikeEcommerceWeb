package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.ImageProduct;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;
@RegisterBeanMapper(ImageProduct.class)
public interface ImageProductDAO {
    @SqlQuery("select * from image_product")
    List<ImageProduct> getAll();
    @SqlQuery("select * from image_product where image_product_id = :imageProductId")
    ImageProduct getImageProductById(@Bind("imageProductId")String imageProductId);
    @SqlQuery("select * from image_product where product_id = :productId")
    List<ImageProduct> getImageProductByProductId(@Bind("productId")String productId);
    @SqlUpdate("insert into image_product(image_product_id,link,product_id) values(:imageId,:link,:productId)")
    void insertImageProduct(@BindBean ImageProduct imageProduct);
    @SqlUpdate("update image_product set link = :link, product_id = :productId where image_product_id = :imageId")
    void updateImageProduct(@BindBean ImageProduct imageProduct);
    @SqlUpdate("delete from image_product where image_product_id = :imageProductId")
    void deleteImageProduct(@Bind("imageProductId") String imageProductId);
}
