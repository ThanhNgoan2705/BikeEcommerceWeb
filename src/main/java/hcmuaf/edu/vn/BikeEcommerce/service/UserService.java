package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.UserDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.User;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class UserService {
    Jdbi jdbi = JDBIConnector.get();
    public List<User> getAllUser(){
        return  jdbi.withExtension(UserDAO.class, UserDAO::getUsers);
    }
}
