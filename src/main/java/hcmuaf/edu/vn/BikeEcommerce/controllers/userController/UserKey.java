package hcmuaf.edu.vn.BikeEcommerce.controllers.userController;

import vn.edu.atbmmodel.key.KeyGen;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.*;

@WebServlet("/user/userKey")
public class UserKey extends HttpServlet {
    KeyGen keyGen;
    KeyPair keyPair;
    PublicKey publicKey;
    PrivateKey privateKey;


    public void init() throws ServletException {
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
    protected void doGet( HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();

        String privateKey= request.getParameter("privateKey");
        String publicKey = request.getParameter("publicKey");
        String seri = request.getParameter("seri");



        response.getWriter().write("publicKey" + publicKey + "\n");
        response.getWriter().write("privateKey: " + privateKey);
        response.getWriter().write("Seri: " + seri);



    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }

    public static void main(String[] args) {

    }
}
