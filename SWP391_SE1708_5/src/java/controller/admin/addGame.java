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
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Game;

/**
 *
 * @author ADMIN
 */
public class addGame extends HttpServlet {

    private GameDAO dao = new GameDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addGame</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addGame at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            //        processRequest(request, response);
            GameDAO dao = new GameDAO();
            ArrayList<Game> data = dao.getListGame();
            request.setAttribute("gameList", data);
            Game_TypeDAO gt = new Game_TypeDAO();
            request.setAttribute("listGameType", gt.getAllGameType());
            request.getRequestDispatcher("addGameForm.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(addGame.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        if (dao.checkGameIDExist(id)) {
            // handle error: game with this id already exists
            request.setAttribute("errorMessage", "A game with this ID already exists.");
            request.getRequestDispatcher("addGameForm.jsp").forward(request, response);
        } else {
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            Game game = new Game(id, name, description);
            dao.addGame(game);

            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("window.opener.location.reload();");
            out.println("window.close();");
            out.println("</script>");
        }
    }
}

