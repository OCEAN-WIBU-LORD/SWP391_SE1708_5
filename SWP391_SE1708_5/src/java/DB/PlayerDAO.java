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
            PreparedStatement stmt = conn.prepareStatement("select * from Player m order by m.num_of_star desc limit 5");

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
                        rs.getString("link_image"));
                list.add(a);
            }
            // close connection

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public ArrayList<Player> searchPlayer(String search) {
       ArrayList<Player> movie = new ArrayList<Player>();
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
                        rs.getInt("movie_id"),
                        rs.getNString("title"),
                        rs.getString("description"),
                        String.valueOf(rs.getInt("time_show")),
                        rs.getNString("subtitle"),
                        rs.getString("poster"),
                        rs.getString("request"),
                        rs.getFloat("rated"),
                        rs.getInt("viewers"),
                        String.valueOf(rs.getDate("premiere")),
                        rs.getString("country"),
                        rs.getString("directed_by"),
                        String.valueOf(rs.getBoolean("status_movie")));
                movie.add(a);
            }
                return movie;
        } catch (Exception e) {
            System.out.println("searchMovie" + e.getMessage());
        }
        return null;

    }
    
}
