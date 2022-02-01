package config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static java.lang.Class.forName;

public class DBConn {
    private String driver = "com.mysql.cj.jdbc.Driver";
    private String host = "jdbc:mysql://localhost:3306/";

    public Connection getConnection(String database, String userDB, String passwordDB) { //aca creo un metodo nuevo llamado getConnection (generico para cualquier tipo de coneccion)
        Connection conn = null;
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(host + database, userDB, passwordDB);

        } catch (ClassNotFoundException | SQLException err) {
            err.printStackTrace();
        }
        return conn;
    }
}
