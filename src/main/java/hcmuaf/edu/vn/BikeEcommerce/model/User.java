package hcmuaf.edu.vn.BikeEcommerce.model;

public class User {
    String id;
    String mail;
    String pass;
    String name;

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", mail='" + mail + '\'' +
                ", pass='" + pass + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
