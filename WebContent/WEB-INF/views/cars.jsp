<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Available Cars</title>
<link rel="stylesheet"
	href="<spring:url value="/resources/CSS/bootstrap.min.css"/>"
	type="text/css" />
</head>
<link rel="stylesheet"
	href="<spring:url value="/resources/CSS/custom.css"/>" type="text/css" />
</head>
<body>

	<jsp:include page="../jspFragments/header.jsp" />

	<div class="container">
		<h1>Rent A Kar</h1>
		<div class="jumbotron">Administratoru je na ovaj nacin omoguceno
			da brise auta i baze i da koriguje cijene automobila.</div>
	</div>

	<div class="container">
		<h2>Results</h2>
		<table class="table table-hover">
			<tr>
				<th>ID</th>
				<th>Manufacturer</th>
				<th>Model</th>
				<th>Year Of Production</th>
				<th>Price Per Year</th>
				<th>Edit Car</th>
				<th>Delete Car</th>
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
					<td>
						<button class="btn btn-warning" id="${car.id}">edit car prices</button>
					</td>
					<td><a class="btn btn-danger"
						href="<spring:url value="/delete/${car.id}"/>">delete car ${car.id}</a></td>

				</tr>
				<tr>
					<td>
						<div class="editCar" id="${car.id}">
							<form action="<spring:url value="/updateCar/${car.id}" />" method="GET">
								<div class="form-group">
									<label>Enter new Price</label>
									<div class="input-group">
										<div class="input-group-addon">$</div>
										<input type="text" class="form-control" placeholder="Amount"
											name="newPricePerDay" />
										<div class="input-group-addon">.00</div>
									</div>
								</div>
							<input type="submit" class="btn btn-warning"/>
							</form>
						</div>
					</td>
					
				</tr>
			</c:forEach>
		</table>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="../jspFragments/footer.jsp" />

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

	<!-- 	jQuery validation -->
	<script src="resources/js/jquery.core.js"></script>
	<script src="resources/js/editCar.js"></script>


</body>
</html>