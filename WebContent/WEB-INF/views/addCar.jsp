<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a Car</title>
<link rel="stylesheet"
	href="<spring:url value="/resources/CSS/bootstrap.min.css"/>"
	type="text/css" />

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
				<form method="POST" action="<spring:url value="/add" />">
					<div class="form-group">
						<label>Manufacturer</label>
						 <select id="manufacturer"
							class="form-control" name="manufacturer">
							<option value=""></option>
							<option value="Volkswagen">Volkswagen</option>
							<option value="BMW">BMW</option>
							<option value="Audi">Audi</option>
							<option value="Opel">Opel</option>
							<option value="Mercedes">Mercedes</option>
						</select>
					</div>
					<div class="form-group">
						<label>Model</label>
						<input type="text" class="form-control" name="model"/>
					</div>
					<div class="form-group">
						<label>Year Of Production</label> 
						<select id="manufacturer"
							class="form-control" name="yearOfProduction">
							<option value=""></option>
							<option value="2007">2007</option>
							<option value="2008">2008</option>
							<option value="2009">2009</option>
							<option value="2010">2010</option>
							<option value="2011">2011</option>
							<option value="2012">2012</option>
							<option value="2013">2013</option>
							<option value="2014">2014</option>
							<option value="2015">2015</option>
						</select>
					</div>
					<div class="form-group">
						<label>Price per day</label>
						<div class="input-group">
							<div class="input-group-addon">$</div>
							<input type="text" class="form-control" id="exampleInputAmount"
								placeholder="Amount" name="pricePerDay">
							<div class="input-group-addon">.00</div>
						</div>
					</div>
					<center><input type="submit" class="btn btn-primary"></center>
				</form>
			</div>
		</div>
	</div>
	<br><br><br><br><br><br>
<jsp:include page="../jspFragments/footer.jsp"/>
</body>
</html>