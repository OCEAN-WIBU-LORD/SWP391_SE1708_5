/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import dbconnect.DBContext;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Driver;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Account;

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
    
    public boolean checkUser(String userID) throws SQLException {
        try {
            conn = DBContext.connectMySQLDatabase();
            String query = "select * from User where user_id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, userID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
        }
        conn.close();
        return false;
    }

    public User checkUserExist(String userID) throws SQLException {
        try {
            conn = DBContext.connectMySQLDatabase();
            String query = "select * from User where user_id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, userID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new User(
                        rs.getString(1),
                        rs.getString(2));
            }
        } catch (SQLException e) {
        }
        conn.close();
        return null;
    }

    public User_Details checkUserDetailExist(String userID) throws SQLException {
        try {
            conn = DBContext.connectMySQLDatabase();
            String query = "select * from User_Details where user_id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, userID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new User_Details(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
            }
        } catch (SQLException e) {
        }
        conn.close();
        return null;
    }

    public void updateUserprofile(User_Details userDetails, User userFullName) throws SQLException {
        try {
            conn = DBContext.connectMySQLDatabase();
            String query = "update User_Details set"
                    + "gender = ?, "
                    + "phone_number = ?, "
                    + "email = ?, "
                    + "address = ?, "
                    + "password = ?, "
                    + "link_image) = ?"
                    + "where user_id = ?"
                    + "union "
                    + "update User set full_name = ?"
                    + "where user_id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, userDetails.getGender());
            st.setString(2, userDetails.getPhone_number());
            st.setString(3, userDetails.getEmail());
            st.setString(4, userDetails.getAddress());
            st.setString(5, userDetails.getPassword());
            st.setString(6, userDetails.getLink_image());
            st.setString(7, userDetails.getUser_id());
            st.setString(8, userFullName.getFull_name());
            st.setString(9, userFullName.getUser_id());
            st.executeUpdate();
        } catch (SQLException e) {
        }
        conn.close();
    }

}
