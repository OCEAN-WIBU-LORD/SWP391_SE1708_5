/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Administrator
 */
public class Bookings {
    private String user_id;
    private String player_id;
    private String total_hour;
    private String game_id;
    private double total_price;
    private String date_booking;
    private String message;
    private String status_booking;
    private int booking_id;

    public Bookings() {
    }

    public Bookings(String user_id, String player_id, String total_hour, String game_id, double total_price, String date_booking, String message, String status_booking, int booking_id) {
        this.user_id = user_id;
        this.player_id = player_id;
        this.total_hour = total_hour;
        this.game_id = game_id;
        this.total_price = total_price;
        this.date_booking = date_booking;
        this.message = message;
        this.status_booking = status_booking;
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

    public double getTotal_price() {
        return total_price;
    }

    public void setTotal_price(double total_price) {
        this.total_price = total_price;
    }

    public String getDate_booking() {
        return date_booking;
    }

    public void setDate_booking(String date_booking) {
        this.date_booking = date_booking;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getStatus_booking() {
        return status_booking;
    }

    public void setStatus_booking(String status_booking) {
        this.status_booking = status_booking;
    }

    public int getBooking_id() {
        return booking_id;
    }

    public void setBooking_id(int booking_id) {
        this.booking_id = booking_id;
    }

   
    

    
    

    

    
    

    @Override
    public String toString() {
        return "Bookings{" + ", user_id=" + user_id + ", player_id=" + player_id + ", total_hour=" + total_hour + ", game_id=" + game_id +", date_booking=" +date_booking+", message=" +message+", status_booking=" +status_booking+", booking_id=" +booking_id+'}';
    }

   
    
    
}
