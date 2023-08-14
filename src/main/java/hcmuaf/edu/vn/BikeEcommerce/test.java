package hcmuaf.edu.vn.BikeEcommerce;

import hcmuaf.edu.vn.BikeEcommerce.service.UserService;

public class test {
    public static void main(String[] args) {


        UserService userService = new UserService();
        System.out.println(userService.loginByUserNameOrEmail("h@gmail.com","1234").toString());

//        User user = userService.loginByEmail("h@gmail.com","1234");

//        User user = new User(GenerateId.generateId(),"h@gmail.com","1234","hoanghailata", GenerateSalt.generateSalt());
//       userService.insertUser(user);
//        User user = userService.getUserByKey("ad666e82-58af-4b75-b39a-28cfe9e25d8f");
//        System.out.println(user.toString());
//        user.setEmail("nguyenhoanghai@gmail.com");
//        userService.updateUser(user);
//        userService.deleteUserById("1234");
//        User users = userService.getUserByKey("1234");
//        System.out.println(users.toString());
//        System.out.println ("jdbc:mysql://" + getHost() + ":" + getPort() + "/" + getDatabaseName());
//        System.out.println(DBProperties.getHost());
    }
}
