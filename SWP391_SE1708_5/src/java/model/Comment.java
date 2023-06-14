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
public class Comment {
    private int id;
    private int bookingId;
    private int userId;
    private int playerId;
    private String content;
    private float numOfStar;
    private LocalDateTime createdAt;

    public Comment() {
    }

    public Comment(int id, int bookingId, int userId, int playerId, String content, float numOfStar, LocalDateTime createdAt) {
        this.id = id;
        this.bookingId = bookingId;
        this.userId = userId;
        this.playerId = playerId;
        this.content = content;
        this.numOfStar = numOfStar;
        this.createdAt = createdAt;
    }

    public int getId() {
        return id;
    }

    public int getBookingId() {
        return bookingId;
    }

    public int getUserId() {
        return userId;
    }

    public int getPlayerId() {
        return playerId;
    }

    public String getContent() {
        return content;
    }

    public float getNumOfStar() {
        return numOfStar;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setPlayerId(int playerId) {
        this.playerId = playerId;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setNumOfStar(float numOfStar) {
        this.numOfStar = numOfStar;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }
    
    
}
