/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import DB.Game_TypeDAO;
import DB.PlayerDAO;
import DB.UserDAO;
import DB.User_DetailsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Game_Type;
import model.Game;
import model.Player;
import model.User_Details;

/**
 *
 * @author Nguyen Van Ky
 */
public class AdminDashboardServlet extends HttpServlet {

      @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
          HttpSession session = request.getSession();
//        String bookingrs = request.getParameter("bookingrs");
        Object obj_acc = session.getAttribute("usercurrent");
        User_Details account = (User_Details) obj_acc;
          Object obj = session.getAttribute("role");
          if(obj == null){
              response.sendRedirect("login");
          }else{
              if(!obj.equals("admin")){
                  response.sendRedirect("login");
              }
              try {
            PlayerDAO mdao = new PlayerDAO();
            User_DetailsDAO udao = new User_DetailsDAO();
            Game_TypeDAO cdao = new Game_TypeDAO();
            List<Player> player_list = mdao.getAllPlayer();
            List<User_Details> user_list = udao.getAllUserDetails();
//            List<Game_TypeDAO> game_type_list = cdao.getAllGame_Type();

            double balance = 0;
            if (account != null){
                balance = account.getBalance();
            }
//            
            request.setAttribute("playerCount", (player_list.size()));
            request.setAttribute("userCount", (user_list.size()));
            request.setAttribute("accountMoney", balance);
            
            request.getRequestDispatcher("dashboard.jsp").forward(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(AdminDashboardServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
          }
        
        
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
