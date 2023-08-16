package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.VerifyCode;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
@RegisterBeanMapper(VerifyCode.class)
public interface VerifyCodeDAO {
    @SqlQuery(ScirptSQL.checkVerifyCodeForRegister)
    VerifyCode checkVerifyCodeForRegister(@BindBean VerifyCode verifyCode);

    @SqlQuery(ScirptSQL.checkVerifyCodeForResetPassword)
    VerifyCode checkVerifyCodeForResetPassword(@BindBean VerifyCode verifyCode);
    @SqlQuery(ScirptSQL.checkVerifyCodeForLogin)
    VerifyCode checkVerifyCodeForLogin(@BindBean VerifyCode verifyCode);
    @SqlUpdate(ScirptSQL.insertVerifyCode)
    void insertVerifyCode(@BindBean VerifyCode verifyCode);
    @SqlUpdate(ScirptSQL.disableVerifyCode)
    void disableVerifyCode(@BindBean VerifyCode verifyCode);
}
