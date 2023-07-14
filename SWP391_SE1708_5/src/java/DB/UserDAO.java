/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import junit.framework.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Driver;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Player;
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

    public void insertUser(String user_id, String full_name) throws SQLException {
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
        }finally{
            conn.close();
        }
    }

    public String getUserName(String username) throws SQLException {
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

    public String getTotalHour(String user_id) throws SQLException {
        String u = null;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // create statement
            PreparedStatement stmt = conn.prepareStatement("select SUM(total_hour) as total_hour_booking from booking where user_id = ?");
            stmt.setString(1, user_id);

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data
            while (rs.next()) {
                u = String.valueOf(rs.getString("total_hour_booking"));
            }
            // close connection

        } catch (Exception ex) {
            System.out.println("getTotalHour" + ex.getMessage());
        } finally {
            conn.close();
        }
        return u;
    }

    public String getTotalMoneySpend(String user_id) throws SQLException {
        String u = null;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // create statement
            PreparedStatement stmt = conn.prepareStatement("select SUM(total_price) as total_money_booking from booking where user_id = ?");
            stmt.setString(1, user_id);

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data
            while (rs.next()) {
                u = String.valueOf(rs.getString("total_money_booking"));
            }
            // close connection

        } catch (Exception ex) {
            System.out.println("getTotalBooking" + ex.getMessage());
        } finally {
            conn.close();
        }
        return u;
    }

    public List<User_Details> getAllUser() throws SQLException {
        List<User_Details> list = null;
        Connection conn = null;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("select * from User_details limit 100");

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data
            list = new ArrayList<>();
            while (rs.next()) {
                User_Details a = null;
                a = new User_Details(
                        rs.getString("user_id"),
                        rs.getNString("gender"),
                        rs.getString("phone_number"),
                        rs.getString("gmail"),
                        rs.getString("address"),
                        rs.getString("password"),
                        rs.getString("link_image"),
                        rs.getDouble("balance"),
                        rs.getString("description"));
                list.add(a);
            }
            // close connection

        } catch (Exception ex) {
            System.out.println("getAllPlayer" + ex.getMessage());
        } finally {
            conn.close();
        }
        return list;
    }

}
