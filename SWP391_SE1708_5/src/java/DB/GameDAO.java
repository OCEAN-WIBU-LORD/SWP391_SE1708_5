/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.Game;

/**
 *
 * @author Acer
 */
public class GameDAO {

    BaseDAO db = new BaseDAO();
    Connection cnn = null;
    ResultSet rs;
    PreparedStatement pstm;
    
    public ArrayList<Game> getListGame() throws SQLException {
        ArrayList<Game> data = new ArrayList<Game>();
        try {
            db = new BaseDAO();
            cnn = db.getConnection();
            String strSelect = 
                    "select g.game_id, g.game_name, g.game_discription, g.game_type, g.status "
                    + "from game g "
                    + "where status = 1"
                    ;
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                String game_id = rs.getString("game_id");
                String game_name = rs.getString("game_name");
                String game_discription = rs.getString("game_discription");
                String game_type = rs.getString("game_type");
                Game g = new Game(game_id, game_name, game_discription, game_type);
                data.add(g);
            }
        } catch (Exception e) {
            System.out.println("GetListGame" + e.getMessage());
        }finally{
            if (cnn!= null){
                cnn.close();
            }
        }
        return data;
    }
    
//     public ArrayList<Game> getListGame() throws SQLException {
//        ArrayList<Game> data = new ArrayList<Game>();
//        try {
//            db = new BaseDAO();
//            cnn = db.getConnection();
//            String strSelect = 
//                    "select g.game_id, g.game_name, g.game_discription, gt.game_type "
//                    + "from game g left join game_type gt "
//                    + "on gt.game_id like concat('%,',g.game_id,',%')"
//                    ;
//            pstm = cnn.prepareStatement(strSelect);
//            rs = pstm.executeQuery();
//            while (rs.next()) {
//                String game_id = rs.getString("game_id");
//                String game_name = rs.getString("game_name");
//                String game_discription = rs.getString("game_discription");
//                String game_type = rs.getString("game_type");
//                Game g = new Game(game_id, game_name, game_discription, game_type);
//                data.add(g);
//            }
//        } catch (Exception e) {
//            System.out.println("GetListGame" + e.getMessage());
//        }finally{
//            if (cnn!= null){
//                cnn.close();
//            }
//        }
//        return data;
//    }

    public void deleteGameType(String gameType){
        try {
            cnn = db.getConnection();
            String strUpdate = "update game "
                    + "set game_type= '' , "
                    + "where game_type = ?";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, gameType);
            pstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("UpdateGame:" + e.getMessage());
        }
    }
    
    public void updateGame(Game a) {
        try {
            cnn = db.getConnection();
            String strUpdate = "update game "
                    + "set game_id= ? , "
                    + "game_name = ? ,"
                    + "game_discription= ?, "
                    + "game_type = ? "
                    + "where game_id = ?";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, a.id);
            pstm.setString(2, a.name);
            pstm.setString(3, a.discription);
            pstm.setString(4, a.getGameType());
            pstm.setString(5, a.getId());
            pstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("UpdateGame:" + e.getMessage());
        }
    }

    public void DeleteGame(String id) throws SQLException {
        try {
            String strDelete = "delete from game where game_id=? ";
            db = new BaseDAO();
            cnn = db.getConnection();
            pstm = cnn.prepareStatement(strDelete);
            pstm.setString(1, id);
            pstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("DeleteGame:" + e.getMessage());
        } finally{
            cnn.close();
        }
    }

    public void addGame(Game a) {
        try {
            cnn = db.getConnection();
            String strAdd = "insert into game(game_id,game_name,game_discription, game_type, status) values(?,?,?,?,1)";
            pstm = cnn.prepareStatement(strAdd);
            pstm.setString(1, a.id);
            pstm.setString(2, a.name);
            pstm.setString(3, a.discription);
            pstm.setString(4, a.getGameType());
            pstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("AddGame:" + e.getMessage());
        }
    }

    public Game getGame(String id) {
        Game g = new Game();
        try {
            String strSelect = "select * from game where game_id=? ";
            cnn = db.getConnection();
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, id);
            rs = pstm.executeQuery();
            while (rs.next()) {
                g.id = id;
                g.name = rs.getString("game_name");
                g.discription = rs.getString("game_discription");
                g.gameType = rs.getString("game_type");
                g.status = rs.getInt("status");
            }
            return g;
        } catch (Exception e) {
            System.out.println("GetGame:" + e.getMessage());
        }
        return null;
    }

    public boolean checkGameIDExist(String id) {
        if (id == null || id.isEmpty()) {
            return false;
        }
        try {
            String strSelect = "select * from game where game_id=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, id);
            rs = pstm.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkExist: " + e.getMessage());
        }
        return false;
    }
    
     public boolean checkGameNameExist(String name) {
        if (name == null || name.isEmpty()) {
            return false;
        }
        try {
            cnn = db.getConnection();
            String strSelect = "select * from game where game_name=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, name);
            rs = pstm.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkExist: " + e.getMessage());
        }
        return false;
    }
}
