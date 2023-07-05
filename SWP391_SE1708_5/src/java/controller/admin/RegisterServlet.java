/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;


import DB.UserDAO;
import DB.User_DetailsDAO;
import DB.User_RoleDAO;
import controller.Logout;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Role;
import model.User_Details;

/**
 *
 * @author Nguyen Van Ky
 */
public class RegisterServlet extends HttpServlet {

    
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("common/register.jsp").forward(request, response);
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
            String user_id = request.getParameter("user_id");
            String repassword = request.getParameter("repass");
            String password = request.getParameter("pass");
            String full_name = request.getParameter("full_name");
            String phone_number = request.getParameter("phonenumber");
            String gmail = request.getParameter("gmail");
            String address = request.getParameter("address");
            boolean gender1 = request.getParameter("gender").equals("Male");
            String gender = String.valueOf(gender1);
            String gender3 = request.getParameter("gender");
            String link_image = request.getParameter("link_image");
            String balance = "0";
            
            
            UserDAO userDAO = new UserDAO();
            User_DetailsDAO adao = new User_DetailsDAO();
            User_RoleDAO udao = new User_RoleDAO();
             String mess = "";
           
            
            if (!password.equals(repassword) ) {
                mess = "comfirm password";
                request.setAttribute("mess", mess);
                request.getRequestDispatcher("logout.jsp").forward(request, response);
            } else if(adao.checkUser(user_id)) {
                mess = "user_id: "+user_id+" is used";
                request.setAttribute("mess", mess);
                request.getRequestDispatcher("common/register.jsp").forward(request, response);
                
            }else{
                HttpSession session = request.getSession(); 
                
                 userDAO.insertUser(user_id, full_name);
                 adao.insertUserDetails(user_id,gender3,phone_number,gmail,address,password,link_image,balance);

                 udao.insertRole(user_id);
                 
                 User_Details User_Details = adao.getUser_Details(user_id, password);
                
                 
                String role = adao.checkAdmin(String.valueOf(User_Details.getUser_id()));
                 session.setAttribute("usercurrent", User_Details);
                 
                 
                if(role.equals("user")){
                    response.sendRedirect("home");
                }else{
                    response.sendRedirect("admin/home");
                }
            }
        } catch (SQLException ex) {
           response.getWriter().print("something wrong");
        }
    }
    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
