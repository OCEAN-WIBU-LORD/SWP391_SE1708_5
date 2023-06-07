/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Acer
 */
public class Booking_DetailsDAO {
    BaseDAO BaseDao = new BaseDAO();
    Connection conn = null;
    
    public float totalPrice() throws SQLException {
        float totalPrice = 0;
        try {
            BaseDAO db = new BaseDAO();
            conn = db.getConnection();
            PreparedStatement stmt = conn.prepareStatement(
                    "select sum(total_price) "
                            + "from booking_details"
            );
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                totalPrice = rs.getFloat(1);
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (conn != null){
                conn.close();
            }
        }
        return totalPrice;
    }
}