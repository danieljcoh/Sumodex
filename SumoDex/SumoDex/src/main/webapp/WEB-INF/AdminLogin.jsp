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
    		<%-- <form:form method="POST" action="/admin/login" modelAttribute="champion">
				<div class="form-group">
					<form:label class="col-sm-2 col-form-label" path="shikona"> Shikona: 
					<form:errors path="shikona"/>
					<form:input path="shikona"/>
					</form:label>
				</div>
			</form:form> --%>
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
					<%-- <form method="GET" action="/admin/login">
						<button class="btn btn-warning">Login</button>
					</form> --%>
    		</div>
  		</div>
	</div>
	
<%-- 	
	<div>
				<form:label path="assignee"> Assignee:
				<form:select path="assignee">
					<form:option path="assignee" value=""></form:option>
					<c:forEach items="${allUsers}" var="userName">
						<form:option path="assignee" value="${userName}">${userName}</form:option>
					</c:forEach>
				</form:select>
				</form:label>
				</div> --%>
</body>
</html>