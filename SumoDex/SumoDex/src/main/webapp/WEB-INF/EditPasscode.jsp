<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Make a New Task</title>
</head>
<body>
	<div class="container">
		<h3>Edit ${passcode.passcode}</h3>
		
			<c:forEach items="${errors}" var="error">
				<p>${error}</p>
			</c:forEach>
			<hr>
			
			<form:form method="POST" action="/admin/passcode/update/${passcode.id}" modelAttribute="passcode">
				<div class="form-group">
					<form:label class="col-sm-2 col-form-label" path="passcode"> Passcode: 
					<form:errors path="passcode"/>
					<form:input path="passcode"/>
					</form:label>
				</div>

			<button class="btn btn-dark col-sm-4 offset-sm-0 mt-4 mr-10 form-control form-inline mb-2 mr-sm-2">Save edits</button>
			<a class="btn btn-danger col-sm-4 offset-sm-0 mt-4 ml-5 form-control form-inline mb-2 mr-sm-2" href="/wrestlers/delete/${passcode.id}">Delete Passcode</a>
		</form:form>
	</div>
</body>
</html>