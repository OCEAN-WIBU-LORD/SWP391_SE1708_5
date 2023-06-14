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
public class BlockUserList {
    private int userId;
    private int playerId;
    private LocalDateTime createdAt;
    private String reason;
    private boolean status;

    public BlockUserList() {
    }

    public BlockUserList(int userId, int playerId, LocalDateTime createdAt, String reason, boolean status) {
        this.userId = userId;
        this.playerId = playerId;
        this.createdAt = createdAt;
        this.reason = reason;
        this.status = status;
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

    public void setReason(String reason) {
        this.reason = reason;
    }

    public void setStatus(boolean status) {
        this.status = status;
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

    public String getReason() {
        return reason;
    }

    public boolean isStatus() {
        return status;
    }
}
