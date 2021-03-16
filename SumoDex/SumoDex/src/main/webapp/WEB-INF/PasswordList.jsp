<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Passwords</title>
</head>
<body>
	<nav class="nav flex-column font-weight-bold h3 border border-success d-inline-block ml-5 mt-5">
  		<a class="nav-link active text-success" href="/admin/home">Go To Admin Home</a>
	</nav>
	<div class="container">
		<div class="row">
		</div>
		<h3>Passwords</h3>
		<table class="table table-dark">
			<thead>
				<tr>
					<th>ID</th>
					<th>Passwords</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allPasswords}" var="allPasswords">
				<tr>
					<td>${allPasswords.id}</td>
					<td><a href="/admin/password/edit/${allPasswords.id}">${allPasswords.password}</a></td>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
		<a href="/admin/createNewPassword" class="btn btn-primary btn-block p-4">Create a new Password</a>
	</div>
</body>
</html>


















