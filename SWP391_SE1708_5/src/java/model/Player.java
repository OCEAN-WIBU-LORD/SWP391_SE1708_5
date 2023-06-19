/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDateTime;

/**
 *
 * @author Cuthi
 */
public class Player extends Account{
    private int playerId;
    private int userId;
    private float numOfStar;
    private float price;
    private String description;
    private boolean status;

    public Player() {
    }

    public Player(int playerId, int userId, float numOfStar, float price, String description, boolean status) {
        this.playerId = playerId;
        this.userId = userId;
        this.numOfStar = numOfStar;
        this.price = price;
        this.description = description;
        this.status = status;
    }

    public Player(int playerId, float numOfStar, float price, String description, boolean status, int id, String userName, String fullName, String password, LocalDateTime createdAt, String email, String phone, boolean isMale, String avatar, boolean isActive, double coins, int roleId, String statusUser) {
        super(id, userName, fullName, password, createdAt, email, phone, isMale, avatar, isActive, coins, roleId, statusUser);
        this.playerId = playerId;
        this.numOfStar = numOfStar;
        this.price = price;
        this.description = description;
        this.status = status;
    }

    public int getPlayerId() {
        return playerId;
    }

    public int getUserId() {
        return userId;
    }

    public float getNumOfStar() {
        return numOfStar;
    }

    public float getPrice() {
        return price;
    }

    public String getDescription() {
        return description;
    }

    public boolean isStatus() {
        return status;
    }

    public void setPlayerId(int playerId) {
        this.playerId = playerId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setNumOfStar(float numOfStar) {
        this.numOfStar = numOfStar;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
}
