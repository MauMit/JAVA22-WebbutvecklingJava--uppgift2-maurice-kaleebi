<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>
	<h1>Welcome to my Website!</h1>
	<div class="loginbox">
	<form action="<%=request.getContextPath()%>/FirstServlet" method="POST">
	
		<h3>Username:</h3>
		<input type="text" name="username" placeholder="Enter Username" /> 
		<h3>Password:</h3>
		<input type="password" name="password" placeholder="********"   required/><br> 
		<input type="submit" value="Login" />
	</form>
</div>
</body>
</html>