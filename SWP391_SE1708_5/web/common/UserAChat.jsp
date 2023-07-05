<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User A Chat</title>
    <!-- Add your CSS stylesheets here -->
    <style>
        .message {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div id="chat-box"></div>
    <input type="text" id="message-input" placeholder="Type your message..." />
    <button onclick="sendMessage()">Send</button>
    <!-- Add your JavaScript code here -->
    <script>
        var socket = new WebSocket("ws://" + window.location.host + "<%= request.getContextPath() %>/chat/usera");

        socket.onmessage = function (event) {
            var message = event.data;
            displayMessage(message);
        };

        function sendMessage() {
            var messageInput = document.getElementById("message-input");
            var message = messageInput.value;
            socket.send(message);
            messageInput.value = "";
        }

        function displayMessage(message) {
            var chatBox = document.getElementById("chat-box");
            var messageDiv = document.createElement("div");
            messageDiv.className = "message";
            messageDiv.textContent = message;
            chatBox.appendChild(messageDiv);
        }
    </script>
</body>
</html>
