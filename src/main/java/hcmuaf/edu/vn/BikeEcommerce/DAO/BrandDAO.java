package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Brand;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Brand.class)
public interface BrandDAO {
    @SqlQuery(ScirptSQL.getAllBrands)
    List<Brand> getAll();

    @SqlQuery(ScirptSQL.getBrandById)
    Brand getById(@Bind("brandId") String brandId);

    @SqlQuery(ScirptSQL.getBrandsByName)
    List<Brand> getByName(@Bind("name") String name);

    @SqlUpdate(ScirptSQL.insertBrand)
    int insert(@BindBean Brand brand);

    @SqlUpdate(ScirptSQL.updateBrand)
    int update(@BindBean Brand brand);

    @SqlUpdate(ScirptSQL.deleteBrand)
    int delete(@Bind("brandId") String brandId);

    @SqlQuery(ScirptSQL.getBrandByCategoryId)
    List<Brand> getBrandByCategoryId(@Bind("categoryId")String categoryId);
}
