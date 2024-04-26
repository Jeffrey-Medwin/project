<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz | Portal</title>
<link rel="icon" type="image/x-icon" href="image/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="stylesheet.css">
<script src="script.js"></script>
</head>

<body class="bg-secondary">


<style>
.row.image{
	padding: 50px;
}

.col-md.image.d-flex.justify-content-center{
	background-color: #272B32;
    padding: 10px;
    padding-bottom: 60px;
    margin-right: 15px;
    margin-left: 15px; 
    position: relative;
}

.col-md.image.d-flex.justify-content-center h4{ 
	position:absolute; 
	bottom:5px;
	color: white;
}

.col-md.image.d-flex.justify-content-center:hover{
	background-color: black;
	transition: 1s;
}
</style>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous" type="text/javascript"></script>

	<header class="p-3 pb-0 bg-dark text-light">
		<div class="row">
		
			<div class="col pt-3 ms-4">
				<a href="index.jsp"><img alt="Home" src="image/home.png" width="30px" height="30px" disabled></a>
			</div>
			
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
		<img alt="outliers" src="image/outliers.png" class="col" >
		<p class="col"> </p> <p class="col"> </p>
		<img alt="pointels"	 src="image/Pointel.png" style="width: 100px; height: 80px;" class="col">
	</div>
	
	<div class="row image m-5 d-flex justify-content-center">
		<div class="col-md image d-flex justify-content-center border border-4 rounded-4">
			<img alt="user db" src="image/user-db.png" width="40%">
			<h4>User Details</h4>
		</div>
		<div class="col-md image d-flex justify-content-center border border-4 rounded-4">
		<img alt="question-db" src="image/question-db.png" width="40%" height="">
		<h4>Question DataBase</h4>
		
		</div>
	
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