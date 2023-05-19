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
public class User_DetailsDAO {
    BaseDAO BaseDao = new BaseDAO();
    Connection conn = null;
    
    public static void main(String[] args) throws SQLException {
        User_DetailsDAO a = new User_DetailsDAO();
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
                role = rs.getString(1);

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
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM User_Details where user_id = ?");
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
     
      public User_Details getUser_Details(String user_id, String password) throws SQLException {
        User_Details u = null;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM User_Details where user_id = ? and password = ?");
            stmt.setString(1, user_id);
            stmt.setString(2, password);

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data

            while (rs.next()) {
                u = new User_Details(rs.getString("user_id"), rs.getString("gender"), rs.getString("phone_number"), rs.getNString("gmail"), rs.getNString("address"), rs.getString("password"), rs.getString("link_image"));

            }
            // close connection

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            conn.close();
        }
        return u;
    }
      
      public void insertUserDetails(String user_id, String gender, String phone_number, String gmail, String address, String password, String link_image) {
        try {

            conn = BaseDAO.getConnection();
            PreparedStatement stmt = conn.prepareStatement("INSERT INTO [dbo].[User_details]\n"
                    + "           ([user_id]\n"
                    + "           ,[gender]\n"
                    + "           ,[phone_number]\n"
                    + "           ,[gmail]\n"
                    + "           ,[address]\n"
                    + "           ,[password]\n"
                    + "           ,[link_image]\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?,?)");
            stmt.setString(1, user_id);
            stmt.setString(3, gender);
            stmt.setString(4, phone_number);
            stmt.setString(2, gmail);
            stmt.setString(6, address);
            stmt.setString(7, password);
            stmt.setString(5, link_image);
            stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("insertAccount" + e.getMessage());
        }
    }
      
      
      
      
    
}
