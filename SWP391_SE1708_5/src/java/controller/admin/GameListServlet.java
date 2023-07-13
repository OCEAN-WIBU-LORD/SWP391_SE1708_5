/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import DB.GameDAO;
import DB.Game_TypeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Game;
import model.Game_Type;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "GameListServlet", urlPatterns = {"/admin/GameList"})

public class GameListServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet GameListServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet GameListServlet at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        Object role = session.getAttribute("role");
        if (role == null) {
            response.sendRedirect("login");
        } else {
            if (role.equals("user")) {
                response.sendRedirect("Unauthorized.html");
            } else {
                try {
                    GameDAO dao = new GameDAO();
                    ArrayList<Game> data = dao.getListGame();
                    request.setAttribute("gameList", data);
                    Game_TypeDAO gt = new Game_TypeDAO();
                    request.setAttribute("listGameType", gt.getAllGameType());
                    String gameId = request.getParameter("game");
                    if (!(gameId==null || gameId.isEmpty())){
                        GameDAO gameDAO = new GameDAO();
                        request.setAttribute("game", gameDAO.getGame(gameId));
                    }
                    
                    request.getRequestDispatcher("GameList.jsp").forward(request, response);
                } catch (SQLException ex) {
                    Logger.getLogger(GameListServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
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
        GameDAO gd = new GameDAO();
        try {
            String name = request.getParameter("name_game");
            String description = request.getParameter("description");
            String gameType = request.getParameter("game_type");
            String gameId = request.getParameter("game");
            Game g = gd.getGame(gameId);
            Game_TypeDAO gtd = new Game_TypeDAO();
            boolean duplicateName = gd.checkGameNameExist(name);         
            
            if (!(gameId==null || gameId.isEmpty())){
                //update
                if (g.getName() == name){
                    Game game = gd.getGame(gameId);
                    game.setName(name);
                    game.setDiscription(description);
                    game.setGameType(gameType);
                    gd.updateGame(game);
                } else {
                    if (duplicateName == true){
                        request.setAttribute("errorMessage", "This game has exxist");
                    }else {
                        Game game = gd.getGame(gameId);
                        game.setName(name);
                        game.setDiscription(description);
                        game.setGameType(gameType);
                        gd.updateGame(game);
                    }
                }
            } else {
                if (duplicateName == true){
                    request.setAttribute("errorMessage", "This game has exxist");
                } else {
                    Game game = new Game(String.valueOf(gd.getListGame().size()+1), name, description, gameType);
                    gd.addGame(game);
                }
            }
            
            request.setAttribute("game", gd.getGame(gameId));
            request.setAttribute("listGameType", gtd.getAllGameType());
            request.setAttribute("gameList", gd.getListGame());
            request.getRequestDispatcher("GameList.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(addGame.class.getName()).log(Level.SEVERE, null, ex);
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
