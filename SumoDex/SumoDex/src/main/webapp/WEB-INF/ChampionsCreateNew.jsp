<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Make a Wrestler</title>
</head>
<body>
	<div class="container">
		<h3>Input the Champions name</h3>
		
			<c:forEach items="${errors}" var="error">
				<p>${error}</p>
			</c:forEach>
			<hr>
			<form:form method="POST" action="/champions/submitNewChampion" modelAttribute="champion">
				<div class="form-group">
					<form:label class="col-sm-2 col-form-label" path="shikona"> Shikona: 
					<form:errors path="shikona"/>
					<form:input path="shikona"/>
					</form:label>
				</div>
				<div>
					<form:label class="col-sm-2 col-form-label" path="finalScore"> Final Score:
					<form:input path="finalScore"/>
					</form:label>
				</div>
				<div>
					<form:label class="col-sm-2 col-form-label" path="tournamentBasho"> Basho:
					<form:input path="tournamentBasho"/>
					</form:label>
				</div>
			<button class="btn btn-dark col-sm-4 offset-sm-0 mt-4 mr-10 form-control form-inline mb-2 mr-sm-2">Create New Champion</button>
		</form:form>
		<hr>
	</div>
</body>
</html>