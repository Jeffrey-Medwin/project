<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html  class="h-100">
<head>
<meta charset="ISO-8859-1">
<title>Quiz | Login</title>
<link rel="icon" type="image/x-icon" href="image/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="script.js"></script>
</head>

<body class="bg-secondary">
<style>
body {
	min-height: 100%;
	display: flex;
	flex-direction: column;
}

footer {
	margin-top: auto;
}

.row.bg-dark.p-4{
	margin: 0% 30%;
}
</style>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous" type="text/javascript"></script>

	<header class="p-3 pb-0 bg-dark text-light">
		<div class="row">
		
	<!-- 	<div class="col pt-3 ms-4" disabled="true">
				<a href="#"><img alt="Home" src="image/home.png" width="30px" height="30px" ></a>
			</div>     -->
			
			<p class="col"></p>
			
			<div class="col d-flex justify-content-center me-4">
				<h1>Quiz</h1>
			</div>
			
			<div class="col d-flex justify-content-end align-items-center pt-2 me-5">
			 	<ul>
					<li class="list-inline-item" id="current-time">12:24 AM</li>
					<br>
					<li class="list-inline-item" id="current-date">14/04/2024</li>
				</ul>
			</div>
			
		</div>
	</header>
	
	<div class="row ms-3 me-3">
		<img alt="outliers" src="image/outliers.png" style="width: 100px; height: 80px;" class="col">
		<p class="col"> </p> <p class="col"> </p>
		<img alt="pointels"	 src="image/Pointel.png" style="width: 100px; height: 80px;" class="col">
	</div>
	
	<div class="container-md mt-3 d-flex justify-content-center">
		<form action="Login" method="post" class="row bg-dark p-4 w-50 border border-4 rounded-4 ">
			<div class="col" style="text-align: center;">
				<img alt="login" src="image/outliers.png" width="170px" height="70px">
			</div>
			<div class="mb-3 text-light">
				<label for="formGroupExampleInput" class="form-label">User Name</label> 
				<input type="text" class="form-control" id="formGroupExampleInput" name="userName" placeholder="UserName" required="required">
			</div>
			<div class="mb-3 text-light">
				<label for="formGroupExampleInput2" class="form-label">Password</label>
				<input type="password" class="form-control" id="formGroupExampleInput2" placeholder="Password" name="password" minlength="8" required="required">
			</div>
			<div class="row mb-3">
				<div class="col">
					<div class="form-check">
						<input class="form-check-input check-secondary" type="checkbox" id="gridCheck1" onclick="isChecked()"> 
						<label class="form-check-label text-light" for="gridCheck1">Show Password </label>
					</div>
				</div>
			</div>
			<div class="col-sm-12 d-flex justify-content-center">
				<input type="submit" class="btn btn-secondary" value="Login">
			</div>
		</form>
	</div>
	
	<div class="d-flex justify-content-end me-5">
		<a href="registration.jsp"><img alt="add user" src="image/add-user.png" onclick=""></a>
	</div>
	
	<footer class="p-3 bg-dark text-light mb-0">
		<div class="row">
			<div class="col-md-4">© Pointel Solutions - 2024. All rights reserved.</div>
			<div class="col">
				<div class="row d-flex justify-content-end">
					<div class="col-md-5">
						<a href="#" class="text-decoration-none text-light"><img alt="phone" src="image/phone.png" width="20px" height="20px">+91-44-42300321</a>
					</div>
					<div class="col-md-5">
						<a href="#" class="text-decoration-none text-light"><img alt="email" src="image/email.png" width="20px" height="20px">contactus@pointelsolutions.com</a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	
</body>
</html>