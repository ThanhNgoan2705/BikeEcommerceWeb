package hcmuaf.edu.vn.BikeEcommerce.db;
import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;


import java.sql.SQLException;

import static hcmuaf.edu.vn.BikeEcommerce.db.DBProperties.*;

public class JDBIConnector {
    private static Jdbi jdbi;

    private JDBIConnector() {
    }

    private static void makeConnect() {
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL("jdbc:mysql://" + getHost() + ":" + getPort() + "/" + getDatabaseName());
        dataSource.setUser(getUserName());
        dataSource.setPassword(getPassword());

        try {
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        jdbi = Jdbi.create(dataSource);
        jdbi.installPlugin(new SqlObjectPlugin());

    }

    public static Jdbi get() {
        if (jdbi == null)
            makeConnect();
        return jdbi;
    }

    public static void main(String[] args) {
        System.out.println(getHost());
        System.out.println(getPort());
    }

}
