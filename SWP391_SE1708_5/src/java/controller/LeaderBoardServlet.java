/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DB.PlayerDAO;
import DB.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Player;

/**
 *
 * @author Acer
 */
public class LeaderBoardServlet extends HttpServlet {

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
            out.println("<title>Servlet LeaderBoardServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LeaderBoardServlet at " + request.getContextPath() + "</h1>");
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
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        PlayerDAO mdao = new PlayerDAO();
        UserDAO udao = new UserDAO();
        //     Game_TypeDAO adao = new Game_TypeDAO();
        List<Player> playerList = mdao.getTop5GoodPlayer();
        List<Player> playerList2 = mdao.getTop5BestBookingPlayer();
        String full_name = String.valueOf(session.getAttribute("full_name"));
        int a = playerList.size();
//            List<Actor> actorList = adao.getAllActor();
//            List<GameType> cateList = cdao.getGameType();
//            List<PlayerGame> movieActorList = mdao.getPlayerGame();
//            List<Player_category> mcList = cdao.getPlayerCategory();
//            request.setAttribute("mcList", mcList);
        request.setAttribute("playerList", playerList);
        request.setAttribute("playerList2", playerList2);
        request.setAttribute("a", a);
        request.setAttribute("full_name", full_name);
//            request.setAttribute("actorList", actorList);
//            request.setAttribute("cateList", cateList);
//            request.setAttribute("movieActorList", movieActorList);
//            response.getWriter().print(playerList.get(0).getDirected_by());\
        request.getRequestDispatcher("common/leaderboard.jsp").forward(request, response);
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
