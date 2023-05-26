/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import DB.*;

/**
 *
 * @author Acer
 */
public class Game_Type {
     private String game_id;
    private String game_type;

    public Game_Type() {
    }

    public Game_Type(String game_id, String game_type) {
        this.game_id = game_id;
        this.game_type = game_type;
    }

    public String getGame_id() {
        return game_id;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public String getGame_type() {
        return game_type;
    }

    public void setGame_type(String game_type) {
        this.game_type = game_type;
    }

    @Override
    public String toString() {
        return "Game_Type{" + "game_id"+ game_id +"game_type" + game_type +"}";
    }
}
