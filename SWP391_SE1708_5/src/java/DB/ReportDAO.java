/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import model.Bookings;
import model.Report;

/**
 *
 * @author Cuthi
 */
public class ReportDAO {
    BaseDAO baseDAO = new BaseDAO();
    Connection conn = null;
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    
    public ArrayList<Report> getAllReport() throws SQLException{
        ArrayList<Report> listReport = new ArrayList<>();
        try {
            conn = baseDAO.getConnection();
            PreparedStatement stmt = conn.prepareStatement(
                    "select report_id, booking_id, player_id, user_id, reason, status, created_at from report"
            );
            ResultSet rs = stmt.executeQuery();
            // show data
            while (rs.next()) {
                Report report = new Report(
                        rs.getInt("report_id"), 
                        rs.getString("booking_id"), 
                        rs.getNString("player_id"), 
                        rs.getString("user_id"),
                        rs.getString("reason"),
                        rs.getString("status"),
                        LocalDateTime.parse(rs.getString("created_at"), dtf)
                );
                listReport.add(report);
            }
            // close connection
        } catch (Exception ex) {
            System.out.println("report list" + ex.getMessage());;
        }finally{
            if (conn!= null){
                conn.close();
            }
        }
        return listReport;
    }
    
    public ArrayList<Report> getReportByUserId(String id, boolean isUser) throws SQLException{
        ArrayList<Report> listReport = new ArrayList<>();
        try {
            conn = baseDAO.getConnection();
            String sql = "select report_id, booking_id, player_id, user_id, reason, status, created_at from report where ";
            if (isUser == true){
                sql += "user_id like ?";
            } else{
                sql += "player_id like ?";
            }
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();
            // show data
            while (rs.next()) {
                Report report = new Report(
                        rs.getInt("report_id"), 
                        rs.getString("booking_id"), 
                        rs.getNString("player_id"), 
                        rs.getString("user_id"),
                        rs.getString("reason"),
                        rs.getString("status"),
                        LocalDateTime.parse(rs.getString("created_at"), dtf)
                );
                listReport.add(report);
            }
            // close connection
        } catch (Exception ex) {
            System.out.println("report list" + ex.getMessage());;
        }finally{
            if (conn!= null){
                conn.close();
            }
        }
        return listReport;
    }
}
