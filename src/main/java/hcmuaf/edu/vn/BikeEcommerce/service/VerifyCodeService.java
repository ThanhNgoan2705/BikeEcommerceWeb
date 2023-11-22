package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.VerifyCodeDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.VerifyCode;
import org.jdbi.v3.core.Jdbi;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class VerifyCodeService {
    Jdbi jdbi = JDBIConnector.get();
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    private static VerifyCodeService instance = null;

    public static VerifyCodeService getInstance() {
        if (instance == null) {
            instance = new VerifyCodeService();
        }
        return instance;
    }

    public VerifyCodeService() {
    }

    public boolean isCorrectVerifyCode(String email, String code, int function) {
        VerifyCode verifyCode = getVerifyCode(email, code);
        if (verifyCode == null) {
            return false;
        }
        if (verifyCode.getValid() == 0) {
            return false;
        }
        if (verifyCode.getFunction() != function) {
            return false;
        }
        if (LocalDateTime.now().isAfter(LocalDateTime.parse(verifyCode.getCreatedAt(), formatter).plusMinutes(60))) {
            return false;
        }
        return true;
    }

    public VerifyCode getVerifyCode(String email, String code) {
        return jdbi.withExtension(VerifyCodeDAO.class, dao -> dao.getVerifyCode(email, code));
    }

    public void insertVerifyCode(String email, String code, int function) {
        jdbi.useExtension(VerifyCodeDAO.class, dao -> dao.insertVerifyCode(email, code, function));
    }

    public void updateVerifyCode(String email, String code) {
        jdbi.useExtension(VerifyCodeDAO.class, dao -> dao.updateVerifyCode(email, code));
    }

    public static void main(String[] args) {
//        boolean check = getInstance().isCorrectVerifyCode("@gmail.com", "0510e2", 1);
//        System.out.println(check);
//        getInstance().updateVerifyCode("20130166@st.hcmuaf.edu.vn","123456");

//       boolean check= VerifyCodeService.getInstance().isCorrectVerifyCode("admin@gmail.com", "b70d40", 1);
//        System.out.println(check);
        VerifyCode verifyCode = VerifyCodeService.getInstance().getVerifyCode("admin@gmail.com", "b70d40");
//        System.out.println(LocalDateTime.parse(verifyCode.getCreatedAt(), DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
        System.out.println(LocalDateTime.now());
        System.out.println(verifyCode);
    }
}
