package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.VerifyCode;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
@RegisterBeanMapper(VerifyCode.class)
public interface VerifyCodeDAO {
    @SqlQuery(ScirptSQL.GET_VERIFY_CODE)
    VerifyCode getVerifyCode(@Bind("email") String email,@Bind("code") String code);

    @SqlUpdate(ScirptSQL.INSERT_VERIFY_CODE)
    void insertVerifyCode(@Bind("email")String email,@Bind("code") String code,@Bind("function") int function);

    @SqlUpdate(ScirptSQL.UPDATE_VERIFY_CODE)
    void updateVerifyCode(@Bind("email")String email,@Bind("code") String code);
}
