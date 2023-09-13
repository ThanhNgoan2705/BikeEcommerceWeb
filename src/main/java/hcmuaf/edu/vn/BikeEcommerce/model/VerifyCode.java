package hcmuaf.edu.vn.BikeEcommerce.model;

/**
 * Created by Admin on 19-8-23.<br/>
 * This class is used to store information of verify code <br/>
 * This class is used to map with verify_code table in database <br/>
 * One user have many verify code <br/>
 * One verify code have one user <br/>
 * One verify code have one function <br/>
 * Function: 1: verify email (register), 2: OTP (Login), 3: reset password <br/>
 * Time to live: 60 minutes <br/>
 * Valid: 1: valid, 0: invalid <br/>
 *
 * @version 1.0
 * @Author Hoang Hai
 * @see User
 */
public class VerifyCode {
    private String email;
    private String code;
    private int function;
    private int valid;
    private String createdAt;


    public VerifyCode() {
    }


    public VerifyCode(String email, String code, int function) {
        this.email = email;
        this.code = code;
        this.function = function;
    }

    public VerifyCode(String email, String code, int function, int valid, String createdAt) {
        this.email = email;
        this.code = code;
        this.function = function;
        this.valid = valid;
        this.createdAt = createdAt;
    }

    @Override
    public String toString() {
        return "VerifyCode{" + "email='" + email + '\'' + ", code='" + code + '\'' + ", function=" + function + ", valid=" + valid + ", createdAt='" + createdAt + '\'' + '}';
    }

    public int getFunction() {
        return function;
    }

    public void setFunction(int function) {
        this.function = function;
    }

    public int getValid() {
        return valid;
    }

    public void setValid(int valid) {
        this.valid = valid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
}
