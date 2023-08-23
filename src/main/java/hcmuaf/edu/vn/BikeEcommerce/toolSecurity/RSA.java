package hcmuaf.edu.vn.BikeEcommerce.toolSecurity;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.security.*;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Base64;

public class RSA {
    private static RSA instance = null;
    private MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
    private Signature signature = Signature.getInstance("SHA256withRSA");
    private KeyFactory keyFactory;

    public static RSA getInstance() throws NoSuchAlgorithmException {
        if (instance == null) {
            instance = new RSA();
        }
        return instance;
    }

    /**
     * This method is used to get instance of RSA <br/>
     * Use SHA-256 hash function <br/>
     * Use RSA algorithm    <br/>
     * This class is used to generate key pair(public , private key), get signature, verify signature, encrypt, decrypt message  <br/>
     * With alot of method, you can use it to encrypt, decrypt, sign, verify signature, generate key pair with String or byte array <br/>
     *
     * @throws InvalidKeyException
     * @throws SignatureException
     * @throws InvalidKeySpecException
     * @throws NoSuchAlgorithmException
     * @auther Hoang Hai
     * @version 1.0
     * @since 23-8-2023
     */
    public RSA() throws NoSuchAlgorithmException {
        keyFactory = KeyFactory.getInstance("RSA");
    }

    /**
     * This method is used to get hash of a string <br/>
     *
     * @param message
     * @return byte[] hash
     * @auther Hoang Hai
     * @version 1.0
     * @since 23-8-2023
     */
    public byte[] getHashWithSHA256(String message) {
        return messageDigest.digest(message.getBytes());
    }


    /**
     * This method is used to generate key pair (public key and private key) <br/>
     *
     * @return KeyPair
     * @throws NoSuchAlgorithmException
     * @auther Hoang Hai
     * @version 1.0
     * @since 23-8-2023
     */
    public KeyPair generateKeyPair() throws NoSuchAlgorithmException {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
        keyPairGenerator.initialize(2048); // Độ dài của khóa
        return keyPairGenerator.genKeyPair();
    }

    /**
     * This method is used to get digital signature of a string
     * Use SHA256withRSA algorithm and  hash function SHA-256
     * <p>
     * encrypted  -> to byte array -> hash -> sign (with privateKey) =  signature <br/>
     * return String signature = Base64(signature)
     *
     * @param privateKey
     * @param encrypted
     * @return String signature
     * @throws InvalidKeyException
     * @throws SignatureException
     * @auther Hoang Hai
     * @version 1.0
     * @since 23-8-2023
     */
    public byte[] getSignature(PrivateKey privateKey, byte[] encrypted) throws InvalidKeyException, SignatureException {
        if (encrypted == null || encrypted.length == 0 || privateKey == null) return null;
        signature.initSign(privateKey);
        signature.update(encrypted);
        byte[] signatureBytes = signature.sign();
        return signatureBytes;
    }

    /**
     * @param publicKey
     * @param encrypted
     * @param signatureByte
     * @return boolean
     * @throws InvalidKeyException
     * @throws SignatureException
     * @auther Hoang Hai
     * @version 1.0
     * @since 23-8-2023
     */
    public boolean verifySignature(PublicKey publicKey, byte[] encrypted, byte[] signatureByte) throws InvalidKeyException, SignatureException {
        if (encrypted == null || encrypted.length == 0 || publicKey == null || signatureByte == null || signatureByte.length == 0)
            return false;
        boolean result = false;
        signature.initVerify(publicKey);
        signature.update(encrypted);
        result = signature.verify(signatureByte);
        return result;
    }

    /**
     * This method is used to get signature of a string <br/>
     *
     * @param privateKey
     * @param orderCode
     * @return String signature
     * @throws InvalidKeyException
     * @throws SignatureException
     * @throws InvalidKeySpecException
     * @auther Hoang Hai
     * @version 1.0
     * @since 23-8-2023
     */
    public String getSignatureString(String privateKey, String orderCode) throws InvalidKeyException, SignatureException, InvalidKeySpecException {
        if (orderCode == null || orderCode.length() == 0 || privateKey == null || privateKey.length() == 0) return null;
        byte[] encrypted = Base64.getDecoder().decode(orderCode);
        RSAPrivateKey p = (RSAPrivateKey) keyFactory.generatePrivate(new PKCS8EncodedKeySpec(Base64.getDecoder().decode(privateKey)));
        byte[] signatureBytes = getSignature(p, encrypted);
        return Base64.getEncoder().encodeToString(signatureBytes);
    }

    /**
     * This method is used to verify signature of a string <br/>
     *
     * @param publicKey
     * @param orderCode
     * @param signature
     * @return boolean
     * @throws InvalidKeyException
     * @throws SignatureException
     * @throws InvalidKeySpecException
     * @auther Hoang Hai
     * @version 1.0
     * @since 23-8-2023
     */
    public boolean verifySignatureString(String publicKey, String orderCode, String signature) throws InvalidKeyException, SignatureException, InvalidKeySpecException {
        if (orderCode == null || orderCode.length() == 0 || publicKey == null || publicKey.length() == 0 || signature == null || signature.length() == 0)
            return false;
        byte[] encrypted = Base64.getDecoder().decode(orderCode);
        RSAPublicKey p = (RSAPublicKey) keyFactory.generatePublic(new PKCS8EncodedKeySpec(Base64.getDecoder().decode(publicKey)));
        byte[] signatureBytes = Base64.getDecoder().decode(signature);
        return verifySignature(p, encrypted, signatureBytes);

    }

