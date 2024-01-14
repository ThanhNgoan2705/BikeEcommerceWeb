package hcmuaf.edu.vn.BikeEcommerce.db;

import com.mysql.cj.jdbc.MysqlDataSource;
import hcmuaf.edu.vn.BikeEcommerce.model.Category;
import hcmuaf.edu.vn.BikeEcommerce.service.CategoryService;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;


import java.sql.SQLException;
import java.util.List;

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
        CategoryService categoryService = CategoryService.getInstance();
        List<Category> list = categoryService.getAll();
        System.out.println(list.size());
    }

}
