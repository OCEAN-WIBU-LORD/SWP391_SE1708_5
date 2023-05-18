<%-- 
    Document   : bookingmovie
    Created on : Mar 12, 2023, 5:43:14 PM
    Author     : Nguyen Van Ky
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
  <h2>Select Menu</h2>
  <p>To style a select menu in Bootstrap 5, add the .form-select class to the select element:</p>
  <form action="/action_page.php">
    <label for="sel1" class="form-label">Select list (select one):</label>
    <select class="form-select" id="sel1" name="sellist1">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
    </select>
    <br>
    
    <label for="sel2" class="form-label">Mutiple select list (hold shift to select more than one):</label>
    <select multiple class="form-select" id="sel2" name="sellist2">
        <c:forEach items="${lpList}" var="o">
            
            <option value="${o.location_id}">${o.location_name}, ${o.position_name}, ${o.location_type},${o.time},${o.date}</option>
        </c:forEach>
    </select>
    <button type="submit" class="btn btn-primary mt-3">Submit</button>
  </form>
</div>

</body>
</html>