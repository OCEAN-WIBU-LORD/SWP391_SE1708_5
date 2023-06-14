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
public class Booking {
    private int id;
    private int userId;
    private int playerId;
    private LocalDateTime createdAt;
    private int totalHour;
    private float price;
    private String status;
    private LocalDateTime timeStart;
    private LocalDateTime timeEnd;

    public Booking() {
    }

    public Booking(int id, int userId, int playerId, LocalDateTime createdAt, int totalHour, float price, String status, LocalDateTime timeStart, LocalDateTime timeEnd) {
        this.id = id;
        this.userId = userId;
        this.playerId = playerId;
        this.createdAt = createdAt;
        this.totalHour = totalHour;
        this.price = price;
        this.status = status;
        this.timeStart = timeStart;
        this.timeEnd = timeEnd;
    }

    public int getId() {
        return id;
    }

    public int getUserId() {
        return userId;
    }

    public int getPlayerId() {
        return playerId;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public int getTotalHour() {
        return totalHour;
    }

    public float getPrice() {
        return price;
    }

    public String getStatus() {
        return status;
    }

    public LocalDateTime getTimeStart() {
        return timeStart;
    }

    public LocalDateTime getTimeEnd() {
        return timeEnd;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setPlayerId(int playerId) {
        this.playerId = playerId;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public void setTotalHour(int totalHour) {
        this.totalHour = totalHour;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setTimeStart(LocalDateTime timeStart) {
        this.timeStart = timeStart;
    }

    public void setTimeEnd(LocalDateTime timeEnd) {
        this.timeEnd = timeEnd;
    }
    
    
}
