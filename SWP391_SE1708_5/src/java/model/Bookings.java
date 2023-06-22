/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Administrator
 */
public class Bookings {
    private String booking_id;
    private String user_id;
    private String player_id;
    private String total_hour;
    private String game_id;

    public Bookings() {
    }

    public Bookings(String booking_id, String user_id, String player_id, String total_hour, String game_id) {
        this.booking_id = booking_id;
        this.user_id = user_id;
        this.player_id = player_id;
        this.total_hour = total_hour;
        this.game_id = game_id;
    }

    public String getBooking_id() {
        return booking_id;
    }

    public void setBooking_id(String booking_id) {
        this.booking_id = booking_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getPlayer_id() {
        return player_id;
    }

    public void setPlayer_id(String player_id) {
        this.player_id = player_id;
    }

    public String getTotal_hour() {
        return total_hour;
    }

    public void setTotal_hour(String total_hour) {
        this.total_hour = total_hour;
    }

    public String getGame_id() {
        return game_id;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }
    
    

    @Override
    public String toString() {
        return "Bookings{" + "booking_id=" + booking_id + ", user_id=" + user_id + ", player_id=" + player_id + ", total_hour=" + total_hour + ", game_id=" + game_id +'}';
    }

   
    
    
}
