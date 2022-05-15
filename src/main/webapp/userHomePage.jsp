<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway - User</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link href="userstyle.css" rel="stylesheet" type="text/css">
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
		<div class="col-md-6 login-form-2">
			<h3>Search Flight here</h3>
			<form action="searchFlight" method="post">
				<div class="form-group">
					<input name="date" type="date" class="form-control"
						style="width: 300px" placeholder="Date of Travel in YYYY-MM-DD *" />
				</div>
				<div class="form-group">
					<input name="source" type="text" class="form-control"
						style="width: 300px" placeholder="Source *" />
				</div>
				<div class="form-group">
					<input name="destination" type="text" class="form-control"
						style="width: 300px" placeholder="Destination *" />
				</div>
				<div class="form-group">
					<input name="numberOfPass" type="number" class="form-control"
						style="width: 300px" placeholder="Number of Travelers *"/>
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-info" value="Search" />
				</div>
			</form>
		</div>
		
		<div align="center">
				<a href="index.jsp" class="black">Back to Home Page</a>
		</div>
	</div>

</body>
</html>