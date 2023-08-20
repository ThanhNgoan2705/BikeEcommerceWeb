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


}
