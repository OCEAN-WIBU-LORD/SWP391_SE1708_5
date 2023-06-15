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
import model.User;
import model.User_Details;

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
            PreparedStatement stmt = conn.prepareStatement("select r.role_name from(select ar.role_id from user a inner join user_role ar on a.user_id = ar.user_id where a.user_id = ?) as tb1 inner join role r on r.role_id = tb1.role_id");
            stmt.setString(1, acc_id);

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data

            while (rs.next()) {
                System.out.println(rs.getString(1));

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

    public void insertUser(String user_id, String full_name) {
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            PreparedStatement stmt = conn.prepareStatement("insert into user(user_id, full_name) values (?,?)");
            stmt.setString(1, user_id);
            stmt.setString(2, full_name);
            stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("insertUser" + e.getMessage());
        }
    }
    public String getUserName (String username) throws SQLException {
        String u = null;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // create statement
            PreparedStatement stmt = conn.prepareStatement("SELECT full_name FROM User where user_id like ?");
            stmt.setString(1, username);

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data
            while (rs.next()) {
                u = String.valueOf(rs.getString("full_name"));
            }
            // close connection

        } catch (Exception ex) {
            System.out.println("getUserName" + ex.getMessage());
        } finally {
            conn.close();
        }
        return u;
    }
    
     public int getTotalUser(String role) throws SQLException{
        int total = 0;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            PreparedStatement stmt = conn.prepareStatement(
                    "select count(user_id) "
                            + "from user "
                            + "inner join user_role ur on user.user_id = ur.user_id "
                            + "inner join role on ur.role_id = role_id  "
                            + "where role.role_name = ?"
            );
            stmt.setString(1, role);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (Exception ex) {
            System.out.println( ex.getMessage());
        } finally {
            if (conn != null){
                conn.close();
            }
        }
        return total;
    }

}
