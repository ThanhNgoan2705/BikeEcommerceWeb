package hcmuaf.edu.vn.BikeEcommerce.toolSecurity;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;
import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.UserService;

import java.security.*;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Base64;
import java.util.Date;


public class TokenService {
    static TokenService generateToken = null;
    KeyPair keyPair = RSA.getInstance().generateKeyPair();
//    PrivateKey privateKey = keyPair.getPrivate();
//    PublicKey publicKey = keyPair.getPublic();


    // set cung 1 cap key de de fix bug
    KeyFactory keyFactory = KeyFactory.getInstance("RSA");
    String publicKeyStr = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoNaTKTT8XWNWBF437wHIMv7TnxGmgNr6R0JF3t3HtwG9NB6N83ReGyJkGmfpWCcdCsyEZmKU2T3wJ69Rnayyy+8fzgtUOUYhBaYKeIiXoEiGlBip2rbwq9GlIY2N5FBj1rvCZAFJhzbnkn7PpUGaFFJJYHTMjT9eFGaaEkdClNonvpmK+LEOEoMGj3dDFc1TsxP9iyXU4Q7ZrAOmYqLXZHrdIteZmbNizpGwUo5480eg7a17cGb1rYrf392QSSJfYpMAxEUwbUrN+LeCLZ2ksa9a6SrAJF+VKjkdZ8CCXxuDYq7baw0ZpZdJZdfELg812+HcaQ0Ih1tiJGjJvyXIxwIDAQAB";
    String privateKeyStr = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCg1pMpNPxdY1YEXjfvAcgy/tOfEaaA2vpHQkXe3ce3Ab00Ho3zdF4bImQaZ+lYJx0KzIRmYpTZPfAnr1GdrLLL7x/OC1Q5RiEFpgp4iJegSIaUGKnatvCr0aUhjY3kUGPWu8JkAUmHNueSfs+lQZoUUklgdMyNP14UZpoSR0KU2ie+mYr4sQ4SgwaPd0MVzVOzE/2LJdThDtmsA6Ziotdket0i15mZs2LOkbBSjnjzR6DtrXtwZvWtit/f3ZBJIl9ikwDERTBtSs34t4ItnaSxr1rpKsAkX5UqOR1nwIJfG4NirttrDRmll0ll18QuDzXb4dxpDQiHW2IkaMm/JcjHAgMBAAECggEBAIdHMwuLp1+c93JBFOaQJyTNNI0sOVFT3QImecIT47DHY638rQRBsg08hdm34InmjATTM+ExtWRrNh0K1qi54sCoZaXV3Yc2tvubRl9O88k6dwcFH4f4KsE5WZy5BMkt3Gt2DPA0LPXvdiK/SkMCxGenNlRMqOd8jtK14YzSJuwumrXarQgsMzLlYpPcleX0R7F254RnNwcPblIpgws4S0k28Eut1Aynu4XKP6ERw9X4TotSnP8Te80yk7T+ZPQwMP3KjfqL3MnZVIGVAbIfjWdws8sUPjuk/+oI8MT0eYTYQxOosgAQ1tsrsnUAPrPAQFBHR6sbln8LvCgoFu7gdOECgYEA/z3mqrcrZp/zcY07fR9N4HNHvhKLPy85eEQxsb68pPzGNH37tjy7LF3PXd/aPH48K+u1eFQJMNe9htBTNrocR7ZsfuAMaWRZRHjJqV0R7w7aK+y75gz58vQAocj1p+8sTvsUoP4Wao4nWZsAnZ960XmiYwCIXDNfQU5ZsS21BA8CgYEAoVDia25CTmJnzUqJ+WQG4ML8VHKeYIkOD8x9UpcChkEqrjk2zhveGhW+A9CdDEKukd5l1nZluZyL0Dvm2qgbT6neGGzFx6F4HclDkuBZVLmDxgSUL3/jAv43ZHSNRxZ8vjfl2O4dun0M/Pgu/kN1kDa0lXBqu3TA6vkFCm+T18kCgYA8CB0WjdpBWuFxFZymQxSX88Ut6UKi68KCjNd7TLclvuYHNpJbPFFxj+bT13CGxdH1Ko0V7f3zZOqIqLrJpmA8ZaWC+cMxjo6IUjhsAx3SshWSOy2+X9Lx133Gj3NnuhMbyGYDr38qNKEArDoq2HWUix0sV9W6icKfo4Po7i0i9QKBgD4H7VkkR+j+XC4L+Kxms2JgeEk83fv/F+IpXxOQMA9SJchjBdkRzEE5lRzAbnOVfK1o2L40Pv+12+mR7z6rn/ztNBMuWItgYuEJUKu9C3zR7YMKpbTyN2giO0isrNrmIce/lOnq/pGEnqb0BJYPeLig4KYKWXCF/90bLr4Jk89JAoGBAIERfW/GF/7TjlUcvsNqEvcEhfucbRZ4jqBYa2iD5+Fa2a6eaYvNvxpMQKqsOHV+sL12Dcpe8CO4BlvRzfbVCiv8ZalUXRTZsh6+3cVvSQAeN1eF90EEUsKPcwXVMGAGCqjl0dTymoTXSXXiE4IvK9RMX44GEsqoEx9iL4eTK1Sj";
    RSAPrivateKey privateKey = (RSAPrivateKey) keyFactory.generatePrivate(new PKCS8EncodedKeySpec(Base64.getDecoder().decode(privateKeyStr)));
    RSAPublicKey publicKey = (RSAPublicKey) keyFactory.generatePublic(new X509EncodedKeySpec(Base64.getDecoder().decode(publicKeyStr)));
    //


