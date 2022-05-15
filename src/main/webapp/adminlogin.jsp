<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway - Admin</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand indexPageNavBar" href="index.jsp">FlyWay</a>
			</div>
		</div>
	</nav>
	<div align="center" class="marginTop">
		<div>
			<h3 class="indexPageNavBar">Admin Login</h3>
			<form action="login" method="post">
				<div class="form-group">
					<input name="adminUsername" type="text" class="form-control"
						style="width: 400px" placeholder="Admin Username *" />
				</div>
				<div class="from-group">
					<input name="adminPassword" type="password" class="form-control"
						style="width: 400px" placeholder="Admin Password">
				</div>
				<div class="form-group" style="margin-top: 10px;">
					<input type="submit" value="Login" class="btn btn-info">
				</div>
			</form>
		</div>
		<p align="center" style="color: red">If your Admin and logging in
			for the first time, please use "admin" as username and "admin" as
			password(both without quotes)</p>
		<br> <a href="index.jsp" style="color: black;">Back to User
			Home Page</a>
	</div>
</body>
</html>