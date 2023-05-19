/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.User_Role;

/**
 *
 * @author Acer
 */
public class User_RoleDAO {
    BaseDAO BaseDao = new BaseDAO();
    Connection conn = null;
    
    
    public static void main(String[] args) throws SQLException {
        User_RoleDAO a = new User_RoleDAO();
    }
    
    public void insertRole(String acc_id) {
        try {

            conn = BaseDAO.getConnection();
            PreparedStatement stmt = conn.prepareStatement("insert into User_Role(role_id, user_id) values (?,?)");
            stmt.setString(1, "1");
            stmt.setString(2, acc_id);
            stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("insertRole" + e.getMessage());
        }
    }
    
}
