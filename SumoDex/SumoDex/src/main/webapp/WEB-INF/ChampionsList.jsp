<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Basho Champions</title>
</head>
<body>
	<div class="container">
		<h3>Champions</h3>
		<table class="table table-dark">
			<thead>
				<tr>
					<th>Shikona</th>
					<th>Final Score</th>
					<th>Basho</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allChampions}" var="allChampions">
				<tr>
					<td><a href="/champions/edit/${allChampions.id}">${allChampions.shikona}</a></td>
					<td>${allChampions.finalScore}</td>
					<td>${allChampions.tournamentBasho}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
		<a href="/champions/createNewChampion" class="btn btn-primary">Create a new Champion</a>
	</div>
</body>
</html>


















