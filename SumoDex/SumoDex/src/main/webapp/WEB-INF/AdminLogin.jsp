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
	<div class="container">
  		<div class="row">
    		<div class="col-sm">
      			<form method="POST" action="/admin/login">
						<div class="form-group">
							<label>ID#: </label>
							<input class="form-control" type="password" name="idNumber">
						</div>
						<div class="form-group">
							<label>Password: </label>
							<input class="form-control" type="password" name="passwordString">
						</div>
							<button class="btn btn-primary" type="submit">Submit</button>
					</form>
    		</div>
  		</div>
	</div>
</body>
</html>