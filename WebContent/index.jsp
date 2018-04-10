<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="jquery-3.2.1.min.js"></script>
  </head>
  <body>
<form action="AdsbServ" method="POST">
<p>enter flight name:<input type='text' name=flightname></p>
	<table border= 10>
	<tr>
	<th>track</th>
	<th>HEX</th>
	<th>LAT</th>
	<th>LNG</th>
	<th>SPEED</th>
	<th>NAME</th>
	</tr>
	
<c:forEach items="${peopleList}" var="list">
<tr>
  <td>${list.track}</td>
  <td> ${list.hex}</td>
  <td>${list.lat}</td>
  <td>${list.lng}</td>
  <td> ${list.speed}</td>
  <td>${list.name}</td>
</tr>
</c:forEach>
 	</table>
	
<input type= submit value= submit />
</form>

</body>
</html>