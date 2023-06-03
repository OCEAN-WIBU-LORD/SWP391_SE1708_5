<%-- 
    Document   : updateGameForm
    Created on : Jun 3, 2023, 7:53:41 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Game</title>
</head>
<body>
    <h1>Update Game</h1>
    <form action="updateGame" method="post">
        <input type="hidden" name="id" value="${game.id}"/>
        <label for="name">Name:</label><br/>
        <input type="text" id="name" name="name" value="${game.name}"/><br/>
        <label for="description">Description:</label><br/>
        <textarea id="description" name="description">${game.discription}</textarea><br/>
        <input type="submit" value="Update Game"/>
    </form>
</body>
</html>

