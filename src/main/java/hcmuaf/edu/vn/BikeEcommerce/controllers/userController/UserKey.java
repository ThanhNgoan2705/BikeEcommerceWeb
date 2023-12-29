package hcmuaf.edu.vn.BikeEcommerce.controllers.userController;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
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

    JsonObject json;


    public void init() throws ServletException {
        gson = new Gson();
        json = new JsonObject();
        keyGen = KeyGen.getInstance();
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
//        String privateKey= req.getParameter("privateKey");
//        String publicKey = req.getParameter("publicKey");
//        String seri = req.getParameter("seri");

//        resp.getWriter().write("publicKey" + publicKey + "\n");
//        resp.getWriter().write("privateKey: " + privateKey);
//        resp.getWriter().write("Seri: " + seri);

//        String pubString= Base64.getEncoder().encodeToString(publicKey.getEncoded());
//        byte[] bytes= Base64.getDecoder().decode(pubString);
//        PublicKey publicKey1= keyGen.getPublicKeyformBytes(bytes);
//        System.out.println(publicKey1.equals(publicKey));

//        PrintWriter out = response.getWriter();

//        String privateKey= request.getParameter("privateKey");
        response.setContentType("application/json");
        String pubKey = Base64.getEncoder().encodeToString(publicKey.getEncoded());
        String priKey = Base64.getEncoder().encodeToString(privateKey.getEncoded());
        String serinum = "cdksjk";


        BigInteger serial = new BigInteger(256, new SecureRandom());

        byte[] privateBytes = new FileInputStream("T:\\CKAT\\src\\main\\privateInfo\\GreenLockPrivateKey.key").readAllBytes();
        PrivateKey privateKey1 = KeyGen.getInstance().getPrivateKeyformBytes(privateBytes);
        String cer;
        try {
            certificate = KeyGen.getInstance().genCertificate(privateKey1, publicKey, "aa", serial);
            cer = Base64.getEncoder().encodeToString(certificate.getEncoded());
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (OperatorCreationException e) {
            throw new RuntimeException(e);
        } catch (CertificateException e) {
            throw new RuntimeException(e);
        }

        json.addProperty("pubKey", pubKey);
        json.addProperty("priKey", priKey);
        json.addProperty("cer", cer);


        response.getWriter().write(json.toString());

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }

    public static void main(String[] args) {

    }
}
