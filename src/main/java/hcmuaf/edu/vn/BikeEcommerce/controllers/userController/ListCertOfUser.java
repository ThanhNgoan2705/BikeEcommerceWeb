package hcmuaf.edu.vn.BikeEcommerce.controllers.userController;

import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.Cert;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.CertView;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.RevocationCert;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.CertService;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.CertViewService;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.RevocationCertService;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.UserSeriService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.cert.X509Certificate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@WebServlet("/user/listCert")
public class ListCertOfUser extends HttpServlet {
    UserSeriService userSeriService;
    CertService certService;
    RevocationCertService revocationCertService;

    @Override
    public void init() throws ServletException {
        userSeriService = UserSeriService.getInstance();
        certService = CertService.getInstance();
        revocationCertService = RevocationCertService.getInstance();

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        String userId = token.getUserId();
        List<CertView> certViews = CertViewService.getCertViewFormUserId(userId);
        req.setAttribute("certViews", certViews);
        resp.getWriter().write(certViews.toString());
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
