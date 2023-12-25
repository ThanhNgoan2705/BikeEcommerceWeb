package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Product.class)
public interface ProductDAO {


    @SqlQuery(ScirptSQL.getAllProduct)
    List<Product> getAllProduct();

    @SqlQuery(ScirptSQL.getProductById)
    Product getProductById(@Bind("id") String id);

    @SqlQuery(ScirptSQL.getProductsByName)
    List<Product> getProductByName(@Bind("name") String name);

    @SqlUpdate(ScirptSQL.insertProduct)
    void insertProduct(@BindBean Product product);

    @SqlUpdate(ScirptSQL.updateProduct)
    void updateProduct(@BindBean Product product);

    @SqlUpdate(ScirptSQL.deleteProduct)
    void deleteProduct(@Bind("productId") String productId);

    @SqlQuery(ScirptSQL.getProductByCategoryId)
    List<Product> getProductByCategoryId(@Bind("categoryId") String categoryId);

    @SqlQuery(ScirptSQL.getProductByBrandId)
    List<Product> getProductByBrandId(@Bind("brandId") String brandId);

    @SqlQuery(ScirptSQL.getProductBySupplierId)
    List<Product> getProductBySupplierId(@Bind("supplierId") String supplierId);

    @SqlQuery(ScirptSQL.getProductByDiscount)
    List<Product> getProductByDiscount(@Bind("discountId") String discountId);

    @SqlQuery(ScirptSQL.getProductByStatus)
    List<Product> getProductByStatus(@Bind("status") String status);

    @SqlQuery(ScirptSQL.getProductByPrice)
    List<Product> getProductByPrice(@Bind("minPrice") int minPrice, @Bind("maxPrice") int maxPrice);

    @SqlQuery(ScirptSQL.getProductByWheelSize)
    List<Product> getProductByWheelSize(@Bind("wheelSize") String wheelSize);

    @SqlQuery(ScirptSQL.getProductByCategoryName)
    List<Product> getProductByCategoryName(@Bind("name") String name);

    @SqlQuery(ScirptSQL.getTop1Product)
    List<Product> getTop1Product();


    @SqlQuery(ScirptSQL.getInventory)
    Integer getInventory(@Bind("productId") String productId);
    // get Product by filter
    @SqlQuery(ScirptSQL.getProductByFilter)
    List<Product> getProductByFilter(String categoryId, String brandId, String supplierId, String discountId, String status, int minPrice, int maxPrice, String wheelSize);
    @SqlQuery(ScirptSQL.loadProductByPage)
    List<Product> loadProductByPage(@Bind("startRow") int startRow, @Bind("rowCount") int rowCount);
}
