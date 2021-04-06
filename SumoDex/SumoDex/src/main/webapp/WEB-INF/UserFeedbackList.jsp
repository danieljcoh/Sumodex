<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>User Feedback</title>
</head>
<body>
	<nav class="nav flex-column font-weight-bold h3 border border-success d-inline-block ml-5 mt-5">
  		<a class="nav-link active text-success" href="/admin/dashboardHome">Go To Admin Home</a>
	</nav>
	<div class="container">
		<div class="row">
		</div>
		<h3>UserFeedback</h3>
		<table class="table table-dark">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Title</th>
					<th>Message</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allUserFeedback}" var="allUserFeedback">
				<tr>
					<td>${allUserFeedback.id}</td>
					<td>${allUserFeedback.usersName}</td>
					<td>${allUserFeedback.titleOfMessage}</a></td>
					<td><a href="/admin/feedback/editFeedback/${allUserFeedback.id}">${allUserFeedback.feedbackSection}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
		<a href="/admin/feedback/createUserFeedback" class="btn btn-primary btn-block p-4">Create a new users Feedback</a>
	</div>
</body>
</html>


















