package hcmuaf.edu.vn.BikeEcommerce.controllers.userController;

import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.Cert;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.CertView;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.RevocationCert;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.CertService;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.RevocationCertService;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.UserSeriService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.cert.X509Certificate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
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
        List<CertView> certViews = new ArrayList<>();
        Token token = (Token) req.getAttribute("token");
        String userId = token.getUserId();
        List<Cert> certs = certService.getByUserId(userId);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");



        Date dateNow = new Date();
        for (Cert c : certs) {
            CertView temp = new CertView();
            temp.getSeri(c.getSeri());
            X509Certificate certificate = (X509Certificate) c.getCertificate();

            Date dateAfter= ((X509Certificate) certificate).getNotAfter();
            Date dateBefore= ((X509Certificate) certificate).getNotBefore();
//            Instant instant = date.toInstant();
//            LocalDate localDate = instant.atZone(ZoneId.systemDefault()).toLocalDate();
//            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
            temp.setName(String.valueOf(certificate.getSubjectDN()));
            temp.setStartDate(String.valueOf(certificate.getNotBefore()));
            temp.setEndDate(String.valueOf(certificate.getNotAfter()));
            RevocationCert revocationCert = revocationCertService.getBySeri(c.getSeri());
            if (revocationCert != null){
                temp.setStatus("Bị khóa");
            }else if(dateNow.after(dateAfter)){
                temp.setStatus("Het han");
            }else {
                temp.setStatus("Hoat dong");
            }


        }


    }
}
