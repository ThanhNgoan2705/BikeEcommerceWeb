package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Supplier;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Supplier.class)
public interface SupplierDAO {
    @SqlQuery("Select * from Supplier ")
    List<Supplier> getAll();

    @SqlQuery("Select * from Supplier where supplier_id = :supplierId")
    Supplier getById(@Bind("supplierId") String supplierId);

    @SqlQuery("Select * from Supplier where name like = :name")
    List<Supplier> getByName(@Bind("name") String name);

    @SqlUpdate("Insert into `Supplier`(`supplier_id`, `name`,`description`)" +
            " values (:supplierId, :name, :description")
    int insert(@BindBean Supplier supplier);

    @SqlUpdate("Update `Supplier` set `name` = :name, `description` = :description where `supplier_id` = :supplierId")
    int update(@BindBean Supplier supplier);

    @SqlUpdate("Delete from `Supplier` where `supplier_id` = :supplierId")
    int delete(@Bind("supplierId") String supplierId);


}
