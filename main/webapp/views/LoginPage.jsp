<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="model.UserBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>


	<%

	if (session.getAttribute("userBean") == null) {

		response.sendRedirect("index.jsp");

	} else {
		
		UserBean userBean = (UserBean) session.getAttribute("userBean");
		out.print("<h1>Welcome " + userBean.getUser() + "</h1>");
		out.print("<h1> " +"</h1><br><img src=\"https://i.pinimg.com/originals/6e/e0/52/6ee0523a9d33267034cdc4c095e36098.gif\">");
		out.print("<form action=\"" + request.getContextPath() + "/RemoveSessionServlet\" method=\"POST\">");
		out.print("<input type=\"submit\" value=\"Logout\" />");
		out.print("</form>");

	}
	%>


</body>
</html>
