/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import model.Bookings;
import model.Game;
import model.Game_Type;

/**
 *
 * @author Nguyen Van Ky
 */
public class BookingDAO {

    BaseDAO baseDAO = new BaseDAO();
    Connection conn = null;
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    LocalDateTime now = LocalDateTime.now();
    String getTime = (dtf.format(now));

    public static void main(String[] args) throws SQLException {
        BookingDAO bdao = new BookingDAO();

        System.out.println(bdao.getTime);
    }

    // account
    public void addBooking(Bookings c) throws SQLException {
        try {

            // connnect to database 'testdb'
            conn = baseDAO.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("INSERT INTO Booking VALUES (?,?,?,?,?,?,?)");
            stmt.setString(1, c.getUser_id());
            stmt.setString(2, c.getPlayer_id());
            stmt.setString(3, c.getTotal_hour());
            stmt.setString(4, c.getGame_id());
            stmt.setDouble(5, c.getTotal_price());
            stmt.setString(6, getTime);
            stmt.setString(7, c.getMessage());

            // get data from table
            stmt.executeUpdate();
            // show data

            // close connection
        } catch (Exception ex) {
            System.out.println("addBooking " + ex.getMessage());
        }

    }

    public void updateBooking(Bookings c) throws SQLException {
        try {

            // connnect to database 'testdb'
            conn = baseDAO.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("UPDATE Bookings set user_id = ?,player_id=?,total_hour=?, total_price=? where date_booking=?");
            stmt.setString(1, c.getUser_id());
            stmt.setString(2, c.getPlayer_id());
            stmt.setString(3, c.getTotal_hour());
            stmt.setString(4, c.getGame_id());
            stmt.setDouble(5, c.getTotal_price());
            stmt.setString(6, c.getDate_booking());

            // get data from table
            stmt.executeUpdate();
            // show data

            // close connection
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

    public void deleteBooking(String booking_id) throws SQLException {
        try {

            // connnect to database 'testdb'
            conn = baseDAO.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("Delete from Bookings where  booking_id=?");
            stmt.setString(1, booking_id);

            // get data from table
            stmt.executeUpdate();
            // show data

            // close connection
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

    public List<Bookings> bookingList(String user_id) throws SQLException {
        List<Bookings> list = null;
        try {

            // connnect to database 'testdb'
            conn = baseDAO.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("Select * from Booking  where user_id = ?");
            stmt.setString(1, user_id);

            list = new ArrayList<>();
            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data
            while (rs.next()) {
//                Bookings bookings = new Bookings(rs.getString("user_id"), rs.getString("player_id"), rs.getNString("total_hour"), rs.getString("game_id"),rs.getDouble("total_price"),rs.getString("date_booking"),rs.getString("message"));
                Bookings bookings = new Bookings(rs.getString("user_id"), rs.getString("player_id"), rs.getNString("total_hour"), rs.getString("game_id"),rs.getDouble("total_price"),rs.getString("date_booking"),rs.getString("message"), rs.getString("booking_id"));

                list.add(bookings);
            }
            // close connection
        } catch (Exception ex) {
            System.out.println("bookingList" + ex.getMessage());;
        }
        return list;
    }
    
     public ArrayList<Bookings> getListBooking(int acc_id) throws SQLException {
        ArrayList<Bookings> bookings1 = new ArrayList<>();
        try {

            // connnect to database 'testdb'
            conn = baseDAO.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("Select * from Bookings  where acc_id  = ?");
            stmt.setInt(1, acc_id);

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data
            while (rs.next()) {
                Bookings book = new Bookings(rs.getString("user_id"), rs.getString("player_id"), rs.getNString("total_hour"), rs.getString("game_id"),rs.getDouble("total_price"),rs.getString("date_booking"),rs.getString("message"));
                bookings1.add(book);
            }
            return bookings1;
            // close connection
        } catch (Exception ex) {
            System.out.println("getListBooking" + ex.getMessage());;
        }
        return null;
    }

    public Bookings getBookingById(String id) throws SQLException {
        Bookings b = null;
        try {
            // connnect to database 'testdb'
            conn = baseDAO.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("Select * from Booking  where booking_id  = ?");
            stmt.setString(1, id);

            // get data from table
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                b = new Bookings(rs.getString("user_id"), rs.getString("player_id"), rs.getNString("total_hour"), rs.getString("game_id"),rs.getDouble("total_price"),rs.getString("date_booking"),rs.getString("message"), rs.getString("booking_id"));
                return b;
            }

        } catch (Exception e) {
        }finally{
            if (conn!=null){
                conn.close();
            }
        }
        return b;
    }

    public int getLocationIdByBookingId(int booking_id) {
        int location_Id;
        try {
            conn = baseDAO.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("Select location_id from Bookings  where booking_id  = ?");
            stmt.setInt(1, booking_id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                location_Id = rs.getInt("location_id");
                return location_Id;
            }
        } catch (Exception e) {
        }
        return 0;
    }

}
