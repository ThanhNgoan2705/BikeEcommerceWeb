package hcmuaf.edu.vn.BikeEcommerce.toolSecurity;

import java.security.SecureRandom;

public class GenerateSalt {
    //    dung SecureRandom de tao salt
    public static String generateSalt() {
        SecureRandom secureRandom = new SecureRandom();
        byte[] salt = new byte[16]; // Độ dài của muối (salt)
        secureRandom.nextBytes(salt);

        // In ra giá trị muối (salt) dưới dạng chuỗi hex
        StringBuilder saltHex = new StringBuilder();
        for (byte b : salt) {
            saltHex.append(String.format("%02x", b));
        }
        return saltHex.toString();
    }

    public static void main(String[] args) {
        System.out.println(generateSalt());
    }
}
