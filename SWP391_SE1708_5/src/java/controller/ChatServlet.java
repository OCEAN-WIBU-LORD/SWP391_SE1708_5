/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Acer
 */
public class ChatServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // List to store the chat messages
    private List<String> chatHistory = new ArrayList<>();

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
            out.println("<title>Servlet ChatServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChatServlet at " + request.getContextPath() + "</h1>");
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
       String action = request.getParameter("action");

        if (action != null) {
            switch (action) {
                case "history":
                    sendChatHistory(response);
                    break;
                case "new":
                    sendNewMessages(request, response);
                    break;
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
        String action = request.getParameter("action");

        if (action != null && action.equals("send")) {
            String message = request.getParameter("message");
            addMessageToChatHistory(message);
        }
    }
    
    private void sendChatHistory(HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        out.println(chatHistoryToJson());
        out.close();
    }

    private void sendNewMessages(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int lastMessageIndex = Integer.parseInt(request.getParameter("lastMessageIndex"));
        List<String> newMessages = getNewMessages(lastMessageIndex);

        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        out.println(messagesToJson(newMessages));
        out.close();
    }

    private synchronized void addMessageToChatHistory(String message) {
        chatHistory.add(message);
    }

    private List<String> getNewMessages(int lastMessageIndex) {
        List<String> newMessages = new ArrayList<>();
        int totalMessages = chatHistory.size();

        if (lastMessageIndex < totalMessages) {
            for (int i = lastMessageIndex; i < totalMessages; i++) {
                newMessages.add(chatHistory.get(i));
            }
        }

        return newMessages;
    }

    private String chatHistoryToJson() {
        StringBuilder json = new StringBuilder();
        json.append("[");

        for (String message : chatHistory) {
            json.append("\"").append(message).append("\",");
        }

        if (!chatHistory.isEmpty()) {
            // Remove the trailing comma if there are chat history messages
            json.deleteCharAt(json.length() - 1);
        }

        json.append("]");

        return json.toString();
    }

    private String messagesToJson(List<String> messages) {
        StringBuilder json = new StringBuilder();
        json.append("[");

        for (String message : messages) {
            json.append("\"").append(message).append("\",");
        }

        if (!messages.isEmpty()) {
            // Remove the trailing comma if there are new messages
            json.deleteCharAt(json.length() - 1);
        }

        json.append("]");

        return json.toString();
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
