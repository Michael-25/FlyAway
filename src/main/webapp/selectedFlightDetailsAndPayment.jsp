<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway - Booking</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@include file="navigationBar.jsp"%>
	<c:if test="${paymenDone == 'false'}">
		<c:set var="firstname" value="${passenger.getFirstname()}"
			scope="session"></c:set>
		<c:set var="lastname" value="${passenger.getLastname()}"
			scope="session"></c:set>
		<c:set var="age" value="${passenger.getAge()}" scope="session"></c:set>
		<c:set var="email" value="${passenger.getEmailId()}" scope="session"></c:set>
	</c:if>
	<div align="center" style="margin: 50px">
		<c:if test="${paymenDone}">
			<h3 class="indexPageNavBar">Payment Successful, Bon voyage!!</h3>
		</c:if>
		<table border="2" cellpadding="5">
			<caption style="caption-side: top;">
				<h2 class="indexPageNavBar">Passenger Details</h2>
			</caption>
			<tr>
				<td><strong>Passenger Name</strong></td>
				<td><strong>Passenger Age</strong></td>
				<td><strong>Passenger Email</strong></td>
			</tr>
			<tr>
				<td><c:out
						value="${passenger.getFirstname()} ${passenger.getLastname()} " /></td>
				<td><c:out value="${passenger.getAge()}" /></td>
				<td><c:out value="${passenger.getEmailId()}" /></td>
			</tr>
		</table>
		<hr>
		<table border="2" cellpadding="5">
			<caption style="caption-side: top;">
				<h2 class="indexPageNavBar">Selected Flight Details</h2>
			</caption>
			<tr>
				<td><strong>Airline</strong></td>
				<td><strong>Flight Name</strong></td>
				<td><strong>Source</strong></td>
				<td><strong>Destination</strong></td>
				<td><strong>Passengers</strong></td>
				<td><strong>Price</strong></td>
			</tr>
			<tr>
				<td><c:out value="${selectedFlight.getAirline()}" /></td>
				<td><c:out value="${selectedFlight.getFlightName()}" /></td>
				<td><c:out value="${selectedFlight.getSource()}" /></td>
				<td><c:out value="${selectedFlight.getDestination()}" /></td>
				<td><c:out value="${totalPassengers}" /></td>
				<td><c:out value="${totalPrice}" /></td>
			</tr>
		</table>
		<br>
		<c:choose>
			<c:when test="${paymenDone}">
				<h3>Total Amount Paid : ${totalPrice}</h3>
			</c:when>
			<c:otherwise>
				<a href="bookingDetails" class="btn btn-info black">Proceed to Pay <c:out
						value="${totalPrice}" /></a>
			</c:otherwise>
		</c:choose>
	</div>
	<div align="center">
		<a href="userHomePage.jsp" class="black">Back to Search Page</a>
	</div>
</body>
</html>