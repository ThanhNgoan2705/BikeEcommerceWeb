package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.VerifyCodeDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.VerifyCode;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateVerifyCode;
import org.jdbi.v3.core.Jdbi;

public class VerifyCodeService {
    Jdbi jdbi = JDBIConnector.get();
    public boolean checkVerifyCode(VerifyCode verifyCode){
        // true if email and code are correct and time creat this code under 5 min
       VerifyCode verifyCodeResult = jdbi.withExtension(VerifyCodeDAO.class, dao->dao.checkVerifyCode(verifyCode));
        return verifyCodeResult == null ? false : true;
    }
    public void insertVerifyCode(VerifyCode verifyCode){
        jdbi.useExtension(VerifyCodeDAO.class, dao->dao.insertVerifyCode(verifyCode));
    }

    public static void main(String[] args) {
        VerifyCode v1 = new VerifyCode("h@gmail.com",GenerateVerifyCode.generateVerifyCode());
        VerifyCodeService verifyCodeService = new VerifyCodeService();
        verifyCodeService.insertVerifyCode(v1);
        System.out.println( verifyCodeService.checkVerifyCode(v1));
    }
}
