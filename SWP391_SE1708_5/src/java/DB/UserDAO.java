/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Driver;
import java.sql.PreparedStatement;
import java.sql.SQLException;
/**
 *
 * @author Acer
 */
public class UserDAO {
    BaseDAO BaseDao = new BaseDAO();
    Connection conn = null;
    
    
    public static void main(String[] args) throws SQLException {
        UserDAO a = new UserDAO();
        System.out.println(a.checkUser("duongdd123"));
    }
    public String checkAdmin(String acc_id) throws SQLException {
        String role = "";
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("select r.role_name from(select ar.role_id from Accounts a inner join Account_role ar on a.acc_id = ar.acc_id where a.acc_id =?) as tb1 inner join Roles r on r.role_id = tb1.role_id ");
            stmt.setString(1, acc_id);

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data

            while (rs.next()) {
                role = rs.getString("role_name");

            }
            // close connection

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            conn.close();
        }
        return role;
    }
    
     public boolean checkUser(String username) throws SQLException {
        UserDAO a = null;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM User where username = ?");
            stmt.setString(1, username);

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data

            while (rs.next()) {
                return true;

            }
            // close connection

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            conn.close();
        }
        return false;
    }
     
     
    
}
