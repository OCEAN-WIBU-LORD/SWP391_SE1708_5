/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Acer
 */
public class LeaderBoardPlayer {
    private String name;
    private String totalBooking;
    private String totalIncome;
    private String location;
    private String player_id;

    public LeaderBoardPlayer() {
    }

    public LeaderBoardPlayer(String name, String totalBooking, String totalIncome, String location, String player_id) {
        this.name = name;
        this.totalBooking = totalBooking;
        this.totalIncome = totalIncome;
        this.location = location;
        this.player_id = player_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTotalBooking() {
        return totalBooking;
    }

    public void setTotalBooking(String totalBooking) {
        this.totalBooking = totalBooking;
    }

    public String getTotalIncome() {
        return totalIncome;
    }

    public void setTotalIncome(String totalIncome) {
        this.totalIncome = totalIncome;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getPlayer_id() {
        return player_id;
    }

    public void setPlayer_id(String player_id) {
        this.player_id = player_id;
    }

    @Override
    public String toString() {
        return "Player{" + "name" + name + ", totalBooking=" + totalBooking + ", totalIncome=" + totalIncome + ", location=" + location + ", player_id=" + player_id +'}';
    }
    
    

    
}
