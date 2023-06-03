/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Game;

/**
 *
 * @author Acer
 */
public class GameDAO {

    Connection cnn;
    ResultSet rs;
    PreparedStatement pstm;

//    public GameDAO(Connection connection) {
//        this.cnn = connection;
//    }
    public ArrayList<Game> getListGame() {
        ArrayList<Game> data = new ArrayList<Game>();
        try {
            String strSelect = "select * from game ";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                String game_id = rs.getString(1);
                String game_name = rs.getString(2);
                String game_discription = rs.getString(3);
                Game g = new Game(game_id, game_name, game_discription);
                data.add(g);

            }
        } catch (Exception e) {
            System.out.println("GetListGame" + e.getMessage());
        }
        return data;
    }

    public void updateGame(Game a) {
        try {
            String strUpdate = "update game "
                    + "set game_id= ? , "
                    + "game_name = ? ,"
                    + "game_discription= ?";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, a.id);
            pstm.setString(2, a.name);
            pstm.setString(3, a.discription);
            pstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("UpdateGame:" + e.getMessage());
        }
    }

    public void DeleteGame(String id) {
        try {
            String strDelete = "delete from game where game_id=? ";
            pstm = cnn.prepareStatement(strDelete);
            pstm.setString(1, id);
            pstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("DeleteGame:" + e.getMessage());
        }
    }

    public void addGame(Game a) {
        try {
            String strAdd = "insert into game(game_id,game_name,game_discription) values(?,?,?)";
            pstm = cnn.prepareStatement(strAdd);
            pstm.setString(1, a.id);
            pstm.setString(2, a.name);
            pstm.setString(1, a.discription);
            pstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("AddGame:" + e.getMessage());
        }
    }

    public Game getGame(String id) {
        Game g = new Game();
        try {
            String strSelect = "select * from game where game_id=? ";
            /*
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
             */
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, id);
            rs = pstm.executeQuery();
            while (rs.next()) {
                g.id = id;
                g.name = rs.getString(2);
                g.discription = rs.getString(3);
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
}
