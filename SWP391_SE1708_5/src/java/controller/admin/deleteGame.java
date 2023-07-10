/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import DB.GameDAO;
import DB.Game_TypeDAO;
import DB.PlayerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
//@WebServlet(name = "deleteGame", urlPatterns = {"/admin/deleteGame"})

public class deleteGame extends HttpServlet {

    private GameDAO dao = new GameDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet deleteGame</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet deleteGame at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        HttpSession session = request.getSession();
//        String role = session.getAttribute("role").toString();
//        if (role.isEmpty()) {
//            response.sendRedirect("Unauthorized.html");
//        } else {
//            if (role.equals("user")) {
//                response.sendRedirect("Unauthorized.html");
//            } else {
//                try {
//                    String game_id = request.getParameter("id");
//                    dao.DeleteGame(game_id);
//                    response.sendRedirect("GameList");
//                } catch (SQLException ex) {
//                    Logger.getLogger(deleteGame.class.getName()).log(Level.SEVERE, null, ex);
//                }
//            }
//        }
 try {
                    String game_id = request.getParameter("id");
                    dao.DeleteGame(game_id);
                    response.sendRedirect("GameList");
                } catch (SQLException ex) {
                    Logger.getLogger(deleteGame.class.getName()).log(Level.SEVERE, null, ex);
                }
    }
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
            String game_id = request.getParameter("id");
            GameDAO gdao = new GameDAO();
            gdao.DeleteGame(game_id);
            response.sendRedirect("GameList");
        } catch (SQLException ex) {
            Logger.getLogger(deleteGame.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
