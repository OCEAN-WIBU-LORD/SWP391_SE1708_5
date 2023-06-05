package dbconnect;

import java.sql.DriverManager;
import java.sql.Connection;
import javax.swing.JOptionPane;

public class DBContext {

    public static Connection connectMySQLDatabase() {
        try {
            String username = "root";
            String password = "123456";
            String mysqlconn = "jdbc:mysql://localhost:3306/swp391_se1708_5";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(mysqlconn, username, password);
            return conn;
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return null;
    }
}