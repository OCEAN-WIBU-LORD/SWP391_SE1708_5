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

/**
 *
 * @author Acer
 */
public class Base {
    public static void main(String[] args){
        String url = "jdbc:mysql://localhost:3306/swp391_se1708_5_3";
        String username ="root";
        String password="123456789";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url,username,password);
            Statement statement = connection.createStatement();
            
            ResultSet resultSet= statement.executeQuery("select * from user");
            while(resultSet.next()){
                System.out.println(resultSet.getString(1)+" "+resultSet.getString(2)); 
            }
            connection.close();
        }catch(Exception e){
            System.out.println(e);
        }
    }
}