    /**
     * This method is used to package signature and order code to a string for send to server <br/>
     *
     * @param signature
     * @param orderCode
     * @return String
     * @throws SignatureException
     * @throws InvalidKeyException
     * @throws InvalidKeySpecException
     * @auther Hoang Hai
     * @version 1.0
     * @since 23-8-2023
     */
    public String packageSignature(String signature, String orderCode) throws SignatureException, InvalidKeyException, InvalidKeySpecException {
        return getSignatureString(signature, orderCode) + " " + orderCode;
    }

    /**
     * This method is used to encrypt a byte array with public key (byte array) <br/>
     *
     * @param publicKey
     * @param data
     * @return byte[]
     * @throws Exception
     * @auther Hoang Hai
     * @version 1.0
     * @since 23-8-2023
     */
    public byte[] encrypt(PublicKey publicKey, byte[] data) throws Exception {
        if (data == null || data.length == 0 || publicKey == null) return null;
        Cipher cipher = Cipher.getInstance("RSA");
        cipher.init(Cipher.ENCRYPT_MODE, publicKey);
        return cipher.doFinal(data);
    }

    /**
     * This method is used to encrypt a string with public key (String) <br/>
     *
     * @param publicKey
     * @param data
     * @return String
     * @throws Exception
     * @auther Hoang Hai
     * @version 1.0
     * @since 23-8-2023
     */
    public String encryptString(String publicKey, String data) throws Exception {
        if (data == null || data.length() == 0 || publicKey == null) return null;
        Cipher cipher = Cipher.getInstance("RSA");
        RSAPublicKey rsaPublicKey = (RSAPublicKey) keyFactory.generatePublic(new PKCS8EncodedKeySpec(Base64.getDecoder().decode(publicKey)));
        cipher.init(Cipher.ENCRYPT_MODE, rsaPublicKey);
        return Base64.getEncoder().encodeToString(cipher.doFinal(data.getBytes()));
    }

    /**
     * This method is used to decrypt a byte array with private key (byte array) <br/>
     *
     * @param privateKey
     * @param encryptedData
     * @return byte[]
     * @throws Exception
     * @auther Hoang Hai
     * @version 1.0
     * @since 23-8-2023
     */
    public byte[] decrypt(PrivateKey privateKey, byte[] encryptedData) throws Exception {
        if (encryptedData == null || encryptedData.length == 0 || privateKey == null) return null;
        Cipher cipher = Cipher.getInstance("RSA");
        cipher.init(Cipher.DECRYPT_MODE, privateKey);
        return cipher.doFinal(encryptedData);
    }

    /**
     * This method is used to decrypt a string with private key (String) <br/>
     *
     * @param privateKey
     * @param encryptedData
     * @return String
     * @throws Exception
     * @auther Hoang Hai
     * @version 1.0
     * @since 23-8-2023
     */
    public String decryptString(String privateKey, String encryptedData) throws Exception {
        if (encryptedData == null || encryptedData.length() == 0 || privateKey == null) return null;
        Cipher cipher = Cipher.getInstance("RSA");
        RSAPrivateKey rsaPrivateKey = (RSAPrivateKey) keyFactory.generatePrivate(new PKCS8EncodedKeySpec(Base64.getDecoder().decode(privateKey)));
        cipher.init(Cipher.DECRYPT_MODE, rsaPrivateKey);
        return new String(cipher.doFinal(Base64.getDecoder().decode(encryptedData)));
    }

    private static final String SECRET_KEY = "bikelongvu"; // Replace with your secret key

    /**
     * This method is used to encrypt a string with AES algorithm <br/>
     *
     * @param plainText
     * @return String
     * @throws Exception
     * @auther Hoang Hai
     * @version 1.0
     * @since 23-8-2023
     */
    public String AESencrypt(String plainText) throws Exception {
        SecretKeySpec secretKey = new SecretKeySpec(SECRET_KEY.getBytes(), "AES");
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(Cipher.ENCRYPT_MODE, secretKey);
        byte[] encryptedBytes = cipher.doFinal(plainText.getBytes());
        return Base64.getEncoder().encodeToString(encryptedBytes);
    }

    /**
     * This method is used to decrypt a string with AES algorithm <br/>
     *
     * @param encryptedText
     * @return String
     * @throws Exception
     * @auther Hoang Hai
     * @version 1.0
     * @since 23-8-2023
     */
    public String decrypt(String encryptedText) throws Exception {
        SecretKeySpec secretKey = new SecretKeySpec(SECRET_KEY.getBytes(), "AES");
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(Cipher.DECRYPT_MODE, secretKey);
        byte[] encryptedBytes = Base64.getDecoder().decode(encryptedText);
        byte[] decryptedBytes = cipher.doFinal(encryptedBytes);
        return new String(decryptedBytes);
    }


    public static void main(String[] args) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException {


    }

}
