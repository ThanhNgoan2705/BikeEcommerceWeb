package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.VerifyCodeDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.VerifyCode;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateVerifyCode;
import org.jdbi.v3.core.Jdbi;

public class VerifyCodeService {
    private static VerifyCodeService instance = null;
    Jdbi jdbi = JDBIConnector.get();
    public static VerifyCodeService getInstance(){
        if (instance == null) {
            instance = new VerifyCodeService();
        }
        return instance;
    }

    public VerifyCodeService() {
    }

    public boolean checkVerifyCodeForRegister(VerifyCode verifyCode) {
        // true if email and code are correct and time creat this code under 5 min
        VerifyCode verifyCodeResult = jdbi.withExtension(VerifyCodeDAO.class, dao -> dao.checkVerifyCodeForRegister(verifyCode));
        return verifyCodeResult == null ? false : true;
    }

    public boolean checkVerifyCodeForLogin(VerifyCode verifyCode) {
        // true if email and code are correct and time creat this code under 5 min
        VerifyCode verifyCodeResult = jdbi.withExtension(VerifyCodeDAO.class, dao -> dao.checkVerifyCodeForLogin(verifyCode));
        return verifyCodeResult == null ? false : true;
    }

    public boolean checkVerifyCodeForResetPassword(VerifyCode verifyCode) {
        // true if email and code are correct and time creat this code under 24 hours
        VerifyCode verifyCodeResult = jdbi.withExtension(VerifyCodeDAO.class, dao -> dao.checkVerifyCodeForResetPassword(verifyCode));
        return verifyCodeResult == null ? false : true;
    }

    public void insertVerifyCode(VerifyCode verifyCode) {
        jdbi.useExtension(VerifyCodeDAO.class, dao -> dao.insertVerifyCode(verifyCode));
    }

    public void disableVerifyCode(VerifyCode verifyCode) {
        jdbi.useExtension(VerifyCodeDAO.class, dao -> dao.disableVerifyCode(verifyCode));
    }

    public static void main(String[] args) {
        VerifyCode v1 = new VerifyCode("h@gmail.com", GenerateVerifyCode.generateVerifyCode(), 1);
        VerifyCodeService verifyCodeService = new VerifyCodeService();
        verifyCodeService.insertVerifyCode(v1);
        System.out.println(verifyCodeService.checkVerifyCodeForRegister(v1));
    }
}
