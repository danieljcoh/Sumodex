<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Create Admin</title>
</head>
<body>
	<div class="container">
		<h3>Create a new Administrator</h3>
		
			<c:forEach items="${errors}" var="error">
				<p>${error}</p>
			</c:forEach>
			<hr>
			<form:form method="POST" action="/admin/submitNewAdmin" modelAttribute="newAdmin">
				<div class="form-group">
					<form:label class="col-sm-2 col-form-label" path="adminName"> Name: 
					<form:errors path="adminName"/>
					<form:input path="adminName"/>
					</form:label>
				</div>
				<div class="form-group">
					<form:label class="col-sm-2 col-form-label" path="username"> Username: 
					<form:errors path="username"/>
					<form:input path="username"/>
					</form:label>
				</div>
				<div class="form-group">
					<form:label class="col-sm-2 col-form-label" path="adminPassword"> Password: 
					<form:errors path="adminPassword"/>
					<form:input path="adminPassword"/>
					</form:label>
				</div>
			<button class="btn btn-dark col-sm-4 offset-sm-0 mt-4 mr-10 form-control form-inline mb-2 mr-sm-2">Create Admin</button>
		</form:form>
	</div>
</body>
</html>