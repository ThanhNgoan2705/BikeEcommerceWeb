package hcmuaf.edu.vn.BikeEcommerce;

import hcmuaf.edu.vn.BikeEcommerce.service.UserService;

public class test {
    public static void main(String[] args) {
        UserService userService = new UserService();
        System.out.println(userService.getUserByKey("h@gmail.com"));
    }
}
