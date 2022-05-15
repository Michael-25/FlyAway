<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Details</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<%@include file="navigationBar.jsp"%>
	<div align="center" style="margin: 50px">
		<table border="2" cellpadding="5">
			<caption style="caption-side: top;">
				<h2 class="indexPageNavBar">Flight Details</h2>
			</caption>
			<tr>
				<td><strong>Airline</strong></td>
				<td><strong>Flight Name</strong></td>
				<td><strong>Source</strong></td>
				<td><strong>Destination</strong></td>
				<td><strong>Price</strong></td>
				<c:if test="${isThisFromSearchServlet}">
					<td><strong>Book</strong></td>
				</c:if>
			</tr>
			<c:forEach var="flight" items="${flights}">
				<tr>
					<td><c:out value="${flight.getAirline()}" /></td>
					<td><c:out value="${flight.getFlightName()}" /></td>
					<td><c:out value="${flight.getSource()}" /></td>
					<td><c:out value="${flight.getDestination()}" /></td>
					<td><c:out value="${flight.getPrice()}" /></td>		
					<c:if test="${isThisFromSearchServlet}">
						<td>
							<c:set var="selectedFlightName" scope="session" value="${flight.getFlightName()}" ></c:set>
							<c:set var="selectedFlightAirline" scope="session" value="${flight.getAirline()}" ></c:set>
							<c:set var="selectedFlightSource" scope="session" value="${flight.getSource()}" ></c:set>
							<c:set var="selectedFlightDestination" scope="session" value="${flight.getDestination()}" ></c:set>
							<c:set var="selectedFlightPrice" scope="session" value="${flight.getPrice()}" ></c:set>
							<a href="userRegistration.jsp" class="white">Book Flight</a>
						</td>
					</c:if>	
				</tr>
			</c:forEach>
		</table>
	</div>
	<c:choose>
		<c:when test="${isThisFromSearchServlet}">
			<div align="center">
				<a href="userHomePage.jsp" class="black">Back to Search Page</a>
			</div>
		</c:when>
		<c:otherwise>
			<div align="center">
				<a href="showAdminPage.jsp" class="black">Back to Admin Page</a>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>