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
public class Game {
    
    public String id ;
    public String name;
    public String discription;
    public String gameType;
    public int status;

    public Game() {
    }

    public Game(String id, String name, String discription) {
        this.id = id;
        this.name = name;
        this.discription = discription;
    }

    public Game(String id, String name, String discription, String gameType) {
        this.id = id;
        this.name = name;
        this.discription = discription;
        this.gameType = gameType;
    }

    public Game(String id, String name, String discription, String gameType, int status) {
        this.id = id;
        this.name = name;
        this.discription = discription;
        this.gameType = gameType;
        this.status = status;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
    public String getGameType() {
        return gameType;
    }

    public void setGameType(String gameType) {
        this.gameType = gameType;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }
    
}
