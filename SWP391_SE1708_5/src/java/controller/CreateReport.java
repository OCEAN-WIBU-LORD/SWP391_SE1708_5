/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DB.BookingDAO;
import DB.ReportDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Bookings;
import model.Report;
import model.User_Details;

/**
 *
 * @author Cuthi
 */
@WebServlet(name = "CreateReport", urlPatterns = {"/createReport"})
public class CreateReport extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CreateReport</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CreateReport at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);

        String bookingId = request.getParameter("bookingId");
        BookingDAO bookingDAO = new BookingDAO();
        ReportDAO reportDAO = new ReportDAO();
        ArrayList<Report> listReport = new ArrayList<>();
        try {
            if (bookingId != null){
                Bookings booking = bookingDAO.getBookingById(bookingId);
                request.setAttribute("transaction", booking);
            }
            HttpSession session = request.getSession();
            Object obj = session.getAttribute("role");
            Object obj_acc = session.getAttribute("usercurrent");
            if (obj == null){
                response.sendRedirect("login");
            } else {
                User_Details account = (User_Details) obj_acc;
                if(obj.toString().equals("user") || obj.toString().equals("admin")){
                    listReport = reportDAO.getReportByUserId(account.getUser_id(), true);
                }else{
                    listReport = reportDAO.getReportByUserId(account.getUser_id(), false);
                }
                request.setAttribute("reports", listReport);
                request.setAttribute("totalReport", listReport.size());
                request.getRequestDispatcher("common/createReport.jsp").forward(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CreateReport.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
//        int booking_id = Integer.parseInt(request.getParameter("booking_id"));
        String booking_id = request.getParameter("booking_id");
        BookingDAO bDAO = new BookingDAO();
        try {
            Bookings b = bDAO.getBookingById(booking_id);
            String reason = request.getParameter("reason");
            ReportDAO rDAO = new ReportDAO();
            rDAO.createReport(reason, b);
        } catch (SQLException ex) {
            Logger.getLogger(CreateReport.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("common/createReport.jsp").forward(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void elseif(boolean equals) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
