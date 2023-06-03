<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Game"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Game List Management</title>
        <style>
            body {
                font-family: Arial, sans-serif;
            }
            table {
                border-collapse: collapse;
                width: 100%;
            }
            th, td {
                text-align: left;
                padding: 8px;
            }
            tr:nth-child(even) {
                background-color: #f2f2f2;
            }
            th {
                background-color: #4CAF50;
                color: white;
            }
        </style>

        <script>
            function openAddForm() {
                window.open("addGameForm", "Add Game", "width=500,height=500");
            }

            function openUpdateForm(gameId) {
                window.open("updateGameForm?id=" + gameId, "Update Game", "width=500,height=500");
            }

            function confirmDelete(gameId) {
                if (confirm("Are you sure you want to delete this game?")) {
                    window.location.href = "deleteGame?id=" + gameId;
                }
            }
        </script>
    </head>
    <body>
        <h1>Game List Management</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="game" items="${data}">
                <tr>
                    <td>${data.id}</td>
                    <td>${data.name}</td>
                    <td>${data.discription}</td>
                    <td>
                        <a href="#" onclick="openUpdateForm(${data.id})">Update</a> |
                        <a href="#" onclick="confirmDelete(${data.id})">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <h2>Add a new game</h2>
        <button onclick="openAddForm()">Add Game</button>

    </body>
</html>
