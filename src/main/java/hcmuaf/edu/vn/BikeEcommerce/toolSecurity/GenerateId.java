package hcmuaf.edu.vn.BikeEcommerce.toolSecurity;

import hcmuaf.edu.vn.BikeEcommerce.model.Category;

import java.time.LocalDateTime;
import java.util.UUID;

public class GenerateId {
    public static String generateId() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString();
    }

    public static String generateIdOrder() {
        LocalDateTime currentDate = LocalDateTime.now();
        int year = currentDate.getYear() % 100; // Lấy 2 chữ số cuối của năm
        int month = currentDate.getMonthValue();
        int day = currentDate.getDayOfMonth();

        // Định dạng thành chuỗi theo kiểu yêu cầu: yymmdd
        String customFormattedDate = String.format("%02d%02d%02d", year, month, day);


        return customFormattedDate + GenerateVerifyCode.generateVerifyCode();// lay them 6 ki tu ngau nhien
    }

    public static String generateIdProduct(Category category) {
        return category.getShortId() + GenerateVerifyCode.generateVerifyCode();
    }


    public static void main(String[] args) {


        System.out.println("UUID: " + generateIdOrder());
    }
}
