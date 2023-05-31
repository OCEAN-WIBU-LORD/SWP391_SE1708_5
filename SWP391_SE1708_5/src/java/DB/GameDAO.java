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

}
