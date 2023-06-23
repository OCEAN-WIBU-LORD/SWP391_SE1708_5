/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Driver;

/**
 *
 * @author Acer
 */
public class BaseDAO {
    public static void main(String[] args){
        String url = "jdbc:mysql://localhost:3306/swp391_se1708_5_3";
        String username ="root";
        String password="123456789";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url,username,password);
            Statement statement = connection.createStatement();
            
            ResultSet resultSet= statement.executeQuery("select r.role_name from(select ar.role_id from user a inner join user_role ar on a.user_id = ar.user_id where a.user_id = 'duongdd123') as tb1 inner join role r on r.role_id = tb1.role_id");
            while(resultSet.next()){
                System.out.println(resultSet.getString(1)); 
            }
            connection.close();
        }catch(Exception e){
            System.out.println(e);
        }
    }
    public static Connection getConnection() {
	String url = "jdbc:mysql://localhost:3306/swp391_se1708_5_3";
        String username ="root";
        String password="123456789";
        Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, username, password);
			System.out.println("connect successfully!");
		} catch (Exception ex) {
			System.out.println("connect failure!");
			ex.printStackTrace();
		}
		return conn;
	}
}
