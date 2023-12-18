package hcmuaf.edu.vn.BikeEcommerce.controllers.userController;

import vn.edu.atbmmodel.key.KeyGen;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.*;
import java.util.Base64;

@WebServlet("/user/userKey")
public class UserKey {
    KeyGen keyGen;
    KeyPair keyPair;
    PublicKey publicKey;
    PrivateKey privateKey;

    public void init() throws ServletException, NoSuchAlgorithmException, NoSuchProviderException {
        keyGen = KeyGen.getInstance();
        keyPair = keyGen.getKeyPair(2048);
        publicKey = keyPair.getPublic();
        privateKey = keyPair.getPrivate();
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String pubString= Base64.getEncoder().encodeToString(publicKey.getEncoded());
            byte[] bytes= Base64.getDecoder().decode(pubString);
            PublicKey publicKey1= keyGen.getPublicKeyformBytes(bytes);
            System.out.println(publicKey1.equals(publicKey));

            resp.setContentType("text/plain");
            resp.getWriter().write("Public Key: " + publicKey + "\n");
            resp.getWriter().write("Private Key: " + privateKey);

        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }
}
