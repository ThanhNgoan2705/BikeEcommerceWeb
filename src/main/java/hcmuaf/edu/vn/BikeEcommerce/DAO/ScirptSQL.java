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
// VerifyCode
    public static final String checkVerifyCodeForRegister = "select * from verify_code where code=:verifyCode and email=:email and function = 1 and valid = 1 and now()-create_at<300";
    public static final String checkVerifyCodeForLogin = "select * from verify_code where code=:verifyCode and email=:email and function = 2 and valid = 1 and now()-create_at<300";
    public static final String checkVerifyCodeForResetPassword = "select * from verify_code where code=:verifyCode and email=:email and function = 3 and valid = 1 and now()-create_at<1440";
    public static final String insertVerifyCode = "INSERT INTO verify_code (code, email,function) " +
            "VALUES (:verifyCode,:email,:function);";
    public static final String disableVerifyCode = "update verify_code set valid=0 where code=:verifyCode and email=:email";
}
