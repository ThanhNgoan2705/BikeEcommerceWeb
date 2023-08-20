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
    @SqlQuery(ScirptSQL.getAllSupplier)
    List<Supplier> getAllSupplier();

    @SqlQuery(ScirptSQL.getSupplierById)
    Supplier getById(@Bind("supplierId") String supplierId);

    @SqlQuery(ScirptSQL.getSuppliersByName)
    List<Supplier> getSuppliersByName(@Bind("supplierName") String supplierName);

    @SqlUpdate(ScirptSQL.insertSupplier)
    int insertSupplier(@BindBean Supplier supplier);

    @SqlUpdate(ScirptSQL.updateSupplier)
    int updateSupplier(@BindBean Supplier supplier);

    @SqlUpdate(ScirptSQL.deleteSupplier)
    int deleteSupplier(@Bind("supplierId") String supplierId);


}
