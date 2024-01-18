package hcmuaf.edu.vn.BikeEcommerce.controllers.userController;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.Cert;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.UserSeri;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.CertService;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.UserSeriService;
import org.bouncycastle.operator.OperatorCreationException;
import hcmuaf.edu.vn.BikeEcommerce.atbm.KeyGen;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.util.Base64;

@WebServlet("/user/importKey")
public class ImportKey extends HttpServlet {
    Certificate certificate;
    Gson gson;
    JsonObject json;
    CertService certService;
    UserSeriService userSeriService;

    public void init() throws ServletException {
        gson = new Gson();
        json = new JsonObject();
        userSeriService = UserSeriService.getInstance();
        certService = CertService.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Token token = (Token) request.getAttribute("token");

        String username = request.getParameter("username");
        String pubKey2 = request.getParameter("pubKey2");



        BigInteger serial1 = new BigInteger(255, new SecureRandom()).setBit(255);
        String serial = serial1.toString(16);

        System.out.println("info : " + username + ":" + pubKey2);
        InputStream inputStream = UserKey.class.getResourceAsStream("/privateInfo/GreenLockPrivateKey.key");
        byte[] privateBytes = inputStream.readAllBytes();

        PrivateKey privateKey1 = KeyGen.getInstance().getPrivateKeyformBytes(privateBytes);
        System.out.println("private : " + privateKey1.getAlgorithm());

        byte[] publicBytes = Base64.getDecoder().decode(pubKey2);
        System.out.println(publicBytes.length + " size");

        String cer;
        try {
            PublicKey userPub = KeyGen.getInstance().getPublicKeyformBytes(publicBytes);
            certificate = KeyGen.getInstance().genCertificate(privateKey1, userPub, username, serial1);
            cer = Base64.getEncoder().encodeToString(certificate.getEncoded());

        } catch (NoSuchAlgorithmException | OperatorCreationException | CertificateException e) {
            System.out.println(e.getMessage());
            throw new RuntimeException(e);
        }

        Cert cert= new Cert();
        cert.setSeri(String.valueOf(serial));
        cert.setPublicKey(pubKey2);
        cert.setCertValue(cer);

        certService.insert(cert);

        UserSeri userSeri = new UserSeri();
        userSeri.setUserId(token.getUserId());
        userSeri.setSeri(String.valueOf(serial));

        userSeriService.insert(userSeri);

        inputStream.close();

        json.addProperty("cer", cer);
        response.setContentType("application/json");
        response.getWriter().write(json.toString());

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
