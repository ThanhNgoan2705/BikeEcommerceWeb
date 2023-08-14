package hcmuaf.edu.vn.BikeEcommerce.db;

import java.io.IOException;
import java.util.Properties;

public class DBProperties {
    private static final Properties properties = new Properties();
    static {
        try {
            properties.load(DBProperties.class.getClassLoader().getResourceAsStream("db.properties"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static String getHost() {
        return properties.getProperty("db.host");
    }
    public static String getPort() {
        return properties.getProperty("db.port");
    }
    public static String getUserName() {
        return properties.getProperty("db.username");
    }
    public static String getPassword() {
        return properties.getProperty("db.password");
    }
    public static String getDatabaseName() {
        return properties.getProperty("db.databaseName");

    }

    public static void main(String[] args) {
        System.out.println(getHost());
    }
}
