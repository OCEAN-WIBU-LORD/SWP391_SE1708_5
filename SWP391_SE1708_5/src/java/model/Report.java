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
    private int reportId;
    private int bookingId;
    private int reportedAccId;
    private int createdAccId;
    private LocalDateTime createdTime;
    private String reason;
    private String status;

    public Report() {
    }

    public Report(int reportId, int bookingId, int reportedAccId, int createdAccId, LocalDateTime createdTime, String reason, String status) {
        this.reportId = reportId;
        this.bookingId = bookingId;
        this.reportedAccId = reportedAccId;
        this.createdAccId = createdAccId;
        this.createdTime = createdTime;
        this.reason = reason;
        this.status = status;
    }

    public int getReportId() {
        return reportId;
    }

    public int getBookingId() {
        return bookingId;
    }

    public int getReportedAccId() {
        return reportedAccId;
    }

    public int getCreatedAccId() {
        return createdAccId;
    }

    public LocalDateTime getCreatedTime() {
        return createdTime;
    }

    public String getReason() {
        return reason;
    }

    public String getStatus() {
        return status;
    }

    public void setReportId(int reportId) {
        this.reportId = reportId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public void setReportedAccId(int reportedAccId) {
        this.reportedAccId = reportedAccId;
    }

    public void setCreatedAccId(int createdAccId) {
        this.createdAccId = createdAccId;
    }

    public void setCreatedTime(LocalDateTime createdTime) {
        this.createdTime = createdTime;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
}
