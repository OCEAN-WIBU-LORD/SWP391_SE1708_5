/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

//import DB.BookingDAO;
import DB.BookingDAO;
import DB.Booking_DetailsDAO;
import DB.GameDAO;
import DB.PlayerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Bookings;
import model.User_Details;
//import model.Bookings;
import model.Game;
import model.Game_Type;
import model.Player;

/**
 *
 * @author Nguyen Van Ky
 */
public class BookingPlayerServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BookingMovieServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BookingMovieServlet at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();

        Object obj_acc = session.getAttribute("usercurrent");
        String player_id = request.getParameter("player_id");
            PlayerDAO mdao = new PlayerDAO();
            Player player = mdao.getPlayerByID(player_id);
//        if(!bookingrs.equals("")){
//            request.setAttribute("bookingrs", "true");
//        }
        if (obj_acc == null) {
             request.setAttribute("messenger", "Please Login");
            request.getRequestDispatcher("common/login.jsp").forward(request, response);
        }

        User_Details account = (User_Details) obj_acc;
//        String player_id = request.getParameter("player_id");
//        PlayerDAO mdao = new PlayerDAO();
        Double balance = account.getBalance();
//            LocationDAO locationDAO = new LocationDAO();
//            List<LocationType> ltList = locationDAO.getListLationType();
//            List<Positions> positionList = locationDAO.getListPositions();
//            List<Location> locationList = locationDAO.getListLocation();
//            request.setAttribute("ltList", ltList);
//request.setAttribute("player_id", player_id);
        request.setAttribute("balance", balance);
        request.setAttribute("player", player);
//            request.setAttribute("positionList", positionList);
//            request.setAttribute("locationList", locationList);
        
        request.getRequestDispatcher("common/bookingplayer.jsp").forward(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Object obj_acc = session.getAttribute("usercurrent");
        PlayerDAO m = new PlayerDAO();
        if (obj_acc != null) {
            User_Details account = (User_Details) obj_acc;
//            String game_id = request.getParameter("game_id");
            String total_hour = request.getParameter("total_hour");
            String player_id = request.getParameter("player_id");
            String user_id = account.getUser_id() + "";
            String player_name = m.getPlayerNameById(player_id);
            String total_cost = request.getParameter("result");
            String message = request.getParameter("message");
            if(user_id == ""){
                request.getRequestDispatcher("common/login.jsp").forward(request, response);
            }
            String game_id = "1";
            //                BookingDAO bdao = new BookingDAO();
                BookingDAO bddao = new BookingDAO();
            try {
                bddao.addBooking(new Bookings(String.valueOf(user_id), String.valueOf(player_id), String.valueOf(total_hour), String.valueOf(game_id),Double.valueOf(total_cost),"", String.valueOf(message)));
//                bddao.addBooking(new Bookings("duongdd123", "chanbaby95", "3", "1",2000,""));
            } catch (SQLException ex) {
                Logger.getLogger(BookingPlayerServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
//                bddao.addBookingDetails(new Bookings(String.valueOf('0'), String.valueOf(acc_id), String.valueOf(player_id), String.valueOf(total_hour), String.valueOf(game_id)));
            PlayerDAO player = new PlayerDAO();
//                movie.reduceTiket(player_id);
            response.sendRedirect("bookingplayer?bookingrs=true&&player_id=" + player_id);
        } else {
            response.sendRedirect("login");
        }

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

}
