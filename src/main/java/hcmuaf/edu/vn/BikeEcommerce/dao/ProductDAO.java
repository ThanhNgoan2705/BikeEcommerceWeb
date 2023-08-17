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
    @SqlQuery("Select * from Product ")
    List<Product> getAll();

    @SqlQuery("Select * from Product where id = :id")
    Product getById(@Bind("id") String id);

    @SqlQuery("Select * from Product where name like = :name")
    List<Product> getByName(@Bind("name") String name);

    @SqlUpdate("INSERT INTO product (productId, name, price, description, wheelSize, material, warranty, quantity, inventory, discountId, categoryId, brandId, supplierId, status) " +
            "VALUES (:productId, :name, :price, :description, :wheelSize, :material, :warranty, :quantity, :inventory, :discountId, :categoryId, :brandId, :supplierId, :status)")
    void insert(@BindBean Product product);

    @SqlUpdate("UPDATE product " +
            "SET name = :name, price = :price, description = :description, wheelSize = :wheelSize, " +
            "material = :material, warranty = :warranty, quantity = :quantity, inventory = :inventory, " +
            "discountId = :discountId, categoryId = :categoryId, brandId = :brandId, supplierId = :supplierId, status = :status " +
            "WHERE productId = :productId")
    void update(@BindBean Product product);

    @SqlUpdate("DELETE FROM product WHERE productId = :productId")
    void delete(@Bind("productId") String productId);


}
