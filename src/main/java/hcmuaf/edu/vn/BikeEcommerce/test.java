package hcmuaf.edu.vn.BikeEcommerce;

import org.bouncycastle.asn1.x509.Time;
import org.bouncycastle.operator.OperatorCreationException;
import hcmuaf.edu.vn.BikeEcommerce.atbm.KeyGen;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.*;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;

public class test {
    public static void main(String[] args) throws NoSuchAlgorithmException, NoSuchProviderException, IOException, CertificateException, OperatorCreationException {
//        //day la lenh tao ra seri co do dai 256 bit=64 ki tu hexa
//        BigInteger serial = new BigInteger(256, new SecureRandom());
//        byte[] privateBytes = new FileInputStream("src/main/privateInfo/GreenLockPrivateKey.key").readAllBytes();
//        PrivateKey privateKey = KeyGen.getInstance().getPrivateKeyformBytes(privateBytes);
//        byte[] publicBytes = new FileInputStream("src/main/privateInfo/GreenLockPublicKey.key").readAllBytes();
//        PublicKey publicKey = KeyGen.getInstance().getPublicKeyformBytes(publicBytes);
//
//        Certificate certificate = KeyGen.getInstance().genCertificate(privateKey,publicKey,"hoanghai",serial );
//        System.out.println(certificate);

//
//        Date date = new Date();
//        Calendar cal = Calendar.getInstance();
//        cal.setTime(date);
//        cal.add(Calendar.YEAR, 1);
//        Date endDate = cal.getTime();
//        System.out.println(date);
//        System.out.println(endDate);
        InputStream inputStream = test.class.getResourceAsStream("/privateInfo/GreenLockPrivateKey.key");
        byte[] privateBytes = inputStream.readAllBytes();
        System.out.println(privateBytes.length);
    }
}
