<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Available Cars</title>
<link rel="stylesheet"
	href="<spring:url value="/resources/CSS/bootstrap.min.css"/>"
	type="text/css" />
</head>
<body style="background-color:#64C0E8">

	<jsp:include page="../jspFragments/header.jsp" />

	<div class="container">
		<h1>Rent A Kar</h1>
		<div class="jumbotron">Najjeftiniji i najkvalitetniji u gradu, ako ne i sire.</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<form method="POST" action="<spring:url value="search" />">
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
						<label>Price per day</label>
						<div class="input-group">
							<div class="input-group-addon">$</div>
							<input type="text" class="form-control" 
								placeholder="Amount" name="fromPricePerDay" />
							<div class="input-group-addon">.00</div>
						</div>
					</div>
					<div class="form-group">
						<label>Price per day</label>
						<div class="input-group">
							<div class="input-group-addon">$</div>
							<input type="text" class="form-control" 
							placeholder="Amount" name="toPricePerDay" />
							<div class="input-group-addon">.00</div>
						</div>
					</div>
					<div>
						<input type=submit />
					</div>
				</form>
			</div>
		</div>
	</div>


	<div class="container">
		<h2>Results</h2>
		<table class="table table-hover rezultat">
			<tr>
				<th>ID</th>
				<th>Manufacturer</th>
				<th>Model</th>
				<th>Year Of Production</th>
				<th>Price Per Year</th>
			</tr>
			<c:forEach var="car" items="${cars}">
				<tr>
					<td>${car.id}<br />
					</td>
					<td>${car.manufacturer}<br />
					</td>
					<td>${car.model}<br />
					</td>
					<td>${car.yearOfProduction}<br />
					</td>
					<td>${car.pricePerDay}<br />
					</td>
					
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<br><br><br>
	
	<jsp:include page="../jspFragments/footer.jsp" />

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

	<!-- 	jQuery validation -->
	<script src="resources/js/jquery.core.js"></script>
	

</body>
</html>