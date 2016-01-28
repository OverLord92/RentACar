<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a Car</title>
<link rel="stylesheet"
	href="<spring:url value="/resources/CSS/bootstrap.min.css"/>"
	type="text/css" />


<style>
.error {
	font-size: small;
	color: red;
}
</style>

</head>

<body style="background-color: #64C0E8">

	<jsp:include page="../jspFragments/header.jsp" />

	<div class="container">
		<h1>Rent A Kar</h1>
		<div class="jumbotron">DODAJ AUTO</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<spring:url value="/register" var="formUrl" />
				<form:form method="POST" action="${formUrl}" modelAttribute="user">
					<div class="form-group">
						<label for="username">Username</label>
						<form:input type="text" id="username" path="username"
							cssClass="form-control" name="username" />
						<form:errors path="username" cssClass="error"></form:errors>
					</div>
					<div class="form-group">
						<label for="email">Email</label>
						<form:input type="text" class="form-control" path="email"
							name="email" />
						<form:errors path="email" cssClass="error"></form:errors>
					</div>
					<div class="form-group">
						<label for="password">Password</label>
						<form:input type="text" id="password" path="password"
							class="form-control" name="password" />
						<form:errors path="password" cssClass="error"></form:errors>
					</div>
					<div class="form-group">
						<label for="confirmPassword">Confirm Password</label> <input
							type="text" id="confirmPassword" class="form-control"
							name="confirmPassword" />
					</div>

					<center>
						<input type="submit" class="btn btn-primary">
					</center>
				</form:form>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="../jspFragments/footer.jsp" />
</body>
</html>