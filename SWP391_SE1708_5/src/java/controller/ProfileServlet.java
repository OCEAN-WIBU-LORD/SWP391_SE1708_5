/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DB.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;
import model.User_Details;

/**
 *
 * @author Nguyen Van Ky
 */
public class ProfileServlet extends HttpServlet {

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
            out.println("<title>Servlet ProfileServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProfileServlet at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Object obj_user = session.getAttribute("usercurrent");
        if (obj_user != null) {
            String user_id = request.getParameter("user_id");
            User_Details acount = (User_Details) obj_user;

            if (user_id != null) {
                if (user_id.equals(acount.getUser_id()+ "")) {
                    request.getRequestDispatcher("common/profile.jsp").forward(request, response);
                } else {
                    response.sendRedirect("home");
                }
            } else {
                response.sendRedirect("home");

            }
            String messenger = request.getParameter("messenger");
            if (messenger != null) {

                request.setAttribute("messenger", "upadate sucsessfuly");
                request.getRequestDispatcher("common/profile.jsp").forward(request, response);
            }
        } else {

            response.sendRedirect("home");
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
        String user_id = request.getParameter("user_id");
        String gender = request.getParameter("gender");
        String phonenumber = request.getParameter("phonenumber");
        String gmail = request.getParameter("gmail");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        String link_image = request.getParameter("link_image");
        if (user_id.equals("")) {
            request.setAttribute("mess", "fill all field, please");
            request.getRequestDispatcher("common/profile.jsp").forward(request, response);
            return;
        }
        if (gender.equals("")) {
            request.setAttribute("mess", "fill all field, please");
            request.getRequestDispatcher("common/profile.jsp").forward(request, response);
            return;
        }
        if (phonenumber.equals("")) {
            request.setAttribute("mess", "fill all field, please");
            request.getRequestDispatcher("common/profile.jsp").forward(request, response);
            return;
        }
        if (gmail.equals("")) {
            request.setAttribute("mess", "fill all field, please");
            request.getRequestDispatcher("common/profile.jsp").forward(request, response);
            return;
        }
        if (address.equals("")) {
            request.setAttribute("mess", "fill all field, please");
            request.getRequestDispatcher("common/profile.jsp").forward(request, response);
            return;
        }
        if (password.equals("")) {
           
            request.setAttribute("mess", "fill all field, please");
            request.getRequestDispatcher("common/profile.jsp").forward(request, response);
            return;
        }
        if (link_image.equals("")) {
            request.setAttribute("mess", "fill all field, please");
            request.getRequestDispatcher("common/profile.jsp").forward(request, response);
            return;
        }

         adao = new AccountDAO();
        Account accountUpdate =  new Account(Integer.valueOf(acc_id), username, password, firstname, lastname, Integer.parseInt(age), (gender != null ? 1 : 0), email, 0, 0);
        adao.updateAccount(accountUpdate);
        HttpSession session = request.getSession();
        Object obj_acc = session.getAttribute("usercurrent");
        if(obj_acc != null){
            Account account = (Account) obj_acc;
            accountUpdate.setPoints(account.getPoints());
            session.removeAttribute("usercurrent");
            session.setAttribute("usercurrent",accountUpdate);
        }
        request.setAttribute("messenger", "upadate sucsessfuly");
        request.getRequestDispatcher("common/profile.jsp").forward(request, response);

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
