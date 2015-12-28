<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a Car</title>
<link rel="stylesheet"
	href="<spring:url value="/resources/CSS/bootstrap.min.css"/>"
	type="text/css" />


<style>
	.error{
	font-size: small;
	color: red;
	}
</style>

</head>

<body style="background-color:#64C0E8">

	<jsp:include page="../jspFragments/header.jsp"/>
	
	<div class="container">
		<h1>Rent A Kar</h1>
		<div class="jumbotron">DODAJ AUTO</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<spring:url value="/add" var="formUrl"/>
				<form:form method="POST" action="${formUrl}" modelAttribute="car">
					<div class="form-group">
						<label>Manufacturer</label>
						 <form:select id="manufacturer" path="manufacturer" items="${manufacturers}"
							cssClass="form-control" name="manufacturer" />
							<form:errors path="manufacturer" cssClass="error"></form:errors>
							
					</div>
					<div class="form-group">
						<label>Model</label>
						<form:input type="text" class="form-control" path="model" name="model"/>
						<form:errors path="model" cssClass="error"></form:errors>
					</div>
					<div class="form-group">
						<label>Year Of Production</label> 
						<form:select id="manufacturer" path="yearOfProduction"
							class="form-control" name="yearOfProduction" items="${productionYears}" />
						<form:errors path="yearOfProduction" cssClass="error"></form:errors>
					</div>
					<div class="form-group">
						<label>Price per day</label>
						<div class="input-group">
							<div class="input-group-addon">$</div>
							<form:input type="text" class="form-control" path="pricePerDay"
								placeholder="Amount" name="pricePerDay" />
							<div class="input-group-addon">.00</div>
						</div>
					</div>
					<center><input type="submit" class="btn btn-primary"></center>
				</form:form>
			</div>
		</div>
	</div>
	<br><br><br><br><br><br>
<jsp:include page="../jspFragments/footer.jsp"/>
</body>
</html>