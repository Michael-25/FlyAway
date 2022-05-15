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
	<div align="center" style="margin-top: 50px">
		<table border="2" cellpadding="5">
			<caption style="caption-side:top">
				<h3 style="white-space: nowrap;" class="indexPageNavBar">Airlines and Flights</h3>
			</caption>
			<tr>
				<td><strong>Airline</strong></td>
				<td><strong>Flight Name</strong></td>
			</tr>
			<c:forEach var="flight" items="${flights}">
				<tr>
					<td><c:out value="${flight.getAirline()}"/></td>
					<td><c:out value="${flight.getFlightName()}"/></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div align="center" style="margin-top: 10px">
		<a href="showAdminPage.jsp" class="black">Back to Admin Page</a>
	</div>	
</body>
</html>