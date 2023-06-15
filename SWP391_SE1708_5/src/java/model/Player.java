/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import DB.*;

/**
 *
 * @author Acer
 */
public class Player {
    private String player_id;
    private String player_name;
    private String gender;
    private String phone_number;
    private int num_of_star;
    private String password;
    private String link_image;
    private Double income;
    private String status_player;
    private String description;
    
    public Player() {
    }

    public Player(String player_id, String player_name, String gender, String phone_number, int num_of_star, String password, String link_image, Double income, String status_player, String description) {
        this.player_id = player_id;
        this.player_name = player_name;
        this.gender = gender;
        this.phone_number = phone_number;
        this.num_of_star = num_of_star;
        this.password = password;
        this.link_image = link_image;
        this.income = income;
        this.status_player = status_player;
        this.description = description;
    }

    public String getPlayer_id() {
        return player_id;
    }

    public void setPlayer_id(String player_id) {
        this.player_id = player_id;
    }

    public String getPlayer_name() {
        return player_name;
    }

    public void setPlayer_name(String player_name) {
        this.player_name = player_name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public int getNum_of_star() {
        return num_of_star;
    }

    public void setNum_of_star(int num_of_star) {
        this.num_of_star = num_of_star;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLink_image() {
        return link_image;
    }

    public void setLink_image(String link_image) {
        this.link_image = link_image;
    }

    public Double getIncome() {
        return income;
    }

    public void setIncome(Double income) {
        this.income = income;
    }

    public String getStatus_player() {
        return status_player;
    }

    public void setStatus_player(String status_player) {
        this.status_player = status_player;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    


    
   

    @Override
    public String toString() {
          return "Player{" + "player_id=" + player_id + ", player_name=" + player_name + ", gender=" + gender + ", phone_number=" + phone_number + ", num_of_star=" + num_of_star + ", password=" + password +  ", link_image=" + link_image +  ", income =" + income + ", status_player =" + status_player +  ", description =" + description +'}';
    }
}
