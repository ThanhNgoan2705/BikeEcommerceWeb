package hcmuaf.edu.vn.BikeEcommerce.dao;

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

    @SqlQuery ("Select * from Product where name like = :name")
    List<Product> getByName(@Bind("name") String name);

    @SqlUpdate("Insert into `Product`(`id`, `name`,`price`,`description`,`wheelSize`,`quantity`,"+
            "`inventory`,`material`,`warrenty`,`category_id`,`brand_id`,`discount_id`,"+
            "`supplier_id`)" +
            " values (:id, :name, :price, :description, :wheelSize, :quantity, :inventory, "+"" +
            ":material, :warrenty, :category_id, :brand_id, :discount_id, :supplier_id)")
    int insert(@BindBean Product product);

    @SqlUpdate("Update `Product` set `name` = :name, `price` = :price, `description` = :description, `wheelSize` = :wheelSize, `quantity` = :quantity, `inventory` = :inventory, `material` = :material, `warrenty` = :warrenty, `category_id` = :category_id, `brand_id` = :brand_id,"+"" +
            " `discount_id` = :discount_id, `supplier_id` = :supplier_id, `updateAt` = now() where `id` = :id")
            int update(@BindBean Product product);


}
