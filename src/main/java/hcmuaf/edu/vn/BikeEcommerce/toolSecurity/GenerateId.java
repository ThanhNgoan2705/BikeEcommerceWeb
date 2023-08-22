package hcmuaf.edu.vn.BikeEcommerce.toolSecurity;

import java.util.UUID;

public class GenerateId {
    public static String generateId() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString();
    }

    public static void main(String[] args) {


        System.out.println("UUID: " + generateId());
    }
}
