<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login Page</title>
<link rel="stylesheet"
	href="<spring:url value="/resources/CSS/bootstrap.min.css"/>"
	type="text/css" />
</head>
<body onload='document.f.j_username.focus();'>
	<spring:url value="j_spring_security_check" var="forma" />
	
	<c:if test="${param.error != null}">
		<p class="alert-danger">greska pri loginu</p>
	</c:if>
	
	<div class="container">
	<h3>Login with Username and Password</h3>
	<form name='f' action="${forma}" method='POST'>
		<table>
			<tr>
				<td>User:</td>
				<td><input type='text' name='j_username' value=''></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='j_password' /></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit"
					value="Login" /></td>
			</tr>
		</table>
	</form>
	<p><a href=<spring:url value="/goToRegisterForm"/>>register</a></p>
	</div>
</body>
</html>