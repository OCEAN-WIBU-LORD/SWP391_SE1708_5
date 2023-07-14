/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import junit.framework.*;
import DB.BookingDAO;
import DB.PlayerDAO;
import DB.UserDAO;
import DB.User_DetailsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;
import model.Bookings;
import model.Player;
import model.User_Details;

/**
 *
 * @author Acer
 */
@WebServlet(name = "EditProfileServlet", urlPatterns = {"/EditProfileServlet"})
public class EditProfileServlet extends HttpServlet {

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
            out.println("<title>Servlet EditProfileServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditProfileServlet at " + request.getContextPath() + "</h1>");
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

        Object obj_acc = session.getAttribute("usercurrent");
        String player_id = request.getParameter("player_id");
            PlayerDAO mdao = new PlayerDAO();
            UserDAO u = new UserDAO();
//        if(!bookingrs.equals("")){
//            request.setAttribute("bookingrs", "true");
//        }
        if (obj_acc == null) {
             request.setAttribute("messenger", "Please Login");
            request.getRequestDispatcher("common/login.jsp").forward(request, response);
        }
        try {
            Player player = mdao.getPlayerByID(player_id);
         User_Details account = (User_Details) obj_acc;
         User_DetailsDAO udt = new User_DetailsDAO();
        String user_id = account.getUser_id() + "";
         User_Details udetail = udt.getUserDetailsById(user_id);
         request.setAttribute("udetail", udetail);
         String username = u.getUserName(user_id);
         String user_role  = udt.checkAdmin(user_id);
         request.setAttribute("username", username);
         request.setAttribute("user_role", user_role);
        BookingDAO bddao = new BookingDAO();
            List<Bookings> historyBooking = bddao.bookingList(user_id);
            List<Player> playerlist = mdao.getAllPlayer();
            int n = historyBooking.size();
            String m = u.getTotalHour(user_id);
            String totalmoney = u.getTotalMoneySpend(user_id);
             request.setAttribute("n", n);
             request.setAttribute("m", m);
             request.setAttribute("totalmoney", totalmoney);
             request.setAttribute("account", account);
             request.setAttribute("historyBooking", historyBooking);
             request.setAttribute("playerlist", playerlist);
             request.getRequestDispatcher("/common/editprofile.jsp").forward(request, response);
        } catch (SQLException ex) {
            System.out.println("doGetEditProfileServlet" + ex.getMessage());;
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
        HttpSession session = request.getSession();
        Object obj_acc = session.getAttribute("usercurrent");
        String player_id = request.getParameter("player_id");
            PlayerDAO mdao = new PlayerDAO();
            UserDAO u = new UserDAO();
//        if(!bookingrs.equals("")){
//            request.setAttribute("bookingrs", "true");
//        }
        if (obj_acc == null) {
             request.setAttribute("messenger", "Please Login");
            request.getRequestDispatcher("common/login.jsp").forward(request, response);
        }
        try {
            Player player = mdao.getPlayerByID(player_id);
         User_Details account = (User_Details) obj_acc;
         User_DetailsDAO udt = new User_DetailsDAO();
        String user_id = account.getUser_id() + "";
        String gender = account.getGender();
        String phonenumber = request.getParameter("phonenumber");
        String gmail = request.getParameter("gmail");
        
        String address = request.getParameter("address");
        String description = request.getParameter("description");
        String link_image = request.getParameter("link_image");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        
        User_Details account1 = new User_Details(user_id, gender, phonenumber, gmail, address, password, link_image, Double.NaN, description);
        udt.updateAccount(account1);
        
         User_Details udetail = udt.getUserDetailsById(user_id);
         request.setAttribute("udetail", udetail);
         String username = u.getUserName(user_id);  
         String user_role  = udt.checkAdmin(user_id);
         request.setAttribute("username", username);
         request.setAttribute("user_role", user_role);
        BookingDAO bddao = new BookingDAO();
            List<Bookings> historyBooking = bddao.bookingList(user_id);
            List<Player> playerlist = mdao.getAllPlayer();
            int n = historyBooking.size();
            String m = u.getTotalHour(user_id);
            String totalmoney = u.getTotalMoneySpend(user_id);
             request.setAttribute("n", n);
             request.setAttribute("m", m);
             request.setAttribute("totalmoney", totalmoney);
             request.setAttribute("account", account);
             request.setAttribute("historyBooking", historyBooking);
             request.setAttribute("playerlist", playerlist);
             request.getRequestDispatcher("/common/editprofile.jsp").forward(request, response);
        } catch (SQLException ex) {
            System.out.println("doGetEditProfileServlet" + ex.getMessage());;
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
