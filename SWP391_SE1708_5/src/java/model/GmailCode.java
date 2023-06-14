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
public class GmailCode {
    private int id;
    private int accId;
    private String gmail;
    private String randomCode;
    private LocalDateTime createdTime;
    private LocalDateTime expiredTime;
    private boolean status;

    public GmailCode() {
    }

    public GmailCode(int id, int accId, String gmail, String randomCode, LocalDateTime createdTime, LocalDateTime expiredTime, boolean status) {
        this.id = id;
        this.accId = accId;
        this.gmail = gmail;
        this.randomCode = randomCode;
        this.createdTime = createdTime;
        this.expiredTime = expiredTime;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public int getAccId() {
        return accId;
    }

    public String getGmail() {
        return gmail;
    }

    public String getRandomCode() {
        return randomCode;
    }

    public LocalDateTime getCreatedTime() {
        return createdTime;
    }

    public LocalDateTime getExpiredTime() {
        return expiredTime;
    }

    public boolean isStatus() {
        return status;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setAccId(int accId) {
        this.accId = accId;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public void setRandomCode(String randomCode) {
        this.randomCode = randomCode;
    }

    public void setCreatedTime(LocalDateTime createdTime) {
        this.createdTime = createdTime;
    }

    public void setExpiredTime(LocalDateTime expiredTime) {
        this.expiredTime = expiredTime;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
}
