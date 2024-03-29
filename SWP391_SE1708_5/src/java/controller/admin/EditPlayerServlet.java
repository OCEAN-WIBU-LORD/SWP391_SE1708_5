/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

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
import model.Game;
import model.Player;
import model.Game_Type;

/**
 *
 * @author Nguyen Van Ky
 */
public class EditPlayerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            PlayerDAO mdao = new PlayerDAO();
            String player_id = request.getParameter("player_id");
            Player player = mdao.getPlayerByID(player_id);
//            Game_TypeDAO cdao = new Game_TypeDAO();
            List<Player> playerList = mdao.getAllPlayer();
//            List<Game_Type> categoryList = cdao.getAllGame_Type();
//            List<Movie_category> mcList = cdao.getMovieCategory();

//            request.setAttribute("categoryList", categoryList);
            request.setAttribute("playerList", playerList);
//            request.setAttribute("mcList", mcList);
            response.getWriter().print("ddddsss");

            if (player != null) {
                request.setAttribute("player", player);
                request.getRequestDispatcher("editplayer.jsp").forward(request, response);
            } else {
                response.getWriter().print("player with id: " + player_id + "not exist");
            }
        } catch (SQLException ex) {
            Logger.getLogger(EditPlayerServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            String player_id = request.getParameter("player_id");
            String player_name = request.getParameter("player_name");
            String description = request.getParameter("description");
            String gender = request.getParameter("gender");
            String phone_number = request.getParameter("phone_number");
            int num_of_star = Integer.parseInt(request.getParameter("num_of_star"));
            String password = request.getParameter("password");
            String link_image = request.getParameter("link_image");
            String income = request.getParameter("income");
            String status_player = request.getParameter("status_player");

            Game_TypeDAO cdao = new Game_TypeDAO();
            PlayerDAO mdao = new PlayerDAO();
//            List<Movie_category> mcList = cdao.getMovieCategory();
//            List<Category> categoryList = cdao.getAllCategory();
            List<Player> playerList = mdao.getAllPlayer();
            
//            response.getWriter().print(new Player(player_id, player_name, description, gender1, phone_number, num_of_star, password, link_image, Double.valueOf(income), (status_player != null ? "1" : "0").toString());
            mdao.updatePlayer(new Player(player_id, player_name, gender, phone_number, num_of_star, password, link_image, Double.parseDouble(income), status_player != null ? "1" : "0", description));

            
//             for (Game_Type category : Game_Type) {
//                String cate = request.getParameter(category.getCate_name());
//                int cateid = category.getCate_id();
//                if(cate != null && !cdao.getCheckMovieCategory(new Game_Type(movie_id2, cateid))){
//                    mdao.addMovieCategory(new Game_Type(movie_id2, cateid));
//                }
//                if(cate == null && cdao.getCheckGame_Type(new Game_Type(movie_id2, cateid))){
//                  
//            
//                    mdao.deleteGame_Type(movie_id, String.valueOf(category.getCate_id()));
//                }
//            }
            
          
//response.getWriter().println(cate);

            response.sendRedirect("addplayer");
        } catch (SQLException ex) {
            Logger.getLogger(AddPlayerServlet.class.getName()).log(Level.SEVERE, null, ex);
            response.getWriter().print("something wrong");
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
