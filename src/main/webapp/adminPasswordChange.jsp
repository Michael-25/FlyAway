<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Password Change Console</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<%@include file="navigationBar.jsp" %>
	<div align="center" style="margin: 50px">
		<h2 class="indexPageNavBar">Please enter the new password for Admin Account</h2>
		<form action="passwordChange" method="post">
			<div style="margin: 10px">
				<input type="hidden" name="admin" value="admin">
				<input type="text" placeholder="Enter New Password" name="newPassword" style="margin: 10px">
				<br>
				<input type="submit" value="Change Password" class="btn btn-warning btn-sm">
			</div>
		</form>
	</div>
	<div align="center">
		<a href="showAdminPage.jsp" class="white">Back to Admin Page</a>
	</div>	
</body>
</html>