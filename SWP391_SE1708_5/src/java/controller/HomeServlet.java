/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DB.User_DetailsDAO;
import DB.Game_TypeDAO;
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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
//import model.Actor;
//import model.Category;
//import model.Movie;
//import model.MovieActor;
//import model.Movie_category;
import model.Player;

/**
 *
 * @author Administrator
 */
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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
//            response.getWriter().print(playerList.get(0).getDirected_by());
        request.getRequestDispatcher("common/home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
