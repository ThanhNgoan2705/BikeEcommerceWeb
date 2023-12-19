package hcmuaf.edu.vn.BikeEcommerce.DAO.digitSig;

import hcmuaf.edu.vn.BikeEcommerce.DAO.ScirptSQL;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.UserSeri;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(UserSeri.class)
public interface UserSeriDAO {
    @SqlQuery(ScirptSQL.getAllSeriOfUser)
    List<UserSeri> getAllSeriOfUser(@Bind("userId") String userId);

    @SqlQuery(ScirptSQL.checkSeriAndUser)
    Boolean checkSeriAndUser(@Bind("userId") String userId, @Bind("seri") String seri);

    @SqlUpdate(ScirptSQL.insertUserSeri)
    void insert(@BindBean UserSeri userSeri);
}
