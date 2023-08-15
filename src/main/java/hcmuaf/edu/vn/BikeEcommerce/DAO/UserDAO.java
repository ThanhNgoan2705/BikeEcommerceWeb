package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.User;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindMethods;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(User.class)
public interface UserDAO {
    @SqlQuery(ScirptSQL.getUser)
    List<User> getUsers();

    @SqlQuery(ScirptSQL.getUserByKey)
    User getUserByKey(@Bind("key") String key);

    @SqlUpdate(ScirptSQL.insertUser)
    void insertUser(@BindMethods User user);

    @SqlUpdate(ScirptSQL.updateUser)
    void updateUser(@BindMethods User user);

    @SqlUpdate(ScirptSQL.deleteUserById)
    void deleteUserById(@Bind("id") String id);

    @SqlQuery(ScirptSQL.getSaltByUserNameOrEmail)
    String getSaltByUserNameOrEmail(@Bind("key") String key);

    @SqlQuery(ScirptSQL.loginByUserNameOrEmail)
    User loginByUserNameOrEmail(@Bind("keyLogin") String keyLogin, @Bind("pass") String pass);

    @SqlQuery(ScirptSQL.isEmailOrUserNameAlreadyExists)
    Boolean isEmailOrUserNameAlreadyExists(@Bind("key") String key);

    @SqlUpdate(ScirptSQL.setAdmin)
    void setAdmin(@Bind("userId") String userId);

    @SqlUpdate(ScirptSQL.setUser)
    void setUser(@Bind("userId") String userId);
}
