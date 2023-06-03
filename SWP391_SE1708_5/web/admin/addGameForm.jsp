<%-- 
    Document   : addGameForm
    Created on : Jun 3, 2023, 8:20:24 AM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add Game</title>
    </head>
    <body>
        <h1>Add Game</h1>
        <c:if test="${not empty errorMessage}">
            <p style="color: red;">${errorMessage}</p>
        </c:if>
        <form action="addGame" method="post">
            <label for="id">ID:</label><br/>
            <input type="text" id="id" name="id"/><br/>
            <label for="name">Name:</label><br/>
            <input type="text" id="name" name="name"/><br/>
            <label for="description">Description:</label><br/>
            <textarea id="description" name="description"></textarea><br/>
            <input type="submit" value="Add Game"/>
        </form>
    </body>
</html>

