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
import model.User_Details;

/**
 *
 * @author Acer
 */
public class PlayerDAO {

    public List<Player> getTop5GoodPlayer() throws SQLException {
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
        } finally {
            conn.close();
        }
        return list;
    }

    

    public List<Player> getTop3BestBookingPlayer() throws SQLException {
        List<Player> list = null;
        Connection conn = null;

        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("SELECT p.player_id, p.player_name, p.phone_number\n"
                    + "FROM player p\n"
                    + "INNER JOIN (\n"
                    + "  SELECT player_id, COUNT(*) AS booking_count\n"
                    + "  FROM booking\n"
                    + "  GROUP BY player_id\n"
                    + "  ORDER BY booking_count DESC\n"
                    + "  LIMIT 3\n"
                    + ") b ON p.player_id = b.player_id;");

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
        } finally {
            conn.close();
        }
        return list;
    }

    public List<Player> getTop3BestIncomePlayer() throws SQLException {
        List<Player> list = null;
        Connection conn = null;

        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("SELECT p.player_id, p.player_name, b.total_money_booking, p.link_image\n"
                    + "FROM player p\n"
                    + "INNER JOIN (\n"
                    + "  SELECT player_id, SUM(total_price) AS total_money_booking\n"
                    + "  FROM booking\n"
                    + "  GROUP BY player_id\n"
                    + "  ORDER BY total_money_booking DESC\n"
                    + "  LIMIT 3\n"
                    + ") b ON p.player_id = b.player_id;");

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
        } finally {
            conn.close();
        }
        return list;
    }

    public List<Player> getTop5BestBookingPlayer() throws SQLException {
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
        } finally {
            conn.close();
        }
        return list;
    }

    public ArrayList<Player> searchPlayer(String search) throws SQLException {
        ArrayList<Player> player = null;
        Connection conn = null;
        try {
            String search1 = "%" + search + "%";
            BaseDAO db = new BaseDAO();
            conn = db.getConnection();
            PreparedStatement stmt = conn.prepareStatement("select * from Player where player_id like ?");
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
        } finally {
            conn.close();
        }
        return null;

    }

    public ArrayList<Player> searchPlayer1(String search) throws SQLException {
        ArrayList<Player> player = new ArrayList<Player>();
        Connection conn = null;
        try {
            String search1 = "%" + search + "%";
            BaseDAO db = new BaseDAO();
            conn = db.getConnection();
            PreparedStatement stmt = conn.prepareStatement("select * from Player where player_name like ? or player_id LIKE ?");
            stmt.setString(1, String.valueOf(search1));
            stmt.setString(2, String.valueOf(search1));
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
            System.out.println("searchPlayer1" + e.getMessage());
        } finally {
            conn.close();
        }
        return null;

    }

    public ArrayList<Player> searchPlayerPriceRange(String search, String pricefrom, String priceto) throws SQLException {
        ArrayList<Player> player = new ArrayList<Player>();
        Connection conn = null;
        try {
            String search1 = "%" + search + "%";
            BaseDAO db = new BaseDAO();
            conn = db.getConnection();
            PreparedStatement stmt = conn.prepareStatement("select * from Player where player_name like ? or player_id LIKE ? having income between ? and ?");
            stmt.setString(1, String.valueOf(search1));
            stmt.setString(2, String.valueOf(search1));
            stmt.setString(3, String.valueOf(pricefrom));
            stmt.setString(4, String.valueOf(priceto));
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
            System.out.println("searchPlayer1" + e.getMessage());
        } finally {
            conn.close();
        }
        return null;

    }

    public ArrayList<Player> searchPlayerBestBooking(String search) throws SQLException {
        ArrayList<Player> player = new ArrayList<Player>();
        Connection conn = null;
        try {
            String search1 = "%" + search + "%";
            BaseDAO db = new BaseDAO();
            conn = db.getConnection();
            PreparedStatement stmt = conn.prepareStatement("SELECT p.player_id, p.player_name, p.gender,p.phone_number,p.num_of_star,p.password,p.link_image,p.income,p.status_player,p.description, COUNT(b.player_id) AS booking_count\n"
                    + "FROM Player p\n"
                    + "JOIN Booking b ON p.player_id = b.player_id\n"
                    + "where p.player_name like ? or p.player_id LIKE ?\n"
                    + "GROUP BY p.player_id, p.player_name, p.gender,p.phone_number,p.num_of_star,p.password,p.link_image,p.income,p.status_player,p.description\n"
                    + "ORDER BY booking_count DESC;");
            stmt.setString(1, String.valueOf(search1));
            stmt.setString(2, String.valueOf(search1));
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
            System.out.println("searchPlayerBestBooking" + e.getMessage());
        } finally {
            conn.close();
        }
        return null;

    }
    public ArrayList<Player> getTop5HighIncomePlayer() throws SQLException {
        ArrayList<Player> player = new ArrayList<Player>();
        Connection conn = null;
        try {
            
            BaseDAO db = new BaseDAO();
            conn = db.getConnection();
            PreparedStatement stmt = conn.prepareStatement("SELECT p.player_id, p.player_name, p.gender,p.phone_number,p.num_of_star,p.password,p.link_image,p.income,p.status_player,p.description, sum(b.total_price) AS moneyreceived\n"
                    + "FROM Player p\n"
                    + "JOIN Booking b ON p.player_id = b.player_id\n"
                    + "GROUP BY p.player_id, p.player_name, p.gender,p.phone_number,p.num_of_star,p.password,p.link_image,p.income,p.status_player,p.description\n"
                    + "ORDER BY moneyreceived DESC limit 5;");
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
            System.out.println("getTop5HighIncomePlayer" + e.getMessage());
        } finally {
            conn.close();
        }
        return null;

    }

    public ArrayList<Player> searchPlayerBestIncome(String search) throws SQLException {
        ArrayList<Player> player = new ArrayList<Player>();
        Connection conn = null;
        try {
            String search1 = "%" + search + "%";
            BaseDAO db = new BaseDAO();
            conn = db.getConnection();
            PreparedStatement stmt = conn.prepareStatement("SELECT p.player_id, p.player_name, p.gender,p.phone_number,p.num_of_star,p.password,p.link_image,p.income,p.status_player,p.description, sum(b.total_price) AS moneyreceived\n"
                    + "FROM Player p\n"
                    + "JOIN Booking b ON p.player_id = b.player_id\n"
                    + "where p.player_name like ? or p.player_id LIKE ?\n "
                    + "GROUP BY p.player_id, p.player_name, p.gender,p.phone_number,p.num_of_star,p.password,p.link_image,p.income,p.status_player,p.description\n"
                    + "ORDER BY moneyreceived DESC;");
            stmt.setString(1, String.valueOf(search1));
            stmt.setString(2, String.valueOf(search1));
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
            System.out.println("searchPlayerBestBooking" + e.getMessage());
        } finally {
            conn.close();
        }
        return null;

    }

    public Player getPlayerByID(String player_id) throws SQLException {
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
        } finally {
            conn.close();
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
        } finally {
            conn.close();
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
        } finally {
            conn.close();
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
        } finally {
            conn.close();
        }

    }

    public Player getPlayerDetails(String player_id, String password) throws SQLException {
        Player u = null;
        Connection conn = null;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM Player where player_id = ? and password = ?");
            stmt.setString(1, player_id);
            stmt.setString(2, password);

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data

            while (rs.next()) {
                u = new Player(
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
            System.out.println("getPlayerDetails" + ex.getMessage());
        } finally {
            conn.close();
        }
        return u;
    }

    public String getPlayerNameById(String player_id) throws SQLException {
        String name;
        Connection conn = null;
        try {
            BaseDAO db = new BaseDAO();
            conn = db.getConnection();
            PreparedStatement stmt = conn.prepareStatement("select player_name from Player where player_id = ?");
            stmt.setString(1, player_id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                name = String.valueOf(rs.getString("player_name"));
                return name;
            }
        } catch (Exception e) {
        } finally {
            conn.close();
        }
        return null;
    }

    public Double getIncomePlayerById(String player_id) throws SQLException {
        Double money;
        Connection conn = null;
        try {
            BaseDAO db = new BaseDAO();
            conn = db.getConnection();
            PreparedStatement stmt = conn.prepareStatement("select income from Player where player_id = ?");
            stmt.setString(1, player_id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                money = rs.getDouble("income");
                return money;
            }
        } catch (Exception ex) {
            System.out.println("getIncomePlayerById" + ex.getMessage());
        } finally {
            conn.close();
        }
        return 0.0;
    }

    public String getTotalMoneySpend(String player_id) throws SQLException {
        String u = null;
        Connection conn = null;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // create statement
            PreparedStatement stmt = conn.prepareStatement("select SUM(total_price) as total_money_booking from booking where player_id = ?");
            stmt.setString(1, player_id);

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

    public String getTotalHour(String player_id) throws SQLException {
        String u = null;
        Connection conn = null;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // create statement
            PreparedStatement stmt = conn.prepareStatement("select SUM(total_hour) as total_hour_booking from booking where player_id = ?");
            stmt.setString(1, player_id);

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
}
