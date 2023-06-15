/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Player;
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
public class PlayerDAO {

    public List<Player> getTop5GoodPlayer() {
        List<Player> list = null;
        Connection conn = null;

        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("select * from Player m order by m.num_of_star desc limit 20");

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data
            list = new ArrayList<>();
            while (rs.next()) {
                Player a = null;
                a = new Player(
                        rs.getString("player_id"),
                        rs.getNString("player_name"),
                        rs.getString("gender"),
                        rs.getString("phone_number"),
                        rs.getInt("num_of_star"),
                        rs.getString("password"),
                        rs.getString("link_image"),
                        rs.getDouble("income"),
                        rs.getString("status_player"),
                        rs.getString("description"));
                list.add(a);
            }
            // close connection

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public List<Player> getTop5BestBookingPlayer() {
        List<Player> list = null;
        Connection conn = null;

        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("select * from Player m order by m.income desc limit 20; ");

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data
            list = new ArrayList<>();
            while (rs.next()) {
                Player a = null;
                a = new Player(
                        rs.getString("player_id"),
                        rs.getNString("player_name"),
                        rs.getString("gender"),
                        rs.getString("phone_number"),
                        rs.getInt("num_of_star"),
                        rs.getString("password"),
                        rs.getString("link_image"),
                        rs.getDouble("income"),
                        rs.getString("status_player"),
                        rs.getString("description"));
                list.add(a);
            }
            // close connection

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public ArrayList<Player> searchPlayer(String search) {
        ArrayList<Player> player = new ArrayList<Player>();
        Connection conn = null;
        try {
            String search1 = "%" + search + "%";
            BaseDAO db = new BaseDAO();
            conn = db.getConnection();
            PreparedStatement stmt = conn.prepareStatement("select * from Movies where title like ?");
            stmt.setString(1, String.valueOf(search1));
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Player a = null;
                a = new Player(
                        rs.getString("player_id"),
                        rs.getNString("player_name"),
                        rs.getString("gender"),
                        rs.getString("phone_number"),
                        rs.getInt("num_of_star"),
                        rs.getString("password"),
                        rs.getString("link_image"),
                        rs.getDouble("income"),
                        rs.getString("status_player"),
                        rs.getString("description"));
                player.add(a);
            }
            return player;
        } catch (Exception e) {
            System.out.println("searchPlayer" + e.getMessage());
        }
        return null;

    }

    public Player getPlayerByID(String player_id) {
        Player a = null;
        Connection conn = null;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("select * from Player where player_id =  ?");
            stmt.setString(1, player_id);

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data

            while (rs.next()) {
                a = new Player(
                        rs.getString("player_id"),
                        rs.getNString("player_name"),
                        rs.getString("gender"),
                        rs.getString("phone_number"),
                        rs.getInt("num_of_star"),
                        rs.getString("password"),
                        rs.getString("link_image"),
                        rs.getDouble("income"),
                        rs.getString("status_player"),
                        rs.getString("description"));
            }
            // close connection

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return a;
    }

    public List<Player> getAllPlayer() throws SQLException {
        List<Player> list = null;
        Connection conn = null;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("select * from Player limit 100");

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data
            list = new ArrayList<>();
            while (rs.next()) {
                Player a = null;
                a = new Player(
                        rs.getString("player_id"),
                        rs.getNString("player_name"),
                        rs.getString("gender"),
                        rs.getString("phone_number"),
                        rs.getInt("num_of_star"),
                        rs.getString("password"),
                        rs.getString("link_image"),
                        rs.getDouble("income"),
                        rs.getString("status_player"),
                        rs.getString("description"));
                list.add(a);
            }
            // close connection

        } catch (Exception ex) {
            System.out.println("getAllPlayer" + ex.getMessage());
        }
        return list;
    }

    public void addPlayer(Player player) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void updatePlayer(Player c) throws SQLException {
        Connection conn = null;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement(" update Player set player_name = ?, description = ?,gender=?,phone_number=?,num_of_star=?,password=?,link_image=?,income=?,status_player=?   where player_id =? ");

            stmt.setString(1, c.getPlayer_name());
            stmt.setNString(2, c.getDescription());
            stmt.setString(3, c.getGender());
            stmt.setNString(4, c.getPhone_number());
            stmt.setInt(5, c.getNum_of_star());
            stmt.setNString(6, c.getPassword());
            stmt.setString(7, c.getLink_image());
            stmt.setDouble(8, c.getIncome());
            stmt.setString(9, c.getStatus_player());
            stmt.setString(10, c.getPlayer_id());
            // get data from table
            stmt.executeUpdate();
            // show data

            // close connection
        } catch (Exception ex) {
            System.out.println("updatePlayer" + ex.getMessage());
        }

    }

    public void deletePlayer(String player_id) throws SQLException {
        Connection conn = null;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement(" delete * from Player where player_id =? ");

            stmt.setString(1, player_id);
            // get data from table
            stmt.executeUpdate();
            // show data

            // close connection
        } catch (Exception ex) {
            System.out.println("deletePlayer" + ex.getMessage());
        }

    }

}
