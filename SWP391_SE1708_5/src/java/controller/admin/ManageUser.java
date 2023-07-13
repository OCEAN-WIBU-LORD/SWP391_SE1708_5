/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import DB.User_DetailsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User_Details;

/**
 *
 * @author Cuthi
 */
@WebServlet(name = "ManageUser", urlPatterns = {"/admin/manageUser"})

public class ManageUser extends HttpServlet {

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
            out.println("<title>Servlet ManageUser</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ManageUser at " + request.getContextPath() + "</h1>");
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
//        processRequest(request, response);
        User_DetailsDAO udDAO = new User_DetailsDAO();
        ArrayList<User_Details> userList = udDAO.getAllUser();
        request.setAttribute("n", userList.size());
        request.setAttribute("userList", userList);
        Object obj = request.getParameter("user_id");
        if (obj != null){
            User_Details ud = udDAO.getUserById(obj.toString());
            System.out.println(ud.getStatus());
            request.setAttribute("user", ud);
        }
        request.getRequestDispatcher("manageUser.jsp").forward(request, response);
        
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
        String playerId = request.getParameter("id");
        User_DetailsDAO udDAO = new User_DetailsDAO();
        User_Details user = udDAO.getUserById(playerId);
        
        String balance = request.getParameter("balance");
        String status = request.getParameter("select_status");
        double income = 0;
        try{
            income = Double.parseDouble(balance);
            if (income<0){
                income = user.getBalance();
            }
        }catch (Exception e){
            income = user.getBalance();
        }
        user.setStatus(Integer.parseInt(status));
        user.setBalance(income);
        udDAO.updateAccount(user);
        response.sendRedirect("manageUser");
        
//        ArrayList<User_Details> userList = udDAO.getAllUser();
//        request.setAttribute("n", userList.size());
//        request.setAttribute("userList", userList);
//        Object obj = request.getParameter("user_id");
//        if (obj != null){
//            User_Details ud = udDAO.getUserById(obj.toString());
//            request.setAttribute("user", ud);
//        }
//        request.getRequestDispatcher("manageUser.jsp").forward(request, response);
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
