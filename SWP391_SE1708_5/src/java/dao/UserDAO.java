package dao;

import dbconnect.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.User;
import model.User_Details;

public class UserDAO {

    Connection conn = null;

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
