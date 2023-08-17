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
    @SqlQuery("Select * from Brand ")
    List<Brand> getAll();

    @SqlQuery("Select * from Brand where brand_id = :brandId")
    Brand getById(@Bind("brandId") String brandId);

    @SqlQuery("Select * from Brand where name like concat('%',:name,'%')")
    List<Brand> getByName(@Bind("name") String name);

    @SqlUpdate("Insert into `Brand`(`brand_id`, `name`,`description`)" +
            " values (:brandId, :name, :description")
    int insert(@BindBean Brand brand);

    @SqlUpdate("Update `Brand` set `name` = :name, `description` = :description where `brand_id` = :brandId")
    int update(@BindBean Brand brand);
    @SqlUpdate("Delete from `Brand` where `id` = :brandId")
    int delete(@Bind("brandId") String brandId);
}
