<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway - User</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.jsp">FlyWay</a>
			</div>
		</div>
	</nav>
	<div align="center" style="margin-top:13%;">
		<c:if test="${newRegistration}">
			<span style="color: green ">User ${newRegisteredUser} is registered. Login below</span>
		</c:if>
		<h3>User Login or Registration</h3>
		<br>
		New User? Register here <a href="userRegistration.jsp">Register</a>
		<br>
		Existing User? Login here <a href="userLogin.jsp">Login</a>
	</div>

</body>
</html>