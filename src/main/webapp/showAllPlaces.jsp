<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<%@include file="navigationBar.jsp" %>
	<div align="center" style="margin: 50px">
		<h2 class="indexPageNavBar">Source and Destination</h2>
		<table border="2" cellpadding="8" class="black">
			<tr>
				<td><strong>Source</strong></td>
				<td><strong>Destination</strong></td>
			</tr>
			<c:forEach var="flight" items="${flights}">
				<tr>
					<td><c:out value="${flight.getSource()}"/></td>
					<td><c:out value="${flight.getDestination()}"/></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div align="center">
		<a href="showAdminPage.jsp" class="black">Back to Admin Page</a>
	</div>	
</body>
</html>