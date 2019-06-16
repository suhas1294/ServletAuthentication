<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>This is videos page</h1>
<%
	
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	
	if(session.getAttribute("uname") == null){
		response.sendRedirect("login.jsp");
	}
%>
<iframe width="966" height="543" src="https://www.youtube.com/embed/jc1t0KFsOcs?list=PLsyeobzWxl7oRKwDi7wjrANsbhTX0IK0J" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<br>
<form action="Logout" method="post">
	<input type="submit" value="Logout">
</form>
</body>
</html>