<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Makuuchi Wrestlers</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
		<nav class="nav flex-column col-sm font-weight-bold h3 d-inline-block ml-5 mt-5">
  			<a class="nav-link active text-success" href="/wrestler/1">Go To Sumodex</a>
		</nav>
<div class="container">
		<h3>Sumo Wrestlers</h3>
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>Shikona</th>
					<th>Real Name</th>
					<th>Rank</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allSumoWrestlers}" var="allSumoWrestlers">
				<tr>
					<td><a href="/wrestler/${allSumoWrestlers.id}">${allSumoWrestlers.shikona}</a></td>
					<td>${allSumoWrestlers.name}</td>
					<td>${allSumoWrestlers.sumoRank}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>