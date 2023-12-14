package hcmuaf.edu.vn.BikeEcommerce;

import org.bouncycastle.operator.OperatorCreationException;
import vn.edu.atbmmodel.key.KeyGen;

import java.io.FileInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.*;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;

public class test {
    public static void main(String[] args) throws NoSuchAlgorithmException, NoSuchProviderException, IOException, CertificateException, OperatorCreationException {
        //day la lenh tao ra seri co do dai 256 bit=64 ki tu hexa
        BigInteger serial = new BigInteger(256, new SecureRandom());
        byte[] privateBytes = new FileInputStream("src/main/privateInfo/GreenLockPrivateKey.key").readAllBytes();
        PrivateKey privateKey = KeyGen.getInstance().getPrivateKeyformBytes(privateBytes);
        byte[] publicBytes = new FileInputStream("src/main/privateInfo/GreenLockPublicKey.key").readAllBytes();
        PublicKey publicKey = KeyGen.getInstance().getPublicKeyformBytes(publicBytes);

        Certificate certificate = KeyGen.getInstance().genCertificate(privateKey,publicKey,"hoanghai",serial );
        System.out.println(certificate);
    }
}
