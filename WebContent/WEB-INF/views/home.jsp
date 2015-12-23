<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<spring:url value="/resources/CSS/bootstrap.min.css"/>"
	type="text/css" />
</head>
<body>

	<div class="container">
		<h1>premier</h1>
		<div class="jumbotron">neki text</div>
	</div>




	<sql:query var="rs" dataSource="jdbc/rent-a-car">
select id, manufacturer, model, yearOfProduction from cars
</sql:query>



	<div class="container">
	<h2>Results</h2>
		<table class="table table-hover">
			<tr>
			<th>ID</th>
			<th>Manufacturer</th>
			<th>Model</th>
			<th>Year Of Production</th>
			</tr>
			<c:forEach var="row" items="${rs.rows}">
			<tr>
			<td>
    			${row.id}<br />
    		</td>
    		<td>
    			${row.manufacturer}<br />
    		</td>
    		<td>
    			${row.model}<br />
    		</td>
    		<td>
    			${row.yearOfProduction}<br />
    		</td>
			</tr>
			</c:forEach>
		</table>
	</div>



</body>
</html>