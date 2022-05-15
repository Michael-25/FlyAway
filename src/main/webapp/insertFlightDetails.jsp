<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Management</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<%@include file="navigationBar.jsp" %>
	<div align="center">
		<h2 style="margin: 30px" class="indexPageNavBar">Enter New Flight Details below</h2>

		<form action="flightDetails" method="post">
			<table border="1" cellpadding="3">
				<tr>
					<th>Airline Name :</th>
					<td><input type="text" name="airlines"></td>
				</tr>
				<tr>
					<th>Flight Name :</th>
					<td><input type="text" name="flightName"></td>
				</tr>
				<tr>
					<th>Source :</th>
					<td><input type="text" name="source"></td>
				</tr>
				<tr>
					<th>Destination :</th>
					<td><input type="text" name="destination"></td>
				</tr>
				<tr>
					<th>Price :</th>
					<td><input type="number" name="price"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="Save" class="btn btn-warning btn-sm">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div align="center" style="margin-top: 20px">
		<a href="showAdminPage.jsp" class="black">Back to Admin Page</a>
	</div>	
</body>
</html>