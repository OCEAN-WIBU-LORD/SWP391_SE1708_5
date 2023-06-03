/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Game;

/**
 *
 * @author ADMIN
 */
public class addGameForm extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String role = session.getAttribute("role").toString();
        if (role.isEmpty()) {
            response.sendRedirect("Unauthorized.html");
        } else {
            if (role.equals("user")) {
                response.sendRedirect("Unauthorized.html");
            } else {
                request.getRequestDispatcher("addGameForm.jsp").forward(request, response);
            }
        }
    }


}
