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
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM Game_Type where status =1");
   
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
            int gameId = getAllGameType().size()+1;
            String str = "insert into game_type values (?,?,1)";
            BaseDAO db = new BaseDAO();
             cnn = db.getConnection();
            PreparedStatement pstm = cnn.prepareStatement(str);
            pstm.setString(1, String.valueOf(gameId));
            pstm.setString(2, name);
            pstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("DeleteGame:" + e.getMessage());
        } finally{
            cnn.close();
        }
    }
    
    public void deleteGameType (String name) throws SQLException{
        Connection cnn=null;
        try {
            String str = "update game_type set status=0 where game_type = ?";
            BaseDAO db = new BaseDAO();
             cnn = db.getConnection();
            PreparedStatement pstm = cnn.prepareStatement(str);
            pstm.setString(1, name);
            pstm.executeUpdate();
            GameDAO gd = new GameDAO();
            gd.deleteGameType(name);
        } catch (Exception e) {
            System.out.println("DeleteGame:" + e.getMessage());
        } finally{
            cnn.close();
        }
    }
    
    public void updateGame (String oldName, String newName) throws SQLException{
        Connection cnn=null;
        try {
            String str = "update game_type set game_type=? where game_type = ?";
            BaseDAO db = new BaseDAO();
             cnn = db.getConnection();
            PreparedStatement pstm = cnn.prepareStatement(str);
            pstm.setString(1, newName);
            pstm.setString(2, oldName);
            pstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("DeleteGame:" + e.getMessage());
        } finally{
            cnn.close();
        }
    }
    
    
     
    public void addGame(String game_id, String game_type) throws SQLException{
        Connection cnn=null;
        try {
            String str = "update game_type set game_id=? where game_type = ?";
            BaseDAO db = new BaseDAO();
             cnn = db.getConnection();
            PreparedStatement pstm = cnn.prepareStatement(str);
            pstm.setString(1, game_id);
            pstm.setString(2, game_type);
            pstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("DeleteGame:" + e.getMessage());
        } finally{
            cnn.close();
        }
    }
    
    public Game_Type getGameTypeByName(String game_type) throws SQLException{
        Game_Type gt = new Game_Type();
        Connection conn = null;
        try {
            BaseDAO db = new BaseDAO();
            conn = db.getConnection();
            // crate statement
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM Game_Type where game_type = ?");
            stmt.setString(1, game_type);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                gt = new Game_Type(rs.getString("game_id"), rs.getString("game_type"), rs.getInt("status"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally{
            conn.close();
        }
        return gt; 
    }
}
