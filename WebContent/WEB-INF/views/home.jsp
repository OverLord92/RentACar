<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online imenik</title>
<link rel="stylesheet"
	href="<spring:url value="/resources/CSS/bootstrap.min.css"/>"
	type="text/css" />
<link rel="stylesheet"
	href="<spring:url value="/resources/CSS/slide.css"/>"
	type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>

<body>

	<jsp:include page="../jspFragments/header.jsp"/>
	
	<div class="container">
		<div id="slider">
			<ul class="slides"> 
				<li class="slide"><img src="resources/pictures/car1.jpg"></li>
				<li class="slide"><img src="resources/pictures/car2.jpg"></li>
				<li class="slide"><img src="resources/pictures/car3.jpg"></li>
			</ul>
		</div>
		<br><br><hr><br><br>
		<div class="row">
			<div class="col-md-4">
				<h3>Pretrazi automobile: </h3>
				Pretrazite nase automobile i nadjite pravo auto za svoje potrebe. Auta mozete pretrazivati 
				po marki, cijeni, godini proizvodnje.<br>
				<center><a class="btn btn-primary" href="<spring:url value="/search"/>">search fo cars</a></center>
			</div>
			<div class="col-md-4">
				<h3>Dodaj automobile: </h3>
				Opcija kojoj pristupa samo administrator. Sluzi za dodavanje novih automobila u bazu podataka. 
				Administratorkska opcija.<br>
				<center><a class="btn btn-primary" href="<spring:url value="/add"/>">add a car</a></center>
			</div>
			<div class="col-md-4">
				<h3>Brisi i edituj automobile: </h3>
				Takodje opcija namjenjena administratoru. Omogucava administratoru da edituje i brise 
				automobile iz baze. Edituje i brisi automobile.<br>
				<center><a class="btn btn-primary" href="<spring:url value="/cars"/>">list all cars</a></center>
			</div>
		</div>
	</div>
	<br><br><br><br><br><br><br><br><br><br><br><br>
	

	<jsp:include page="../jspFragments/footer.jsp"/>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

	<!-- 	jQuery validation -->
	<script src="resources/js/jquery.core.js"></script>
	<script src="resources/js/imageSlider.js"></script>

</body>
</html>