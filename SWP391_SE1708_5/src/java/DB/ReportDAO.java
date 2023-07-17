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
            String sql = 
                    "select r.report_id, r.reason, r.status, r.created_at, r.report_parent_id, "
                    + "b.booking_id, b.user_id, b.player_id, b.total_hour, b.total_price, b.date_booking, b.message, b.game_id\n" +
"from report r left join booking b on r.booking_id = b.booking_id\n" +
" order by r.created_at asc"
                    ;
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            // show data
            while (rs.next()) {
                Bookings b = new Bookings(
                        rs.getString("user_id"), 
                        rs.getString("player_id"), 
                        rs.getString("total_hour"),
                        rs.getString("game_id"), 
                        rs.getDouble("total_price"), 
                        rs.getString("date_booking"),
                        rs.getString("message"),
                        rs.getString("booking_id")
                );
                Report report = new Report(
                        rs.getInt("report_id"), 
                        rs.getInt("booking_id"), 
                        rs.getNString("player_id"), 
                        rs.getString("user_id"),
                        rs.getString("reason"),
                        rs.getString("status"),
                        LocalDateTime.parse(rs.getString("created_at"), dtf),
                        rs.getInt("report_parent_id"),
                        b
                );
                listReport.add(report);
            }
            // close connection
        } catch (Exception ex) {
            System.out.println("report list" + ex.getMessage());
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
            String sql = 
                    "select r.report_id, r.reason, r.status, r.created_at, r.report_parent_id, "
                    + "b.booking_id, b.user_id, b.player_id, b.total_hour, b.total_price, b.date_booking, b.message, b.game_id\n" +
"from report r left join booking b on r.booking_id = b.booking_id\n" +
"where "
                    ;
            if (isUser == true){
                sql += "r.user_id like ?";
            } else{
                sql += "r.player_id like ?";
            }
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();
            // show data
            while (rs.next()) {
                Bookings b = new Bookings(
                        rs.getString("user_id"), 
                        rs.getString("player_id"), 
                        rs.getString("total_hour"),
                        rs.getString("game_id"), 
                        rs.getDouble("total_price"), 
                        rs.getString("date_booking"),
                        rs.getString("message"),
                        rs.getString("booking_id")
                );
                Report report = new Report(
                        rs.getInt("report_id"), 
                        rs.getInt("booking_id"), 
                        rs.getNString("player_id"), 
                        rs.getString("user_id"),
                        rs.getString("reason"),
                        rs.getString("status"),
                        LocalDateTime.parse(rs.getString("created_at"), dtf),
                        rs.getInt("report_parent_id"),
                        b
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
    
    public void updateReportStatus(String status, int reportId){
        try {
            conn = baseDAO.getConnection();
            String strUpdate = "update report "
                    + "set status = ? "
                    + "where report_id = ?";
            PreparedStatement pstm = conn.prepareStatement(strUpdate);
            pstm.setString(1, status);
            pstm.setInt(2, reportId);
            pstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("UpdateReport:" + e.getMessage());
        }
    }
    
    public void createReport(String reason, Bookings b){
        try {
            conn = baseDAO.getConnection();
            String strUpdate = "insert into report(booking_id, player_id, user_id,reason, status, created_at,report_parent_id) values ("
                    + "?, ?,?,?,?, now(),?)";
            PreparedStatement pstm = conn.prepareStatement(strUpdate);
            pstm.setInt(1, Integer.parseInt(b.getId()));
            pstm.setString(2, b.getPlayer_id());
            pstm.setString(3, b.getUser_id());
            pstm.setString(4, reason);
            pstm.setString(5, "processing");
            pstm.setString(6, null);
            pstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("UpdateGame:" + e.getMessage());
        }
    }
}
