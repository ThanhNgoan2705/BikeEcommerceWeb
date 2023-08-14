package hcmuaf.edu.vn.BikeEcommerce.DAO;

public class ScirptSQL {
    public static final String getUser = "select * from User";
    public static final String getUserByKey = "select * from User where user_id = :key or email= :key or user_name=:key";
    public static final String insertUser = "insert into User (user_id, email, salt, pass, user_name) " + "values (:getUserId,:getEmail,:getSalt,SHA2(:getPass,256),:getUserName);";
    public static final String updateUser = "update User " + "set email = :getEmail, pass= SHA2(':getPass', 256) " + "where user_id = :getUserId;";
    public static final String deleteUserById = "delete " + "from User " + "where user_id =:id ";
    public static final String loginByUserNameOrEmail = "select * from User where user_name=:keyLogin or email=:keyLogin and pass=SHA2(:pass,256)";

    public static final String getSaltByUserNameOrEmail = "select salt from User where user_name=:key or email=:key";

    public static final String isEmailOrUserNameAlreadyExists = "select :key = user_name or :key = email from user";
}
