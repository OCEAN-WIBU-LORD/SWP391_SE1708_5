/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Game_Type;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Acer
 */
public class Game_TypeDAO {
    
    public List<Game_Type> getAllCategory() throws SQLException {
        List<Game_Type> list = null;
        Connection conn = null;
        try {
            BaseDAO db = new BaseDAO();
            // connnect to database 'testdb'
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM Game_Type");
   
            // get data from table
            ResultSet rs = stmt.executeQuery();
            // show data
            list = new ArrayList<>();
            while (rs.next()) {
                Game_Type a =  new Game_Type(rs.getString("game_id"), rs.getString("game_type"));
                list.add(a);

            }
            // close connection

        } catch (Exception ex) {
            ex.printStackTrace();
        } 
        return list;
    }

    public List<Game_Type> getAllGameType() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<Game_Type> getAllGame_Type() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
     
}
