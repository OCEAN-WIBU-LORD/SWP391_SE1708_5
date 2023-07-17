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
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
        try {
        List<Player> playerList;
            playerList = mdao.getTop5HighIncomePlayer();
        List<Player> playerList2 = mdao.getTop5BestBookingPlayer();
        String full_name = String.valueOf(session.getAttribute("full_name"));
        String player_id;
        List<Player>  listPlayer = mdao.getTop5BestIncomePlayerID();
        List<Player> playerList3 = mdao.getAllPlayer();
//        List<String> playerList4 = mdao.getTopBestIncome1();
        
        int top3Income = mdao.getThirdBestIncome();
        int top2Income = mdao.getSecondBestIncome();
        int top1Income = mdao.getTopBestIncome();
        int h = playerList3.size();
        int a = listPlayer.size();
//        int k = playerList4.size();
        Player player1 = mdao.getPlayerByTotalMoney(top1Income);
        Player player2 = mdao.getPlayerByTotalMoney(top2Income);
        Player player3 = mdao.getPlayerByTotalMoney(top3Income);
        request.setAttribute("player1", player1);
        request.setAttribute("player2", player2);
        request.setAttribute("player3", player3);
        

        request.setAttribute("playerList", playerList);
        request.setAttribute("playerList2", playerList2);
        request.setAttribute("playerList3", playerList3);
//        request.setAttribute("playerList4", playerList4);
        request.setAttribute("listPlayer", listPlayer);
        request.setAttribute("a", a);
        request.setAttribute("top1Income", reformat(String.valueOf(top1Income)));
        request.setAttribute("top2Income", reformat(String.valueOf(top2Income)));
        request.setAttribute("top3Income", reformat(String.valueOf(top3Income)));
        request.setAttribute("h", h);
//        request.setAttribute("k", k);
        request.setAttribute("full_name", full_name);
        } catch (SQLException ex) {
            System.out.println("doGetLeaderBoard" + ex.getMessage());;
        }
//            List<Actor> actorList = adao.getAllActor();
//            List<GameType> cateList = cdao.getGameType();
//            List<PlayerGame> gameList = mdao.getPlayerGame();
//            List<Player_category> mcList = cdao.getPlayerCategory();
//            request.setAttribute("mcList", mcList);
//            request.setAttribute("actorList", actorList);
//            request.setAttribute("cateList", cateList);
//            request.setAttribute("movieActorList", movieActorList);
//            response.getWriter().print(playerList.get(0).getDirected_by());\
        request.getRequestDispatcher("common/leaderboard.jsp").forward(request, response);
    }
    

    private String reformat(String originalString) {
        String string = originalString;
        long number = Long.parseLong(originalString);
        DecimalFormat decimalFormat = new DecimalFormat("#,###");
        String separatedString = decimalFormat.format(number);
        return separatedString;
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
