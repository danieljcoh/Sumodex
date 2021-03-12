<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Make a Wrestler</title>
</head>
<body>
	<div class="container">
		<h3>Input a new Sumo Wrestler</h3>
		
		<h3>First Upload a Picture</h3>
		<form method="POST" action="/wrestlers/upload" enctype ="multipart/form-data" id="wrestler-pic">
		<p>Select File: <input type="file" name="pic"></p>
		<button>Submit picture</button>
		</form>
		
			<c:forEach items="${errors}" var="error">
				<p>${error}</p>
			</c:forEach>
			<hr>
			<form:form method="POST" action="/wrestlers/submitNewWrestler" modelAttribute="wrestler">
				<div class="form-group">
					<form:label path="shikona"> Shikona: 
					<form:errors path="shikona"/>
					<form:input path="shikona"/>
					</form:label>
				</div>
				<div>
					<form:label path="name"> Real Name:
					<form:input path="name"/>
					</form:label>
				</div>
				<div>
					<form:label path="sumoRank"> Sumo Rank:
					<form:input path="sumoRank"/>
					</form:label>
				</div>
				<div>
					<form:label path="birthplace"> Birthplace:
					<form:input path="birthplace"/>
					</form:label>
				</div>
				<div class="form-group">
					<form:label path="birthday"> Birthday:
					<form:input path="birthday"/>
					</form:label>
				</div>
				<div class="form-group">
					<form:label path="heya"> Heya:
					<form:input path="heya"/>
					</form:label>
				</div>
				<div class="form-group">
					<form:label path="height"> Height:
					<form:input path="height"/>
					</form:label>
				</div>
				<div class="form-group">
					<form:label path="weight"> Weight:
					<form:input path="weight"/>
					</form:label>
				</div>
				<div>
					<form:label path="favTechnique"> Favorite Technique:
					<form:input path="favTechnique"/>
					</form:label>
				</div>
			<button class="btn btn-dark">Create New Wrestler</button>
		</form:form>
		<hr>
	</div>
</body>
</html>