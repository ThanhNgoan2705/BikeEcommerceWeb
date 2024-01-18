package hcmuaf.edu.vn.BikeEcommerce.controllers.userController;

import com.google.gson.Gson;
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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

@WebServlet("/user/RevocationCert")
public class UserRevocationCert extends HttpServlet {
    RevocationCertService revocationCertService;

    JsonObject json;
    Gson gson;

    public void init() throws ServletException {
        json = new JsonObject();
        gson = new Gson();

        revocationCertService = RevocationCertService.getInstance();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String seri2 = request.getParameter("seri2");
        String revokedAt = request.getParameter("revokedAt");

        System.out.println("reri2:" + seri2 + "revokedAt" + revokedAt);

//        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
//        LocalDate localDate = LocalDate.parse(revokedAt, formatter);
//        long revokedAtDate = localDate.toEpochDay();

        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        long timestamp = 0;
        try {
            // Phân tích chuỗi thành đối tượng Date
            Date date = dateFormat.parse(revokedAt);

            // Lấy giá trị thời gian dưới dạng long
            timestamp = date.getTime();

            System.out.println("Giá trị thời gian dưới dạng long: " + timestamp);

        } catch (ParseException e) {
            e.printStackTrace();
        }

        RevocationCert revocationCert = new RevocationCert();
        revocationCert.setSeri(seri2);
        revocationCert.setRevokedAt(timestamp);
        revocationCertService.insert(revocationCert);


        response.setContentType("application/json");
        response.getWriter().write(json.toString());
//        response.getWriter().write("thanh cong");
    }
}
