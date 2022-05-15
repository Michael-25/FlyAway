<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyWay - User</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
                   <h3>User Registration</h3>
                   <form action="bookingDetails" method="post">
                         <div class="form-group">
                            <input name="firstname" type="text" class="form-control" style="width: 400px" placeholder="First Name *"/>
                        </div>
                        <div class="form-group">
                            <input name="lastname" type="text" class="form-control" style="width: 400px" placeholder="Last Name *"/>
                        </div>
                         <div class="form-group">
                            <input name="age" type="number" class="form-control" style="width: 400px" placeholder="Age *"/>
                        </div>
                        <div class="form-group">
                        	<input name="email" type="email" class="form-control" style="width: 400px" placeholder="Your Email *"/>
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-info" value="Register" />
                        </div>
                    </form>
         </div>
         <a href="userRegistration.jsp" class="black">Back to User Home Page</a>
	</div>
</body>
</html>