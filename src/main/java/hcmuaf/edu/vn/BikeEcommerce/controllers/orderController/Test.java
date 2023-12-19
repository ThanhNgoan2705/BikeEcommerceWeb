package hcmuaf.edu.vn.BikeEcommerce.controllers.orderController;

import vn.edu.atbmmodel.hash.Hash;

import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;

public class Test {
    public static void main(String[] args) throws NoSuchAlgorithmException, NoSuchProviderException {
        Hash hash = new Hash("SHA-256");
        System.out.println(hash.hash("123"));
    }
}
