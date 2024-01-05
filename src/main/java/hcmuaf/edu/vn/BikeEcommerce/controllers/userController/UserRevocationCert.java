package hcmuaf.edu.vn.BikeEcommerce.controllers.userController;

import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.CertService;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.RevocationCertService;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.UserSeriService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/RevocationCert")
public class UserRevocationCert {
    RevocationCertService revocationCertService;
    CertService certService;
    UserSeriService userSeriService;
    public void init() throws ServletException {
        userSeriService = UserSeriService.getInstance();
        certService = CertService.getInstance();
        revocationCertService = RevocationCertService.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String seri = request.getParameter("seri");
        String revokedAt = request.getParameter("revokedAt");

    }
}
