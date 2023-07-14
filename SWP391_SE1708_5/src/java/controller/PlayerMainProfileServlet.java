/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DB.BookingDAO;
import DB.PlayerDAO;
import DB.UserDAO;
import DB.User_DetailsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Bookings;
import model.Player;
import model.User;
import model.User_Details;

/**
 *
 * @author Acer
 */
public class PlayerMainProfileServlet extends HttpServlet {

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
            out.println("<title>Servlet HistoryBookingServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HistoryBookingServlet at " + request.getContextPath() + "</h1>");
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

        Object obj_acc = session.getAttribute("playercurrent");
        PlayerDAO mdao = new PlayerDAO();
        UserDAO u = new UserDAO();
//        if(!bookingrs.equals("")){
//            request.setAttribute("bookingrs", "true");
//        }
        if (obj_acc == null) {
            request.setAttribute("messenger", "Please Login");
            request.getRequestDispatcher("common/login_1.jsp").forward(request, response);
        }
        try {
            Player account = (Player) obj_acc;
            PlayerDAO udt = new PlayerDAO();
            String player_id = account.getPlayer_id() + "";
            Player player = udt.getPlayerByID(player_id);
            request.setAttribute("player", player);
            BookingDAO bddao = new BookingDAO();
            List<Bookings> historyBooking = bddao.bookingList1(player_id);
            List<User_Details> userlist = u.getAllUser();
            int n = historyBooking.size();
            String m = mdao.getTotalHour(player_id);
            String totalmoney = mdao.getTotalMoneySpend(player_id);
            request.setAttribute("n", n);
            request.setAttribute("m", m);
            request.setAttribute("totalmoney", totalmoney);
            request.setAttribute("account", account);
            request.setAttribute("historyBooking", historyBooking);
            request.setAttribute("userlist", userlist);
            request.getRequestDispatcher("common/playermainprofile.jsp").forward(request, response);
        } catch (SQLException ex) {
            System.out.println("doGetPlayerMainProfileServlet" + ex.getMessage());;
        }

//        String player_id = request.getParameter("player_id");
//        PlayerDAO mdao = new PlayerDAO();
//        Double balance = account.getBalance();
//            LocationDAO locationDAO = new LocationDAO();
//            List<LocationType> ltList = locationDAO.getListLationType();
//            List<Positions> positionList = locationDAO.getListPositions();
//            List<Location> locationList = locationDAO.getListLocation();
//            request.setAttribute("ltList", ltList);
//request.setAttribute("player_id", player_id);
//        request.setAttribute("balance", balance);
//        request.setAttribute("player", player);
//            request.setAttribute("positionList", positionList);
//            request.setAttribute("locationList", locationList);
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

//        PrintWriter out = response.getWriter();
//
//        String n1 = request.getParameter("number");
//
//        if (n1.isEmpty()) {
//            out.print("Please Code Elements");
//            return;
//        }
        Object obj_acc = session.getAttribute("usercurrent");
        PlayerDAO m = new PlayerDAO();
        User_DetailsDAO udao = new User_DetailsDAO();
        if (obj_acc != null) {
            User_Details account = (User_Details) obj_acc;
//            String game_id = request.getParameter("game_id");
            String total_hour = request.getParameter("totalhours");
            String player_id = request.getParameter("player_id");
            String message = request.getParameter("message");
            String user_id = account.getUser_id() + "";
            String game_id = "1";
            String status_booking = "1";
            //                BookingDAO bdao = new BookingDAO();
            BookingDAO bddao = new BookingDAO();
            try {
                String player_name = m.getPlayerNameById(player_id);
                Double money = m.getIncomePlayerById(player_id) * Double.valueOf(total_hour);
                String money2 = String.valueOf(money);
                Double money4 = account.getBalance();
                if (money4 <= 0 || money4 < money) {
                    try (PrintWriter out = response.getWriter()) {
                        out.print("Please deposit more money into the system Account!!");
                        return;
                    }
                }
                Double money3 = money4 - money;
//            String total_cost = request.getParameter("result");
//            Double total_cost2 = Double.parseDouble(total_cost);
                if (user_id == "") {
                    request.getRequestDispatcher("common/login.jsp").forward(request, response);
                }
                udao.reduceBalance(user_id, money3);
                bddao.addBooking(new Bookings(String.valueOf(user_id), String.valueOf(player_id), String.valueOf(total_hour), String.valueOf(game_id), money, "", String.valueOf(message), String.valueOf(status_booking),0));
//                bddao.addBooking(new Bookings("duongdd123", "chanbaby95", "1", "1", 0,"", "123"));
//                bddao.addBooking(new Bookings("duongdd123", "chanbaby95", "5", "1",4000,""));
            } catch (SQLException ex) {
                Logger.getLogger(BookingPlayerServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
//                bddao.addBookingDetails(new Bookings(String.valueOf('0'), String.valueOf(acc_id), String.valueOf(player_id), String.valueOf(total_hour), String.valueOf(game_id)));
            PlayerDAO player = new PlayerDAO();
//                movie.reduceTiket(player_id);
            response.sendRedirect("usermainprofile?user_id=" + user_id);
        } else {
            response.sendRedirect("login1");
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
