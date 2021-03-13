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
			<form:form method="POST" action="/champions/update/${champion.id}" modelAttribute="champion">
				<div class="form-group">
					<form:label path="shikona"> Shikona: 
					<form:errors path="shikona"/>
					<form:input path="shikona"/>
					</form:label>
				</div>
				<div>
					<form:label path="finalScore"> Final Score:
					<form:input path="finalScore"/>
					</form:label>
				</div>
				<div>
					<form:label path="tournamentBasho"> Basho:
					<form:input path="tournamentBasho"/>
					</form:label>
				</div>
			<button class="btn btn-dark">Create New Champion</button>
		</form:form>
		<hr>
	</div>
	<div><a style="padding: 2px 6px; border: 1px solid gray; border-radius: 5px; text-decoration: none; color: black;" href="/champions/delete/${champion.id}">Delete Champion</a></div>
</body>
</html>