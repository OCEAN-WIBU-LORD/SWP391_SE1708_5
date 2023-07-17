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
    private int bookingId;
    private String playerId, userId, reason, status;
    private LocalDateTime createdAt;
    private int reportParent;
    private Bookings booking;

    public Report() {
    }

    public Report(int id, int bookingId, String playerId, String userId, String reason, String status, LocalDateTime createdAt) {
        this.id = id;
        this.bookingId = bookingId;
        this.playerId = playerId;
        this.userId = userId;
        this.reason = reason;
        this.status = status;
        this.createdAt = createdAt;
    }

    public Report(int id, int bookingId, String playerId, String userId, String reason, String status, LocalDateTime createdAt, int reportParent, Bookings booking) {
        this.id = id;
        this.bookingId = bookingId;
        this.playerId = playerId;
        this.userId = userId;
        this.reason = reason;
        this.status = status;
        this.createdAt = createdAt;
        this.reportParent = reportParent;
        this.booking = booking;
    }

    public int getReportParent() {
        return reportParent;
    }

    public Bookings getBooking() {
        return booking;
    }

    public void setReportParent(int reportParent) {
        this.reportParent = reportParent;
    }

    public void setBooking(Bookings booking) {
        this.booking = booking;
    }
    
    public int getId() {
        return id;
    }

    public int getBookingId() {
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

    public void setBookingId(int bookingId) {
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
