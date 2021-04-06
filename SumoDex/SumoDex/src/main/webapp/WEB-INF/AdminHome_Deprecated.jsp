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
	<nav class="nav flex-column font-weight-bold h3 border border-success d-inline-block ml-5 mt-5">
  		<a class="nav-link active text-success" href="/wrestler/1">Go To Sumodex</a>
	</nav>
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
    					<h4 class="card-title">Manage Passwords</h4>
    					<p class="card-text">
     					Click here to view a list of Passwords, Create new ones,
     					edit old ones, or delete them.
    					</p>
    					<a href="/admin/passwordList" class="btn btn-info col text-center">Manage Passwords</a>
  					</div>	
				</div>
    		</div>
    		<div class="col-sm mx-auto mt-3">
      			<div class="card">
  				<img class="card-img-top" src="/images/HeaderPic.jpg"  alt="Card Image">
  					<div class="card-body">
    					<h4 class="card-title">Manage Champions</h4>
    					<p class="card-text">
     					Click here to view a list of Champions, Create new ones,
     					edit old ones, or delete them.
    					</p>
    					<a href="/champions" class="btn btn-warning col text-center">Manage Champions</a>
  					</div>
				</div>
    		</div>
        </div>
        <div class="row d-flex flex-row h-100">
    		<div class="col-sm mx-auto mt-3">
      			<div class="card">
  				<img class="card-img-top" src="/images/HeaderPic.jpg"  alt="Card Image">
  					<div class="card-body">
    					<h4 class="card-title"> Manage Feedback</h4>
    					<p class="card-text">
     					Click here to view a list of admin, Create new ones,
     					edit old ones, or delete them.
    					</p>
    					<a href="/admin/userFeedbackList" class="btn btn-success col text-center">Manage Feedback</a>
  					</div>
				</div>
    		</div>
    		<div class="col-sm mx-auto mt-3">
      			<div class="card">
  				<img class="card-img-top" src="/images/HeaderPic.jpg"  alt="Card Image">
  					<div class="card-body">
    					<h4 class="card-title">Manage Admin</h4>
    					<p class="card-text">
     					Click here to view a list of feedback, Create new ones,
     					edit old ones, or delete them.
    					</p>
    					<a href="/admin/adminList" class="btn btn-dark col text-center">Manage Admin</a>
  					</div>
				</div>
    		</div>
    		<div class="col-sm mx-auto mt-3">
      			<div class="card">
  				<img class="card-img-top" src="/images/HeaderPic.jpg"  alt="Card Image">
  					<div class="card-body">
    					<h4 class="card-title">Manage Something</h4>
    					<p class="card-text">
     					Click here to view a list of feedback, Create new ones,
     					edit old ones, or delete them.
    					</p>
    					<a href="#" class="btn btn-secondary col text-center">Manage Something</a>
  					</div>
				</div>
    		</div>
    	</div>
   </div>
</body>
</html>