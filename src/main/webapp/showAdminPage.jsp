<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Console</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@include file="navigationBar.jsp"%>
	<div align="center" class="marginTop">
		<h2 class="indexPageNavBar">Welcome, Admin</h2>
	</div>
	<div align="center" class="indexPageNavBar" style="margin-top: 5%">
		<a href="adminPasswordChange.jsp" class="btn btn-info"><span class="black">Change
			Password</span></a> <a href="viewAllPlaces" class="btn btn-info"><span class="black">View All
			Places</span></a> <a href="viewAllAirlines" class="btn btn-info"><span class="black">View All
			Airlines</span></a> <a href="viewAllFlightDetails" class="btn btn-info"><span class="black">View
			Flight Details</span></a> <a href="insertFlightDetails.jsp" class="btn btn-info"><span class="black">Insert
			New Flight Details</span></a>
	</div>
</body>
</html>