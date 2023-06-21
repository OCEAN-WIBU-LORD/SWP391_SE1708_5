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
import java.util.ArrayList;
import java.util.List;
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
    
    public String getRole(String acc_id) throws SQLException {
        String role = "";
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement(
                    "select r.role_name " +
                    "from user_details ud left join user_role ur on ud.user_id = ur.user_id " +
                    "left join role r on ur.role_id = r.role_id " +
                    "where ud.user_id = ?"
            );
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
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM User_Details where user_id like ? and password = ?");
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
            PreparedStatement stmt = conn.prepareStatement("insert into user_details (user_id,gender,phone_number,gmail,address,password,link_image) values (?,?,?,?,?,?,?)");
            stmt.setString(1, user_id);
            stmt.setString(2, gender);
            stmt.setString(3, phone_number);
            stmt.setString(4, gmail);
            stmt.setString(5, address);
            stmt.setString(6, password);
            stmt.setString(7, link_image);
            stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("insertUserDetails" + e.getMessage());
        }
    }

    public boolean checkUserPhoneNumber(String user_id, String phone_number) throws SQLException {
        UserDAO a = null;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM User_Details where user_id = ? and phone_number = ?");
            stmt.setString(1, user_id);
            stmt.setString(2, phone_number);

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

    public void changePassword(String user_id, String password) {
        try {

            conn = BaseDAO.getConnection();
                PreparedStatement stmt = conn.prepareStatement("update User_Details set password = ? where user_id = ?");
            stmt.setString(1, password);
            stmt.setString(2, user_id);
            stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("changePassword" + e.getMessage());
        }
    }
    
    public List<User_Details> getAllUserDetails() throws SQLException {
        List<User_Details> list = null;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("select * from User_Details");

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data
            list = new ArrayList<>();
            while (rs.next()) {
                User_Details a = null;
                a = new User_Details(rs.getString("user_id"), rs.getString("gender"), rs.getString("phone_number"), rs.getNString("gmail"), rs.getNString("address"), rs.getString("password"), rs.getString("link_image"));
                list.add(a);
            }
            // close connection

        } catch (Exception ex) {
            System.out.println("getAllMovie" + ex.getMessage());
        }
        return list;
    }


    public void updateAccount(User_Details a) {
        try {

            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            PreparedStatement stmt = conn.prepareStatement("Update User_Details set gender =?,phone_number=?,gmail=?,address=?,password=?,link_image=? WHERE user_id= ?");
            stmt.setString(1, a.getGender());
            stmt.setString(2, a.getPhone_number());
            stmt.setString(3, a.getEmail());
            stmt.setString(4, a.getAddress());
            stmt.setString(5, a.getPassword());
            stmt.setString(6, a.getLink_image());
            stmt.setString(7, a.getUser_id());
            stmt.executeUpdate();
        } catch (Exception ex) {
             System.out.println("updateAccount" + ex.getMessage());
        }
    }  
      
      
      
    
}
