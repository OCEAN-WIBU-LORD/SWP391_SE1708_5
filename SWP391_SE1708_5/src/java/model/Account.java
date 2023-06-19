package model;

import java.time.LocalDateTime;

public class Account {
    private int id;
    private String userName;
    private String fullName;
    private String password;
    private LocalDateTime createdAt;
    private String email;
    private String phone;
    private boolean isMale;
    private String avatar;
    private boolean isActive;
    private double coins;
    private int roleId;
    private String status;

    public Account() {
    }

    public Account(int id, String userName, String fullName, String password, LocalDateTime createdAt, String email, String phone, boolean isMale, String avatar, boolean isActive, double coins, int roleId, String status) {
        this.id = id;
        this.userName = userName;
        this.fullName = fullName;
        this.password = password;
        this.createdAt = createdAt;
        this.email = email;
        this.phone = phone;
        this.isMale = isMale;
        this.avatar = avatar;
        this.isActive = isActive;
        this.coins = coins;
        this.roleId = roleId;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public String getUserName() {
        return userName;
    }

    public String getFullName() {
        return fullName;
    }

    public String getPassword() {
        return password;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public boolean isIsMale() {
        return isMale;
    }

    public String getAvatar() {
        return avatar;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public double getCoins() {
        return coins;
    }

    public int getRoleId() {
        return roleId;
    }

    public String getStatus() {
        return status;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setIsMale(boolean isMale) {
        this.isMale = isMale;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    public void setCoins(double coins) {
        this.coins = coins;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", userName=" + userName + ", fullName=" + fullName + ", password=" + password + ", createdAt=" + createdAt + ", email=" + email + ", phone=" + phone + ", isMale=" + isMale + ", avatar=" + avatar + ", isActive=" + isActive + ", coins=" + coins + ", roleId=" + roleId + ", status=" + status + '}';
    }
}