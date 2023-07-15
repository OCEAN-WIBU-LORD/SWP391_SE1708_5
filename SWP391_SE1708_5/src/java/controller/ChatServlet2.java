package controller;

import junit.framework.*;
import DB.BookingDAO;
import DB.MessageDAO;
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
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Bookings;
import model.Message;
import model.Player;
import model.User;
import model.User_Details;

public class ChatServlet2 extends HttpServlet {

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
        String user_id = request.getParameter("user_id");
        User_DetailsDAO mdao = new User_DetailsDAO();
        UserDAO u = new UserDAO();
//        if(!bookingrs.equals("")){
//            request.setAttribute("bookingrs", "true");
//        }
        if (obj_acc == null) {
            request.setAttribute("messenger", "Please Login");
            request.getRequestDispatcher("common/login_1.jsp").forward(request, response);
        }
        try {
            User_Details user = mdao.getUserDetailsById(user_id);
            request.setAttribute("user", user);
            Player account = (Player) obj_acc;
            User_DetailsDAO udt = new User_DetailsDAO();
            String player_id = account.getPlayer_id() + "";
            User_Details udetail = udt.getUserDetailsById(user_id);
            request.setAttribute("udetail", udetail);
            String username = u.getUserName(user_id);
            request.setAttribute("username", username);
            MessageDAO bddao = new MessageDAO();
            List<String> playerIds = new ArrayList<>();
            List<String> userIds1 = bddao.messageUser1(player_id);
            List<Message> historyMessage = bddao.messageList(user_id, player_id);
            List<Message> messagePlayer = bddao.messagePlayer(user_id, player_id);
            List<User_Details> userlist = mdao.getAllUserDetails();
            int n = historyMessage.size();
            int m = userlist.size();
            int q = userIds1.size();
            String h = user.getLink_image();
//            String m = u.getTotalHour(user_id);
//            String totalmoney = u.getTotalMoneySpend(user_id);  
            request.setAttribute("n", n);
            request.setAttribute("m", m);
            request.setAttribute("q", q);
            request.setAttribute("h",h);
//             request.setAttribute("m", m);
//             request.setAttribute("totalmoney", totalmoney);
            request.setAttribute("account", account);
            request.setAttribute("historyMessage", historyMessage);
            request.setAttribute("userlist", userlist);
            request.setAttribute("userIds1", userIds1);
            request.getRequestDispatcher("common/chat_1.jsp").forward(request, response);
        } catch (SQLException ex) {
            System.out.println("doGetPlayerMainProfileServlet" + ex.getMessage());;
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
         response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();

        Object obj_acc = session.getAttribute("playercurrent");
        String user_id = request.getParameter("user_id");
        User_DetailsDAO mdao = new User_DetailsDAO();
        String message = request.getParameter("message");
        UserDAO u = new UserDAO();
//        if(!bookingrs.equals("")){
//            request.setAttribute("bookingrs", "true");
//        }
        if (obj_acc == null) {
            request.setAttribute("messenger", "Please Login");
            request.getRequestDispatcher("common/login_1.jsp").forward(request, response);
        }
        try {
            User_Details user = mdao.getUserDetailsById(user_id);
            request.setAttribute("user", user);
            Player account = (Player) obj_acc;
            User_DetailsDAO udt = new User_DetailsDAO();
            String player_id = account.getPlayer_id() + "";
            User_Details udetail = udt.getUserDetailsById(user_id);
            request.setAttribute("udetail", udetail);
            String username = u.getUserName(user_id);
            request.setAttribute("username", username);
            MessageDAO bddao = new MessageDAO();
            List<String> playerIds = new ArrayList<>();
            List<String> userIds1 = bddao.messageUser1(player_id);
            List<Message> historyMessage = bddao.messageList(user_id, player_id);
            List<Message> messagePlayer = bddao.messagePlayer(user_id, player_id);
            List<User_Details> userlist = mdao.getAllUserDetails();
            String status = "0";
            bddao.addMessage(new Message(0, user_id, player_id, "", message, status));
            int n = historyMessage.size();
            int m = userlist.size();
            int q = userIds1.size();
            String h = user.getLink_image();
//            String m = u.getTotalHour(user_id);
//            String totalmoney = u.getTotalMoneySpend(user_id);  
            request.setAttribute("n", n);
            request.setAttribute("m", m);
            request.setAttribute("q", q);
            request.setAttribute("h",h);
//             request.setAttribute("m", m);
//             request.setAttribute("totalmoney", totalmoney);
            request.setAttribute("account", account);
            request.setAttribute("historyMessage", historyMessage);
            request.setAttribute("userlist", userlist);
            request.setAttribute("userIds1", userIds1);
            response.sendRedirect("chat2?user_id=" + user_id);
        } catch (SQLException ex) {
            System.out.println("doGetChatServlet" + ex.getMessage());;
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
