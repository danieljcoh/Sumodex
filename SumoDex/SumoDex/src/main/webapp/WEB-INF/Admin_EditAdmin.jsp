<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Create a new Admin</title>
</head>
<body>
	<div class="container">
		<h3>Observe ${userAdmin.username}</h3>

			<c:forEach items="${errors}" var="error">
				<p>${error}</p>
			</c:forEach>
			<hr>
			
			<h1>Admin Name: ${userAdmin.adminName}</h1>
			<h1>Username: ${userAdmin.username}</h1>
			
			<a class="btn btn-danger col-sm-4 offset-sm-0 mt-4 ml-5 form-control form-inline mb-2 mr-sm-2" href="/admin/delete/${userAdmin.id}">Delete Admin</a>
	</div>
</body>
</html>