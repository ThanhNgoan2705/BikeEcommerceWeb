package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.VerifyCode;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
@RegisterBeanMapper(VerifyCode.class)
public interface VerifyCodeDAO {
    @SqlQuery(ScirptSQL.checkVerifyCode)
    VerifyCode checkVerifyCode(@BindBean VerifyCode verifyCode);
    @SqlUpdate(ScirptSQL.insertVerifyCode)
    void insertVerifyCode(@BindBean VerifyCode verifyCode);
}
