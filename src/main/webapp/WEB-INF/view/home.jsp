<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<h2>Company Home Pagr</h2>
	<hr>
	<!-- Display user name and role -->
	<p>
		User: <security:authentication property="principal.username"/>	
		<br><br>
		Rolse (s): <security:authentication property="principal.authorities"/>
	</p>
	<hr>
	<p>
	Hello World !!!!!!!!!!
	</p>
	
	<hr>
	<!--  Add a link to point to /leaders ... this is for the managers -->
	
	<p>
		<a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
		(Only for Manager peeps)
	</p>
	
	<p>
		<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
		(Only for Admin)
	</p>
	
	<!-- Add button logout -->
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
		<input type="submit" value="Logout" />
	</form:form>
	
	
</body>
</html>