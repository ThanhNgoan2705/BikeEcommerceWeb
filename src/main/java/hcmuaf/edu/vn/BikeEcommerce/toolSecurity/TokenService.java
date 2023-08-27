package hcmuaf.edu.vn.BikeEcommerce.toolSecurity;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;
import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;

import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.util.Date;


public class TokenService {
    static TokenService generateToken = null;
    KeyPair keyPair = RSA.getInstance().generateKeyPair();
    PrivateKey privateKey = keyPair.getPrivate();
    PublicKey publicKey = keyPair.getPublic();
    Algorithm algorithm = Algorithm.RSA256((RSAPublicKey) publicKey, (RSAPrivateKey) privateKey);

    public static TokenService getInstance() throws NoSuchAlgorithmException {
        if (generateToken == null) {
            generateToken = new TokenService();
        }
        return generateToken;
    }

    public TokenService() throws NoSuchAlgorithmException {
    }

    public String genTokenByUser(User user) {
        String token = JWT.create()
                .withClaim("UserId", user.getUserId())
                .withClaim("UserName", user.getUserName())
                .withClaim("role", String.valueOf(user.getRole() ) )
                .withExpiresAt(new Date(System.currentTimeMillis() + 1000*60*2))
                .sign(algorithm);
        return token;
    }

    public Token getTokenFromHeader(String Token) {
        Token token = new Token();
        DecodedJWT jwt;
        try {
            jwt = JWT.require(algorithm)
                    .build()
                    .verify(Token);
        } catch (Exception e) {
            return null;
        }

        token.setUserId(jwt.getClaim("UserId").asString());
        token.setUserName(jwt.getClaim("UserName").asString());
        token.setRole(jwt.getClaim("role").asString());

        return token;
    }

    public static void main(String[] args) {
        try {
            TokenService tokenService = new TokenService();
            String token = tokenService.genTokenByUser(new User("1", "1", "1", "1", "1", 1));
            System.out.println(token);
            Thread.sleep(500);
            System.out.println(tokenService.getTokenFromHeader(token));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
