/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import DB.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Driver;
import java.sql.SQLException;
/**
 *
 * @author Acer
 */
public class User {
    private String user_id;
    private String full_name;

    public User() {
    }

    public User(String user_id, String full_name) {
        this.user_id = user_id;
        this.full_name = full_name;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    @Override
    public String toString() {
         return "User{" + "user_id=" + user_id + ", full_name=" + full_name + '}';
    }
    
    
    
    
}
