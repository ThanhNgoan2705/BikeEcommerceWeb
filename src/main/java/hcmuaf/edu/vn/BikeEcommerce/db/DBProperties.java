package hcmuaf.edu.vn.BikeEcommerce.db;

import java.util.Properties;

public class DBProperties {
    private static final Properties properties = new Properties();
    static {
        try {
            properties.load(DBProperties.class.getResourceAsStream("db.properties"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static String getHost() {
        return properties.getProperty("host");
    }
    public static String getPort() {
        return properties.getProperty("port");
    }
    public static String getUserName() {
        return properties.getProperty("username");
    }
    public static String getPassword() {
        return properties.getProperty("password");
    }
    public static String getDatabaseName() {
        return properties.getProperty("databaseName");
    }

}
