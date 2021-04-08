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
	<div class="row">
		<nav class="nav flex-column col-sm font-weight-bold h3 d-inline-block ml-5 mt-5">
  			<a class="nav-link active text-success" href="/wrestler/1">Go To Sumodex</a>
		</nav>
		<nav class="nav flex-column col-sm font-weight-bold h3 d-inline-block ml-5 mt-5 mr-5 text-right">
  			<a class="nav-link active text-danger" href="/admin/logout">Logout</a>
		</nav>
	</div>
	<div class="container h-100">
  		<div class="row d-flex flex-row h-100">
    		<div class="col-sm mx-auto mt-3">
      			<div class="card">
  				<img class="card-img-top" src="/images/HeaderPic.jpg"  alt="Card Image">
  					<div class="card-body">
    					<h4 class="card-title">Manage Wrestlers</h4>
    					<p class="card-text">
     					Click here to view a list of Sumo Wrestlers, Create new ones,
     					edit old ones, or delete them.
    					</p>
    					<a href="/wrestlers" class="btn btn-danger col text-center">Manage Wrestlers</a>
  					</div>	
				</div>
    		</div>
    		<div class="col-sm mx-auto mt-3">
      			<div class="card">
  				<img class="card-img-top" src="/images/HeaderPic.jpg"  alt="Card Image">
  					<div class="card-body">
    					<h4 class="card-title"> Manage Feedback</h4>
    					<p class="card-text">
     					Click here to view a list of User Feedback , Create new ones,
     					edit old ones, or delete them.
    					</p>
    					<a href="/admin/userFeedbackList" class="btn btn-success col text-center">Manage Feedback</a>
  					</div>
				</div>
    		</div>
    		<div class="col-sm mx-auto mt-3">
      			<div class="card">
  				<img class="card-img-top pb-4" src="/images/HeaderPic.jpg"  alt="Card Image">
  					<div class="card-body">
    					<h4 class="card-title">Manage Admin</h4>
    					<p class="card-text">
     					Click here to view a list of Admin, Create new ones,
     					edit old ones, or delete them.
    					</p>
    					<a href="/admin/adminList" class="btn btn-dark col text-center">Manage Admin</a>
  					</div>
				</div>
    		</div>
    	</div>
   </div>
</body>
</html>