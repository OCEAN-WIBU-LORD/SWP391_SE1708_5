/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DB.PlayerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import model.Player;

/**
 *
 * @author Acer
 */
@WebServlet(name = "SearchBestBookingServlet", urlPatterns = {"/SearchBestBookingServlet"})
public class SearchBestBookingServlet extends HttpServlet {

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
            out.println("<title>Servlet SearchServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchServlet at " + request.getContextPath() + "</h1>");
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
        String search = String.valueOf(request.getParameter("searchInput"));
        PlayerDAO n = new PlayerDAO();
        try {
            List<Player> player = n.getTop5BestBookingPlayer();
            String message = "Hello";
            request.setAttribute("message", message);
            player = n.getTop5BestBookingPlayer();
            request.setAttribute("player", player);
            request.getRequestDispatcher("/common/search.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println("doPostSearch " + e.getMessage());
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
        String search = String.valueOf(request.getParameter("searchInput"));
        String action = request.getParameter("action");
        
        if (action != null && action.equals("1")) {
            int m = Integer.parseInt(action);
            request.setAttribute("action", action);
            request.getRequestDispatcher("/common/login.jsp").forward(request, response);

            if (action != null && action.equals("1")) {
                request.getRequestDispatcher("/common/login.jsp").forward(request, response);
            }
        }

        if (search == "") {
            try (PrintWriter out = response.getWriter()) {
                out.print("Please Enter Search Box");
                return;
            }
        }
        PlayerDAO n = new PlayerDAO();
        try {
            ArrayList<Player> player = n.searchPlayer1(search);
            String message = "Hello";
//            request.setAttribute("message", search);
//            ArrayList<Player> player = n.searchMoviePlayer);
            request.setAttribute("player", player);
            request.getRequestDispatcher("/common/search.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println("doPostSearch " + e.getMessage());
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
