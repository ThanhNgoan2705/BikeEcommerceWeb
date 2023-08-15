package hcmuaf.edu.vn.BikeEcommerce.model;

public class VerifyCode {
    String email;
    String verifyCode;
    String createAt;

    public VerifyCode() {
    }

    public VerifyCode(String email, String verifyCode) {
        this.email = email;
        this.verifyCode = verifyCode;
    }

    public VerifyCode(String email, String verifyCode, String createAt) {
        this.email = email;
        this.verifyCode = verifyCode;
        this.createAt = createAt;
    }

    @Override
    public String toString() {
        return "VerifyCode{" +
                "email='" + email + '\'' +
                ", verifyCode='" + verifyCode + '\'' +
                ", createAt='" + createAt + '\'' +
                '}';
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
