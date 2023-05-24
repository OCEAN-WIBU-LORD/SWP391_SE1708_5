/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DB.User_DetailsDAO;
import DB.Game_TypeDAO;
import DB.PlayerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Actor;
import model.Category;
import model.Movie;
import model.MovieActor;
import model.Movie_category;
import model.Player;

/**
 *
 * @author Administrator
 */
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            request.setCharacterEncoding("UTF-8");
            PlayerDAO mdao = new PlayerDAO();
            Game_TypeDAO adao = new Game_TypeDAO();

            List<Player> playerList = mdao.getTop5GoodPlayer();
            List<Actor> actorList = adao.getAllActor();
            List<Category> cateList = cdao.getAllCategory();
            List<MovieActor> movieActorList = mdao.getMovieActor();
            List<Movie_category> mcList = cdao.getMovieCategory();
            
            request.setAttribute("mcList", mcList);
            request.setAttribute("movieList", movieList);
            request.setAttribute("actorList", actorList);
            request.setAttribute("cateList", cateList);
            request.setAttribute("movieActorList", movieActorList);

            response.getWriter().print(movieList.get(0).getDirected_by());
            request.getRequestDispatcher("common/home.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(HomeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
