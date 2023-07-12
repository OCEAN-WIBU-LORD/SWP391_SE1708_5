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
public class Report {
    private int id;
    private String bookingId, playerId, userId, reason, status;
    private LocalDateTime createdAt;

    public Report() {
    }

    public Report(int id, String bookingId, String playerId, String userId, String reason, String status, LocalDateTime createdAt) {
        this.id = id;
        this.bookingId = bookingId;
        this.playerId = playerId;
        this.userId = userId;
        this.reason = reason;
        this.status = status;
        this.createdAt = createdAt;
    }

    public int getId() {
        return id;
    }

    public String getBookingId() {
        return bookingId;
    }

    public String getPlayerId() {
        return playerId;
    }

    public String getUserId() {
        return userId;
    }

    public String getReason() {
        return reason;
    }

    public String getStatus() {
        return status;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setBookingId(String bookingId) {
        this.bookingId = bookingId;
    }

    public void setPlayerId(String playerId) {
        this.playerId = playerId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }
    
    
}
