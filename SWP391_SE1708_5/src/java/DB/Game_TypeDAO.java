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
import java.util.logging.Level;
import java.util.logging.Logger;

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

    public List<Game_Type> getAllGameType() throws SQLException {
        List<Game_Type> list = null;
        Connection conn = null;
        try {
            BaseDAO db = new BaseDAO();
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM Game_Type");
   
            ResultSet rs = stmt.executeQuery();
            list = new ArrayList<>();
            while (rs.next()) {
                list.add( new Game_Type(rs.getString("game_id"), rs.getString("game_type")));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally{
            conn.close();
        }
        return list;    
    }

    public boolean checkGameType (String name){
        boolean result = false;
        Connection conn = null;
        try {
            BaseDAO db = new BaseDAO();
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM Game_Type where game_type = ?");
            stmt.setString(1, name);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                result = true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally{
            try {
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(Game_TypeDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return result;   
    }
    
    public void addNewGameType(String name) throws SQLException{
        Connection cnn=null;
        try {
            String str = "insert into game_type values (',',?)";
            BaseDAO db = new BaseDAO();
             cnn = db.getConnection();
            PreparedStatement pstm = cnn.prepareStatement(str);
            pstm.setString(1, name);
            pstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("DeleteGame:" + e.getMessage());
        } finally{
            cnn.close();
        }
    }
     
}
