package hcmuaf.edu.vn.BikeEcommerce.utils;

import java.util.Random;

public class StringUtil {
    public static String getIdWithLength(int length) {
        int left = 97;
        int right = 122;
        int targetStringLength = length;
        Random random = new Random();
        StringBuilder buffer = new StringBuilder(targetStringLength);
        for (int i = 0; i < targetStringLength; i++) {
            int randomLimitedInt = left + (int)
                    (random.nextFloat() * (right - left + 1));
            buffer.append((char) randomLimitedInt);
        }
        String generatedString = buffer.toString();
        return generatedString;
    }

    public static String generateUUID() {
        return java.util.UUID.randomUUID().toString().concat(getIdWithLength(5));
    }

    public static void main(String[] args) {
        System.out.println(getIdWithLength(5));
    }
}
