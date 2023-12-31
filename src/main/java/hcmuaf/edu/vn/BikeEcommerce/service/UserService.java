package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.UserDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Address;
import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.model.User;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class UserService {
    Jdbi jdbi = JDBIConnector.get();
    private static UserService instance = null;


    public static UserService getInstance() {
        if (instance == null) {
            instance = new UserService();
        }
        return instance;
    }

    public UserService() {
    }

    public List<User> getAllUser() {
        return jdbi.withExtension(UserDAO.class, UserDAO::getUsers);
    }

    public User getUserByKey(String key) {// da test , lay ra user theo id or email or user_name.

        return mapToUser(jdbi.withExtension(UserDAO.class, dao -> dao.getUserByKey(key)));
    }

    public void insertUser(User user) {// da test
        jdbi.useExtension(UserDAO.class, dao -> dao.insertUser(user));
    }

    public void updateUser(User user) {// da test
        jdbi.useExtension(UserDAO.class, dao -> dao.updateUser(user));
    }

    public void updateUserPassword(User user) {// da test
        jdbi.useExtension(UserDAO.class, dao -> dao.updateUserPassword(user));
    }
    public void deleteUserById(String id) {// da test
        jdbi.useExtension(UserDAO.class, dao -> dao.deleteUserById(id));
    }

    public User mapToUser(User user) {// da test
        if (user == null) {
            return null;
        }
        List<Order> orders = OrderService.getInstance().getAllOrderByUserId(user.getUserId());
        List<Address> addresses = AddressService.getInstance().getAllAddressByUserId(user.getUserId());
        user.setOrders(orders);
        user.setAddresses(addresses);

        return user;
    }
    public User loginByUserNameOrEmail(String keyLogin, String pass) {// da test
        return jdbi.withExtension(UserDAO.class, dao -> dao.loginByUserNameOrEmail(keyLogin, getSaltByUserNameOrEmail(keyLogin) + pass));
    }

    private String getSaltByUserNameOrEmail(String key) {// da test
        return jdbi.withExtension(UserDAO.class, dao -> dao.getSaltByUserNameOrEmail(key));
    }

    public boolean isEmailOrUserNameAlreadyExists(String key) {// da test
        return jdbi.withExtension(UserDAO.class, dao -> dao.isEmailOrUserNameAlreadyExists(key));
    }

    public void setAdmin(String userId) {
        jdbi.useExtension(UserDAO.class, dao -> dao.setAdmin(userId));
    }

    public void setUser(String userId) {
        jdbi.useExtension(UserDAO.class, dao -> dao.setUser(userId));
    }

    public void updateUser(String email, int role) {
        jdbi.useExtension(UserDAO.class, dao -> dao.updateUser(email, role));
    }
    public static void main(String[] args) {
//        System.out.println(UserService.getInstance().loginByUserNameOrEmail("hai", "hai"));
//        System.out.println(UserService.getInstance().isEmailOrUserNameAlreadyExists("thanhngoan2ktd@gmail.com"));
        System.out.println(UserService.getInstance().loginByUserNameOrEmail("admin@123gmail.com","111"));
    }


//    public void updateUserEmail(User user) {
//        jdbi.useExtension(UserDAO.class, dao -> dao.updateUserEmail(user.getUserId(),user.getEmail()));
//    }
}
