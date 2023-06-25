<%-- 
    Document   : chat
    Created on : Jun 24, 2023, 1:08:08 PM
    Author     : Acer
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chat</title>
        <style>
            #chatArea {
                height: 300px;
                overflow-y: scroll;
                border: 1px solid #ccc;
                padding: 10px;
            }
        </style>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            // Function to send a message to the server
            function sendMessage() {
                var message = $('#messageInput').val();
                $.post('ChatServlet', {action: 'send', message: message});
                $('#messageInput').val('');
            }

            // Function to update the chat area with new messages
            function updateChat(messages) {
                $('#chatArea').append(messages);
                $('#chatArea').scrollTop($('#chatArea')[0].scrollHeight);
            }

            // Function to fetch the chat history from the server
            function fetchChatHistory() {
                $.get('ChatServlet', {action: 'history'}, function (data) {
                    updateChat(data);
                });
            }

            // Function to periodically fetch new messages from the server
            function fetchNewMessages() {
                $.get('ChatServlet', {action: 'new'}, function (data) {
                    updateChat(data);
                });
            }

            // Polling interval for fetching messages (in milliseconds)
            var pollingInterval = 2000;

            // Fetch the chat history initially
            fetchChatHistory();

            // Start fetching new messages periodically
            setInterval(fetchNewMessages, pollingInterval);
        </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div id="chatArea"></div>
        <input type="text" id="messageInput" />
        <button onclick="sendMessage()">Send</button>
    </body>
</html>
