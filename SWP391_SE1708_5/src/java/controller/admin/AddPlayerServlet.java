/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import DB.GameDAO;
import DB.Game_PlayedDAO;
import DB.Game_TypeDAO;
import DB.PlayerDAO;
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
import model.Player;
import model.Game;
import model.Game_Type;
import model.Paging;

/**
 *
 * @author Nguyen Van Ky
 */
public class AddPlayerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
          Object obj = session.getAttribute("role");
          if(obj == null || !obj.equals("admin")){
              response.sendRedirect("login");
             
          }else{
              String updaters = request.getParameter("updaters");
            if(updaters != null){
                request.setAttribute("updaters", "true");
            }
        try {
            Game_TypeDAO cdao = new Game_TypeDAO();
            PlayerDAO mdao = new PlayerDAO();
            List<Player> playerList = mdao.getAllPlayer();
            String n = String.valueOf(playerList.size());
            Object currentPage = request.getParameter("paging");
            request.setAttribute("n", n);
            int page =1;
            if (currentPage == null){
                response.sendRedirect("player?paging=1");
            } else {
                try {
                    page = Integer.parseInt(currentPage.toString());
                } catch (Exception e) {
                    page = 1;
                }
                Object itemPerPage = request.getParameter("accPerPage");
                int accPerPage = 10;
                if (itemPerPage != null){
                    accPerPage = Integer.parseInt(itemPerPage.toString());
                }
                Paging paging = new Paging(page, playerList.size(), accPerPage);
                List<Player> listPlayerPage = new ArrayList<>();
                for (int i=paging.getStartItem(); i<= paging.getEndItem(); i++){
                    listPlayerPage.add(playerList.get(i));
                }
                request.setAttribute("playerList", listPlayerPage);
                request.setAttribute("page", paging);
                request.setAttribute("currentPage", page);
                request.getRequestDispatcher("addplayer.jsp").forward(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AddPlayerServlet.class.getName()).log(Level.SEVERE, null, ex);
             response.getWriter().print("something wrong");
        }
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
            String gender = request.getParameter("gender");
            String phone_number = request.getParameter("phone_number");
            String num_of_star = request.getParameter("num_of_star");
            String link_image = request.getParameter("link_image");
            String imcome = request.getParameter("imcome");
            String status_player = request.getParameter("status_player");
            String description = request.getParameter("description");

            Game_TypeDAO cdao = new Game_TypeDAO();
            PlayerDAO mdao = new PlayerDAO();
            List<Game_Type> game_typeList = cdao.getAllGameType();
            List<Player> playerList = mdao.getAllPlayer();
            response.getWriter().print(new Player(player_id, player_name, gender, phone_number, 0, player_id, link_image, Double.NaN, status_player,description));
            mdao.addPlayer(new Player(player_id, player_name, gender, phone_number, 0, player_id, link_image, Double.NaN, status_player,description));
            int lastPlayerID = Integer.parseInt(playerList.get(playerList.size()-1).getPlayer_id());
            for (Game_Type game_type : game_typeList) {
                String cate = request.getParameter(game_type.getGameType_name());
                if(cate != null){
                    mdao.addMovieCategory(new Game_Type(lastPlayerID+1, category.getCate_id()));
                }
                
//response.getWriter().println(cate);
            }
            response.sendRedirect("addplayer?updaters=true");
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
