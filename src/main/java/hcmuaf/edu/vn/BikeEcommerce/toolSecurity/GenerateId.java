package hcmuaf.edu.vn.BikeEcommerce.toolSecurity;

import hcmuaf.edu.vn.BikeEcommerce.model.Category;
import hcmuaf.edu.vn.BikeEcommerce.service.CategoryService;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import static hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateSalt.generateSecureRandomCode;

public class GenerateId {
    public static String generateId() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString();
    }

    public static String generateProductId(String categoryId) {
        Category category = CategoryService.getInstance().getById(categoryId);
        String code = generateSecureRandomCode(3);
        return category.getShortId()+code;
    }

    public static String generateOrderId() {
        Date date = new Date();

        // Định dạng thời gian thành "yymmdd"
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyMMdd");
        String formattedDate = dateFormat.format(date);
        String code = generateSecureRandomCode(3);

        return formattedDate+code;
    }

    public static void main(String[] args) {
        System.out.println(generateProductId("1"));
    }
}
