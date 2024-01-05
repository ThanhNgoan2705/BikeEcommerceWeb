package hcmuaf.edu.vn.BikeEcommerce.controllers.userController;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.Cert;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.UserSeri;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.CertService;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.RevocationCertService;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.UserSeriService;
import netscape.javascript.JSObject;
import org.bouncycastle.operator.OperatorCreationException;
import vn.edu.atbmmodel.key.KeyGen;
import vn.edu.atbmmodel.publicKey.RSA;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.*;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.util.Base64;

@WebServlet("/user/userKey")
public class UserKey extends HttpServlet {
    Gson gson;
    KeyGen keyGen;
    KeyPair keyPair;
    PublicKey publicKey;
    PrivateKey privateKey;
    Certificate certificate;
CertService certService;
UserSeriService userSeriService;

    JsonObject json;


    public void init() throws ServletException {
        gson = new Gson();
        json = new JsonObject();
        keyGen = KeyGen.getInstance();
        userSeriService = UserSeriService.getInstance();
        certService = CertService.getInstance();

        try {
            keyPair = keyGen.getKeyPair(2048);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (NoSuchProviderException e) {
            throw new RuntimeException(e);
        }
        publicKey = keyPair.getPublic();
        privateKey = keyPair.getPrivate();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Token token = (Token) request.getAttribute("token");

        BigInteger serial1 = new BigInteger(255, new SecureRandom()).setBit(255);
        String serial = serial1.toString(16);

        String pubKey = Base64.getEncoder().encodeToString(publicKey.getEncoded());
        String priKey = Base64.getEncoder().encodeToString(privateKey.getEncoded());
        String issuerName = request.getParameter("issuerName");
        System.out.println(issuerName+":  userkeyy ");

        byte[] privateBytes = new FileInputStream("T:\\CKAT\\src\\main\\privateInfo\\GreenLockPrivateKey.key").readAllBytes();
        PrivateKey privateKey1 = KeyGen.getInstance().getPrivateKeyformBytes(privateBytes);
        String cer;
        try {
            certificate = KeyGen.getInstance().genCertificate(privateKey1, publicKey, issuerName, serial1);
            cer = Base64.getEncoder().encodeToString(certificate.getEncoded());
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (OperatorCreationException e) {
            throw new RuntimeException(e);
        } catch (CertificateException e) {
            throw new RuntimeException(e);
        }
try {
    Cert cert = new Cert();
    cert.setSeri(String.valueOf(serial));
    cert.setPublicKey(pubKey);
    cert.setCertValue(cer);

    certService.insert(cert);
    UserSeri userSeri = new UserSeri();
    userSeri.setUserId(token.getUserId());
    userSeri.setSeri(String.valueOf(serial));

    userSeriService.insert(userSeri);
}catch (Exception e){
    System.out.println(e.getMessage());
}

        json.addProperty("pubKey", pubKey);
        json.addProperty("priKey", priKey);
        json.addProperty("cer", cer);

        response.setContentType("application/json");
        response.getWriter().write(json.toString());

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);

    }

    public static void main(String[] args) {

    }
}
