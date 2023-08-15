package hcmuaf.edu.vn.BikeEcommerce.toolSecurity;

import java.security.SecureRandom;

public class GenerateVerifyCode {
    public static String generateVerifyCode() {
        SecureRandom secureRandom = new SecureRandom();
        byte[] verifyCode  = new byte[3]; //
        secureRandom.nextBytes(verifyCode);

        // In ra giá trị verifyCode dưới dạng chuỗi hex
        StringBuilder verifyCodeHex = new StringBuilder();
        for (byte b : verifyCode) {
            verifyCodeHex.append(String.format("%02x", b));
        }
        return verifyCodeHex.toString().toUpperCase();
    }

    public static void main(String[] args) {
        System.out.println(generateVerifyCode());
    }
}
