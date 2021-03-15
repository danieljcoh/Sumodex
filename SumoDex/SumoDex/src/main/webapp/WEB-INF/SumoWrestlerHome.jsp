<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Makuuchi Sumo Wrestlers</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<h1 class="col-6">Welcome!</h1>
		</div>
		<h3>Sumo Wrestlers</h3>
		<table class="table table-dark">
			<thead>
				<tr>
					<th>Shikona</th>
					<th>Real Name</th>
					<th>Rank</th>
					<th>Birthplace</th>
					<th>Birthday</th>
					<th>Heya</th>
					<th>Height</th>
					<th>Weight</th>
					<th>Favorite Technique</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allSumoWrestlers}" var="allSumoWrestlers">
				<tr>
					<td><a href="/wrestlers/edit/${allSumoWrestlers.id}">${allSumoWrestlers.shikona}</a></td>
					<td>${allSumoWrestlers.name}</td>
					<td>${allSumoWrestlers.sumoRank}</td>
					<td>${allSumoWrestlers.birthplace}</td>
					<td>${allSumoWrestlers.birthday}</td>
					<td>${allSumoWrestlers.heya}</td>
					<td>${allSumoWrestlers.height}</td>
					<td>${allSumoWrestlers.weight}</td>
					<td>${allSumoWrestlers.favTechnique}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
		<a href="/wrestlers/createNewWrestler" class="btn btn-primary d-flex justify-content-center">Create a new Sumo Wrestler</a>
	</div>
</body>
</html>


















