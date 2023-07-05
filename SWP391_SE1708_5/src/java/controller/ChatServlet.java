package controller;

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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Bookings;
import model.Message;
import model.Player;
import model.User;
import model.User_Details;

public class ChatServlet extends HttpServlet {

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

        Object obj_acc = session.getAttribute("usercurrent");
        String player_id = request.getParameter("player_id");
        request.setAttribute("player_id", player_id);
        PlayerDAO mdao = new PlayerDAO();
        Player player = mdao.getPlayerByID(player_id);
        request.setAttribute("player", player);
        UserDAO u = new UserDAO();
//        if(!bookingrs.equals("")){
//            request.setAttribute("bookingrs", "true");
//        }
        if (obj_acc == null) {
            request.setAttribute("messenger", "Please Login");
            request.getRequestDispatcher("common/login.jsp").forward(request, response);
        }
        try {
            User_Details account = (User_Details) obj_acc;
            User_DetailsDAO udt = new User_DetailsDAO();
            String user_id = account.getUser_id() + "";
            User_Details udetail = udt.getUserDetailsById(user_id);
            request.setAttribute("udetail", udetail);
            String username = u.getUserName(user_id);
            request.setAttribute("username", username);
            MessageDAO bddao = new MessageDAO();
            List<Message> historyMessage = bddao.messageList(user_id,player_id);
            List<Player> playerlist = mdao.getAllPlayer();
            int n = historyMessage.size();
//            String m = u.getTotalHour(user_id);
//            String totalmoney = u.getTotalMoneySpend(user_id);  
            request.setAttribute("n", n);
//             request.setAttribute("m", m);
//             request.setAttribute("totalmoney", totalmoney);
            request.setAttribute("account", account);
            request.setAttribute("historyMessage", historyMessage);
            request.setAttribute("playerlist", playerlist);
            request.getRequestDispatcher("common/chat.jsp").forward(request, response);
        } catch (SQLException ex) {
            System.out.println("doGetChatServlet" + ex.getMessage());;
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

        Object obj_acc = session.getAttribute("usercurrent");
        String player_id = request.getParameter("player_id");
        String message = request.getParameter("message");
        request.setAttribute("player_id", player_id);
        PlayerDAO mdao = new PlayerDAO();
        Player player = mdao.getPlayerByID(player_id);
        request.setAttribute("player", player);
        UserDAO u = new UserDAO();
//        if(!bookingrs.equals("")){
//            request.setAttribute("bookingrs", "true");
//        }
        if (obj_acc == null) {
            request.setAttribute("messenger", "Please Login");
            request.getRequestDispatcher("common/login.jsp").forward(request, response);
        }
        try {
            User_Details account = (User_Details) obj_acc;
            User_DetailsDAO udt = new User_DetailsDAO();
            String user_id = account.getUser_id() + "";
            User_Details udetail = udt.getUserDetailsById(user_id);
            request.setAttribute("udetail", udetail);
            String username = u.getUserName(user_id);
            request.setAttribute("username", username);
            MessageDAO bddao = new MessageDAO();
            List<Message> historyMessage = bddao.messageList(user_id,player_id);
            List<Player> playerlist = mdao.getAllPlayer();
            String status = "1";
            bddao.addMessage(new Message(0,user_id, player_id, "", message, status));
            int n = historyMessage.size();
//            String m = u.getTotalHour(user_id);
//            String totalmoney = u.getTotalMoneySpend(user_id);  
            request.setAttribute("n", n);
//             request.setAttribute("m", m);
//             request.setAttribute("totalmoney", totalmoney);
            request.setAttribute("account", account);
            request.setAttribute("historyMessage", historyMessage);
            request.setAttribute("playerlist", playerlist);
            request.getRequestDispatcher("common/chat.jsp").forward(request, response);
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
