package hcmuaf.edu.vn.BikeEcommerce;

import hcmuaf.edu.vn.BikeEcommerce.db.DBProperties;
import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.service.UserService;

import java.util.List;
import java.util.Properties;

import static hcmuaf.edu.vn.BikeEcommerce.db.DBProperties.*;

public class test {
    public static void main(String[] args) {


//        UserService userService = new UserService();
//        List<User> users = userService.getAllUser();
//        System.out.println(users.get(0).toString());
        System.out.println ("jdbc:mysql://" + getHost() + ":" + getPort() + "/" + getDatabaseName());
        System.out.println(DBProperties.getHost());
    }
}
