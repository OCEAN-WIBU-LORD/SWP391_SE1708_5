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
public class Message {
    private int messageid;
    private String user_id;
    private String player_id;
    private String date_time;
    private String message;
    private String status;

    public Message() {
    }

    public Message(int messageid, String user_id, String player_id, String date_time, String message, String status) {
        this.messageid = messageid;
        this.user_id = user_id;
        this.player_id = player_id;
        this.date_time = date_time;
        this.message = message;
        this.status = status;
    }

    public int getMessageid() {
        return messageid;
    }

    public void setMessageid(int messageid) {
        this.messageid = messageid;
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

    public String getDate_time() {
        return date_time;
    }

    public void setDate_time(String date_time) {
        this.date_time = date_time;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    

    
    
    @Override
    public String toString() {
          return "Message{" + "messageid=" + messageid + ", user_id=" + user_id + ", player_id=" + player_id + ", date_time=" + date_time + ", message=" + message +", status=" + status +'}';
    }
    
}