    Algorithm algorithm = Algorithm.RSA256((RSAPublicKey) publicKey, (RSAPrivateKey) privateKey);


    public static TokenService getInstance() throws NoSuchAlgorithmException, InvalidKeySpecException {
        if (generateToken == null) {
            generateToken = new TokenService();
        }
        return generateToken;
    }

    public TokenService() throws NoSuchAlgorithmException, InvalidKeySpecException {
    }

    public String genTokenByUser(User user) {
        String token = JWT.create()
                .withClaim("UserId", user.getUserId())
                .withClaim("UserName", user.getUserName())
                .withClaim("role", String.valueOf(user.getRole()))
                .withExpiresAt(new Date(System.currentTimeMillis() + 1000 * 60 * 60))
                .sign(algorithm);
        return token;
    }

    public Token getTokenFromHeader(String tokenData) {
        Token token = new Token();
        DecodedJWT jwt;
        try {
            jwt = JWT.require(algorithm)
                    .build()
                    .verify(tokenData);
        } catch (Exception e) {
            return null;
        }

        token.setUserId(jwt.getClaim("UserId").asString());
        token.setUserName(jwt.getClaim("UserName").asString());
        token.setRole(jwt.getClaim("role").asString());

        return token;
    }

    public static void main(String[] args) throws NoSuchAlgorithmException, InvalidKeySpecException {
        try {
//            TokenService tokenService = new TokenService();
//            String token = tokenService.genTokenByUser(new User("1", "1", "1", "1", "1", 1));
            User user = UserService.getInstance().getUserByKey("hai");
            String token = TokenService.getInstance().genTokenByUser(user);
            System.out.println(token);
            String data = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiIwOThkMTE2OS1iODBiLTQxOWMtOGM5ZC02NTc0ZmU1YWQ0ZDkiLCJVc2VyTmFtZSI6ImhhaSIsInJvbGUiOiIxIiwiZXhwIjoxNjk1MDE0NTYwfQ.YRWe983jYi2dH6FnPZEQnZFirgVfw4rQPv_QY9ycnz-aWHsz0nXM6lj6cBk07ESTGkABCbp2yPYEGAdhTPY3raH0h-dG_-JNggW_H-I1mCGQ7_iuwldAXiYHiSVW9X_YW8x5rlhKd1fOQw3VCJ4mpbHGE0QpWe-8vPmjh9skkCyl0gxBA9ona9oxWeJuuLD67vxsxgb8mh7occMasCi_oqcyW_c6zSxXCbrsSH_vLJrgVUzpLIrDLEz9TRtIBfXql5GOUeqKmBwTvZ3n5pAaZ0XX-IV9dDKDpX6Ed2l6hZbGAloxe89nichc3p00egiVN91eSmWJO0KjwOv32etFag";

            Thread.sleep(500);
//            System.out.println(data);
            System.out.println(TokenService.getInstance().getTokenFromHeader(data));
            System.out.println(TokenService.getInstance().getTokenFromHeader(token));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (InterruptedException | InvalidKeySpecException e) {
            throw new RuntimeException(e);
        }




    }
}
