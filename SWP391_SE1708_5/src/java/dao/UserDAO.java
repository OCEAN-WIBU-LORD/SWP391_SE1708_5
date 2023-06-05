package dao;

import dbconnect.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;
import model.User_Details;

public class UserDAO {

    Connection conn = null;

    public boolean checkUser(String userID) throws SQLException {
        try {
            conn = DBContext.connectMySQLDatabase();
            String query = "select * from User where user_id = '?'";
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
            String query = "select * from User where user_id = '?'";
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

    public User_Details getUserDetails(String userID) throws SQLException {
        try {
            conn = DBContext.connectMySQLDatabase();
            String query = "select * from User_Details where user_id = '?'";
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
            String query = "UPDATE User_Details "
                    + "JOIN User ON User_Details.user_id = User.user_id "
                    + "SET User_Details.gender = '?', "
                    + "User_Details.phone_number = '?', "
                    + "User_Details.gmail = '?', "
                    + "User_Details.address = '?', "
                    + "User_Details.link_image = '?', "
                    + "User.full_name = '?' "
                    + "WHERE User_Details.user_id = '?'";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, userDetails.getGender());
            st.setString(2, userDetails.getPhone_number());
            st.setString(3, userDetails.getEmail());
            st.setString(4, userDetails.getAddress());
            st.setString(5, userDetails.getLink_image());
            st.setString(6, userDetails.getUser_id());
            st.setString(7, userFullName.getFull_name());
            st.setString(8, userFullName.getUser_id());
            st.executeUpdate();
        } catch (SQLException e) {
        }
        conn.close();
    }

    public User_Details createNewUserDetails(String userId, String email, String phoneNumber, String gender, String address, String linkImage) throws SQLException {
        try {
            conn = DBContext.connectMySQLDatabase();
            String query = "INSERT INTO User_Details ("
                    + "gender,"
                    + "phone_number,"
                    + "email,"
                    + "address,"
                    + "link_image)"
                    + "VALUES ('?', '?', '?', '?', '?')";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, gender);
            st.setString(2, phoneNumber);
            st.setString(3, email);
            st.setString(4, address);
            st.setString(5, linkImage);
            st.executeUpdate();

            query = "SELECT * FROM User_Details WHERE user_id = '?'";
            st = conn.prepareStatement(query);
            st.setString(1, userId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String newGender = rs.getString("gender");
                String newPhoneNumber = rs.getString("phone_number");
                String newEmail = rs.getString("email");
                String newAddress = rs.getString("address");
                String newLinkImage = rs.getString("link_image");
                return new User_Details(newGender, newPhoneNumber, newEmail, newAddress, newLinkImage);
            }
        } catch (SQLException e) {
        }
        conn.close();
        return null;
    }
}
