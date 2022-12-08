<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../style.css">
</head>
<body>

<h1>Welcome to my Website!</h1>
<div class="loginbox">
<form action="<%=request.getContextPath()%>/FirstServlet" method="POST">
		<h3>Username:</h3>
		<input type="text" name="username" placeholder="Enter Username" />
		<h3>Password:</h3>
		<input type="password" name="password" placeholder="********"/><br> <input
			type="submit" value="Login" />
	</form>
</div>
	

<h2 class = h2Error> Incorrect Username or Password</h2>

</body>
</html>