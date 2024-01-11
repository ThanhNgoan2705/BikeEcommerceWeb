package hcmuaf.edu.vn.BikeEcommerce.controllers.userController;

import com.google.gson.JsonObject;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.Cert;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.RevocationCert;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.UserSeri;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.CertService;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.RevocationCertService;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.UserSeriService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.List;

@WebServlet("/user/RevocationCert")
public class UserRevocationCert {
    RevocationCertService revocationCertService;
    CertService certService;
    UserSeriService userSeriService;
    JsonObject json;

    public void init() throws ServletException {
        json = new JsonObject();
        certService = CertService.getInstance();
        revocationCertService = RevocationCertService.getInstance();
        userSeriService = UserSeriService.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String seri2 = request.getParameter("seri2");
        String revokedAt = request.getParameter("revokedAt");

        Token token = (Token) request.getAttribute("token");
        BigInteger serial1 = new BigInteger(255, new SecureRandom()).setBit(255);
        String serial = serial1.toString(16);

        RevocationCert revocationCert= new RevocationCert();
        revocationCert.setSeri(seri2);
        revocationCert.setRevokedAt(Long.valueOf(revokedAt));
revocationCertService.insert(revocationCert);

        UserSeri userSeri = new UserSeri();
        userSeri.setUserId(token.getUserId());
        userSeri.setSeri(seri2);

        userSeriService.insert(userSeri);

        response.setContentType("application/json");
        response.getWriter().write(json.toString());
    }
}
