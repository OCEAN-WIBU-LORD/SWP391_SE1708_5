/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import junit.framework.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import model.Message;
import model.Game;
import model.Game_Type;

/**
 *
 * @author Nguyen Van Ky
 */
public class MessageDAO {

    BaseDAO baseDAO = new BaseDAO();
    Connection conn = null;
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    LocalDateTime now = LocalDateTime.now();
    String getTime = (dtf.format(now));

    public static void main(String[] args) throws SQLException {
        MessageDAO bdao = new MessageDAO();

        System.out.println(bdao.getTime);
    }

    // account
    public void addMessage(Message c) throws SQLException {
        try {

            // connnect to database 'testdb'
            conn = baseDAO.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("INSERT INTO Message VALUES (?,?,?,?,?,?)");
            stmt.setInt(1, c.getMessageid());
            stmt.setString(2, c.getUser_id());
            stmt.setString(3, c.getPlayer_id());
            stmt.setString(4, getTime);
            stmt.setString(5, c.getMessage());
            stmt.setString(6, c.getStatus());

            // get data from table
            stmt.executeUpdate();
            // show data

            // close connection
        } catch (Exception ex) {
            System.out.println("addMessage " + ex.getMessage());
        }finally{
            conn.close();
        }

    }

    public void updateMessage(Message c) throws SQLException {
        try {

            // connnect to database 'testdb'
            conn = baseDAO.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("UPDATE Message set user_id = ?,player_id=?,total_hour=?, total_price=? where date_booking=?");
            stmt.setString(1, c.getUser_id());
            stmt.setString(2, c.getPlayer_id());
            stmt.setString(3, getTime);
            stmt.setString(4, c.getMessage());

            // get data from table
            stmt.executeUpdate();
            // show data

            // close connection
        } catch (Exception ex) {
            ex.printStackTrace();
        }finally{
            conn.close();
        }

    }

    public void deleteMessage(String booking_id) throws SQLException {
        try {

            // connnect to database 'testdb'
            conn = baseDAO.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("Delete from Message where  booking_id=?");
            stmt.setString(1, booking_id);

            // get data from table
            stmt.executeUpdate();
            // show data

            // close connection
        } catch (Exception ex) {
            ex.printStackTrace();
        }finally{
            conn.close();
        }

    }

    public List<Message> messageList(String user_id, String player_id) throws SQLException {
        List<Message> list = null;
        try {

            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("Select * from Message  where user_id = ? and player_id = ? order by date_time asc");
            stmt.setString(1, user_id);
            stmt.setString(2, player_id);

            list = new ArrayList<>();
            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data
            while (rs.next()) {
                Message message = new Message(rs.getInt("messageid"), rs.getString("user_id"), rs.getNString("player_id"), rs.getString("date_time"), rs.getNString("message"), rs.getString("status"));
                list.add(message);
            }
            // close connection
        } catch (Exception ex) {
            System.out.println("messageList" + ex.getMessage());;
        }finally{
            conn.close();
        }
        return list;
    }

    public ArrayList<Message> getListMessage(int acc_id) throws SQLException {
        ArrayList<Message> bookings1 = new ArrayList<>();
        try {

            // connnect to database 'testdb'
            conn = baseDAO.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("Select * from Message  where user_id  = ?");
            stmt.setInt(1, acc_id);

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data
            while (rs.next()) {
                Message message = new Message(rs.getInt("messageid"), rs.getString("user_id"), rs.getNString("player_id"), rs.getString("date_time"), rs.getString("message"), rs.getString("status"));
                bookings1.add(message);
            }
            return bookings1;
            // close connection
        } catch (Exception ex) {
            System.out.println("getListMessage" + ex.getMessage());;
        }finally{
            conn.close();
        }
        return null;
    }

    public int getMessageIdByAccId(int acc_Id2) throws SQLException {
        int MessageId;
        try {
            // connnect to database 'testdb'
            conn = baseDAO.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("Select messageid from Message  where user_id  = ?");
            stmt.setInt(1, acc_Id2);

            // get data from table
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                MessageId = rs.getInt("user_id");
                return MessageId;
            }

        } catch (Exception e) {
        }finally{
            conn.close();
        }
        return 0;
    }

    public int getLocationIdByMessageId(int booking_id) throws SQLException {
        int location_Id;
        try {
            conn = baseDAO.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("Select location_id from Message  where messageid  = ?");
            stmt.setInt(1, booking_id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                location_Id = rs.getInt("location_id");
                return location_Id;
            }
        } catch (Exception e) {
        }finally{
            conn.close();
        }
        return 0;
    }

    public List<Message> messagePlayer(String user_id, String player_id) throws SQLException {
        List<Message> list = null;
        try {

            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("SELECT DISTINCT player_id\n"
                    + "FROM Message\n"
                    + "WHERE user_id = ?\n"
                    + "GROUP BY player_id;");
            stmt.setString(1, user_id);

            list = new ArrayList<>();
            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data
            while (rs.next()) {
                Message message = new Message(rs.getInt("messageid"), rs.getString("user_id"), rs.getNString("player_id"), rs.getString("date_time"), rs.getNString("message"), rs.getString("status"));
                list.add(message);
            }
            // close connection
        } catch (Exception ex) {
            System.out.println("messageList" + ex.getMessage());;
        }finally{
            conn.close();
        }
        return list;
    }

    public List<String> messagePlayer1(String user_id) throws SQLException {
        List<String> list = null;
        try {

            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("SELECT DISTINCT player_id\n"
                    + "FROM Message\n"
                    + "WHERE user_id = ?\n"
                    + "GROUP BY player_id;");
            stmt.setString(1, user_id);

            list = new ArrayList<>();
            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data
            while (rs.next()) {
                String player_id = rs.getString("player_id");
                list.add(player_id);
            }
            // close connection
        } catch (Exception ex) {
            System.out.println("messageList" + ex.getMessage());;
        } finally{
            conn.close();
        }
        return list;
    }

    public void deleteMessage(String user_id, String player_id) throws SQLException {
        try {

            // connnect to database 'testdb'
            conn = baseDAO.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("Delete from Message where  user_id = ? and player_id = ?");
            stmt.setString(1, user_id);
            stmt.setString(2, player_id);

            // get data from table
            stmt.executeUpdate();
            // show data

            // close connection
        } catch (Exception ex) {
           System.out.println("deleteMessage" + ex.getMessage());;
        }finally{
            conn.close();
        }
    }

}
