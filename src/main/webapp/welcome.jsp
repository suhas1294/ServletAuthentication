<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

	if(session.getAttribute("uname") == null){
		response.sendRedirect("login.jsp");
	}
%>
Welcome ${uname} <br>
<a href="videos.jsp"> Link to videos page</a>

<form action="Logout" method="post">
	<input type="submit" value="Logout">
</form>
<h1></h1>
</body>
</html>