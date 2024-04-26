<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Quiz | Code</title>
	<link rel="icon" type="image/x-icon" href="favicon.ico">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="stylesheet.css">
	<script src="script.js"></script>
</head>

<body class="bg-secondary">

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous" type="text/javascript">
	</script>

	<header class="p-3 pb-0 bg-dark text-light">
		<div class="row">
			<div class="col pt-3 ms-4">
				<a href="#"><img alt="Home" src="image/home.png" width="30px" height="30px" disabled></a>
			</div>
			
			<div class="col d-flex justify-content-center me-4">
				<h1>Quiz</h1>
			</div>
			
			<div class="col d-flex justify-content-end pt-2 me-5">
				<ul>
					<li class="list-inline-item">11:24</li>
					<br>
					<li class="list-inline-item">14/04/2024</li>
				</ul>
			</div>
		</div>
	</header>
	
	<div class="row ms-3 me-3">
		<img alt="outliers" src="image/outliers.png" class="col">
		<p class="col"> </p> <p class="col"> </p>
		<img alt="pointels"	 src="image/Pointel.png" style="width: 100px; height: 80px;" class="col">
	</div>
	
	<div class="container-md mt-3">
		<form action="QuizCode" method="post" class="row bg-dark p-4 border border-4 rounder-4">
			
			<div class="col text-center">
				<img alt="regiter" src="image/quizcode.png" width="110px" height="100px">
				<h3><label class="form-label text-white">Please Enter<br>Quiz Code</label></h3>
			</div>
						
				<div class="row quizotp">
					<input  class="m-2 form-control form-control-solid rounded focus:border-blue-400 focus:shadow-outline" type="text" id="first" maxlength="1"/>
					<input  class="m-2 form-control form-control-solid rounded focus:border-blue-400 focus:shadow-outline" type="text" id="second" maxlength="1"/>
					<input  class="m-2 form-control form-control-solid rounded focus:border-blue-400 focus:shadow-outline" type="text" id="third" maxlength="1"/>
					<input  class="m-2 form-control form-control-solid rounded focus:border-blue-400 focus:shadow-outline" type="text" id="fourth" maxlength="1"/>
					<input  class="m-2 form-control form-control-solid rounded focus:border-blue-400 focus:shadow-outline" type="text" id="fifth" maxlength="1"/>
					<input  class="m-2 form-control form-control-solid rounded focus:border-blue-400 focus:shadow-outline" type="text" id="sixth" maxlength="1"/>
				</div>
								
			<div class="text-center">
				<input type="submit" class="m-3 btn btn-secondary" value="OK">
			</div>
			
		</form>
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