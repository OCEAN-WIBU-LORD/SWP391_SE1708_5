/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

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
import model.Message;
import model.Player;
import model.User_Details;

/**
 *
 * @author Acer
 */
public class DeleteMessageServlet extends HttpServlet {

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
            out.println("<title>Servlet DeleteMessageServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeleteMessageServlet at " + request.getContextPath() + "</h1>");
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
        Player player;
        try {
            player = mdao.getPlayerByID(player_id);
            request.setAttribute("player", player);
        } catch (SQLException ex) {
            Logger.getLogger(DeleteMessageServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
            List<String> playerIds = new ArrayList<>();
            List<String> playerIds1 = bddao.messagePlayer1(user_id);
            List<Message> historyMessage = bddao.messageList(user_id, player_id);
            List<Message> messagePlayer = bddao.messagePlayer(user_id, player_id);
            List<Player> playerlist = mdao.getAllPlayer();
            bddao.deleteMessage(user_id, player_id);
            int n = historyMessage.size();
            int m = playerlist.size();
            int q = playerIds1.size();
//            String m = u.getTotalHour(user_id);
//            String totalmoney = u.getTotalMoneySpend(user_id);  
            request.setAttribute("n", n);
            request.setAttribute("m", m);
            request.setAttribute("q", q);
//             request.setAttribute("m", m);
//             request.setAttribute("totalmoney", totalmoney);
            request.setAttribute("account", account);
            request.setAttribute("historyMessage", historyMessage);
            request.setAttribute("playerlist", playerlist);
            request.setAttribute("playerIds1", playerIds1);
            request.getRequestDispatcher("common/chat.jsp").forward(request, response);
        } catch (SQLException ex) {
            System.out.println("doGetDeleteMessageServlet" + ex.getMessage());;
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
        processRequest(request, response);
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
