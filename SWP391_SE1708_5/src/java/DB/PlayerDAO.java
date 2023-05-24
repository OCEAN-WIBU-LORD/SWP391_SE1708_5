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
            PreparedStatement stmt = conn.prepareStatement("select top(5) * from Movies m order by m.viewers desc");

            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data
            list = new ArrayList<>();
            while (rs.next()) {
                Movie a = null;
                a = new Movie(
                        rs.getInt("movie_id"),
                        rs.getNString("title"),
                        rs.getString("description"),
                        rs.getString("time_show"),
                        rs.getNString("subtitle"),
                        rs.getString("poster"),
                        rs.getString("request"),
                        rs.getInt("rated"),
                        rs.getInt("viewers"),
                        rs.getString("premiere"),
                        rs.getString("country"),
                        rs.getString("directed_by"),
                        rs.getString("status_movie"));
                list.add(a);
            }
            // close connection

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return list;
    }
    
}
