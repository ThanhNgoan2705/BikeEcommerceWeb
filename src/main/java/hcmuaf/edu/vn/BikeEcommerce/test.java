package hcmuaf.edu.vn.BikeEcommerce;

import vn.edu.atbmmodel.key.KeyGen;

import java.io.FileInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.SecureRandom;

public class test {
    public static void main(String[] args) throws NoSuchAlgorithmException, NoSuchProviderException, IOException {
        //day la lenh tao ra seri co do dai 256 bit=64 ki tu hexa
        BigInteger serial = new BigInteger(256, new SecureRandom());
        System.out.println(serial.toString(16).length());
        byte[] privateBytes = new FileInputStream("src/main/privateInfo/GreenLockPrivateKey.key").readAllBytes();
        PrivateKey privateKey = KeyGen.getInstance().getPrivateKeyformBytes(privateBytes);
        System.out.println(privateKey.getAlgorithm());
    }
}
