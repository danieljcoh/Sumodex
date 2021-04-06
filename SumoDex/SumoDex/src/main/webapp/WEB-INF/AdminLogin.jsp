<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Admin Home</title>
</head>
<body>
	<nav class="nav flex-column font-weight-bold h3 border border-danger d-inline-block ml-5 mt-5">
  		<a class="nav-link active text-success" href="/wrestler/1">Go To Sumodex</a>
	</nav>
	<div class="container">
  		<div class="row">
    		<div class="col-sm">
    		<p>${errorFromLoggingIn}</p>
					<form method="POST" action="/admin/login">
						<div class="form-group mt-5">
							<label>Username:</label>
							<input class="form-control" type="text" name="loginUsername">
						</div>
						<div class="form-group mt-5">
							<label>Password:</label>
							<input class="form-control" type="password" name="loginPassword">
						</div>
							<button class="btn btn-danger">Submit</button>
					</form>
    		</div>
  		</div>
	</div>
</body>
</html>