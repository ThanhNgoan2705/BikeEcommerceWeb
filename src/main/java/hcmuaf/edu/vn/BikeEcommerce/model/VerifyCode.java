package hcmuaf.edu.vn.BikeEcommerce.model;

public class VerifyCode {
    String email;
    String verifyCode;
    int function;
    int valid;
    String createAt;

    public VerifyCode() {
    }



    public VerifyCode(String email, String verifyCode, int function) {
        this.email = email;
        this.verifyCode = verifyCode;
        this.function = function;
    }

    @Override
    public String toString() {
        return "VerifyCode{" +
                "email='" + email + '\'' +
                ", verifyCode='" + verifyCode + '\'' +
                ", function=" + function +
                ", valid=" + valid +
                ", createAt='" + createAt + '\'' +
                '}';
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

    public String getVerifyCode() {
        return verifyCode;
    }

    public void setVerifyCode(String verifyCode) {
        this.verifyCode = verifyCode;
    }

    public String getCreateAt() {
        return createAt;
    }

    public void setCreateAt(String createAt) {
        this.createAt = createAt;
    }
}
