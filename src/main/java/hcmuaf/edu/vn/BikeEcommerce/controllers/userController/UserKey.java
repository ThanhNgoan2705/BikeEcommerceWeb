package hcmuaf.edu.vn.BikeEcommerce.controllers.userController;

import vn.edu.atbmmodel.key.KeyGen;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.*;

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
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
