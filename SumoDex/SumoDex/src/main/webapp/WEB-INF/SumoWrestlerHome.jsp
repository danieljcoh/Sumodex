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
	<nav class="nav flex-column font-weight-bold h3 border border-success d-inline-block ml-5 mt-5">
  		<a class="nav-link active text-success" href="/admin/home">Go To Admin Home</a>
	</nav>
	<div class="container">
		<div class="row">
		</div>
		<h3>Sumo Wrestlers</h3>
		<table class="table table-dark">
			<thead>
				<tr>
					<th>ID</th>
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
					<td>${allSumoWrestlers.id}</td>
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
		<a href="/wrestlers/createNewWrestler" class="btn btn-primary btn-block p-4">Create a new Sumo Wrestler</a>
	</div>
</body>
</html>


















