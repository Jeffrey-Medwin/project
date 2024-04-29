
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz | Registration</title>
<link rel="icon" type="image/x-icon" href="image/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="styleSheet.css">
<script src="script.js"></script>

</head>

<body class="bg-secondary">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous" type="text/javascript"></script>

	<header class="p-3 pb-0 bg-dark text-light">
		<div class="row">
		
			<div class="col pt-3 ms-4">
				<a href="index.jsp"><img alt="Home" src="image/home.png" width="30px" height="30px"></a>
			</div>
			<div class="col d-flex justify-content-center me-4">
				<h1>Quiz</h1>
			</div>
			<div class="col d-flex justify-content-end pt-2 me-5">
				<ul>
					<li class="list-inline-item"></li>
					<br>
					<li class="list-inline-item"></li>
				</ul>
			</div>
		</div>
	</header>
	
	<div class="row ms-3 me-3 mb-5">
		<img alt="outliers" src="image/outliers.png" style="width: 100px; height: 80px;" class="col">
		<p class="col"> </p> <p class="col"> </p>
		<img alt="pointels"	 src="image/Pointel.png" style="width: 100px; height: 80px;" class="col">
	</div>
	
	<div class="container " align="center">
		<form  class="row bg-dark p-5 w-75 mt-5 border border-4 rounded-4 " action="<%= request.getContextPath() %>/EmployeeServlet" method="post"  >
			<div class="col">
				<h3 class="text-white " align="center"> Registration <img alt="regiter" src="image/register.png" width="50px" height="50px"></h3>
			</div> 
			
		    <!--  Input Name -->
		    <div class="card   mb-3 mt-5 text-start " >
		    	<div class="card-body "  >
					<div class=" text-light ">
						<label for="InputName" class="form-label text-dark"> Name <span class="required-mark fw-bold text-danger">*</span> </label> 
						<input type="text" class="form-control border border-info border-1" id="InputName" name="name" placeholder="Your Answer" required="required">
						<style>
    					.required input:after { content:"*"; }
						</style>
					</div>
				</div>
			</div>
			
			 <!--  Input Educational Qualification -->
			 <div class="card mb-3 text-start">
			 	<div class="card-body">
			 		<div class=" text-light">
						<label for="InputQualification" class="form-label text-dark">Educational Qualification <span class="required-mark fw-bold text-danger">*</span></label> 
						<input type="text" class="form-control border border-info border-1" id="InputQualification" name="education" placeholder="Your Answer" required="required">
					</div>
			 	</div>
			 </div>
			
			<!--  Date of Birth -->
			 <div class="card mb-3 text-start">
			 	<div class="card-body">
			 		<div class=" text-light">
						<label for="InputDOB" class="form-label  text-dark">Date of Birth <span class="required-mark fw-bold text-danger">*</span></label>
						<input type="date" class="form-control border border-info border-1" id="InputDOB" placeholder="Your Answer" name="dateOfBirth"  required="required">
					</div>
			 	</div>
			 </div>
			
			
			<!--  Mobile Number -->
			 <div class="card  mb-3 text-start">
			 	<div class="card-body">
			 		<div class=" text-light">
						<label for="InputNumber" class="form-label text-dark">Mobile Number <span class="required-mark fw-bold text-danger">*</span></label>
						<input type="text" class="form-control border border-info border-1" id="InputNumber" placeholder="Your Answer" name="mobileNumber"  required="required">
					</div>	
			 	</div>
			 </div>
			
			
			<!--  Alternative Number -->
			 <div class="card  mb-3 text-start">
			 	<div class="card-body">
			 		<div class=" text-light">
						<label for="InputNumber" class="form-label text-dark">Alternative Number</label>
						<input type="text" class="form-control border border-info border-1" id="InputNumber" placeholder="Your Answer" name="alternateNumber" >
					</div>
			 	</div>
			 </div>
			
			
			 <!--  E-mail ID -->
			  <div class="card  mb-3 text-start">
			 	<div class="card-body">
			 		<div class=" text-light">
						<label for="InputMail" class="form-label text-dark">E-mail ID <span class="required-mark fw-bold text-danger">*</span></label>
						<input type="email" class="form-control border border-info border-1" id="InputMail" placeholder="Your Answer" name="mailId"  required="required">
					</div>
			 	</div>
			 </div>
			
			
			<!--  Alternative Email ID -->
			 <div class="card  mb-3 text-start">
			 	<div class="card-body">
			 		<div class=" text-light">
						<label for="InputMail" class="form-label text-dark">Alternative Email ID</label>
						<input type="text" class="form-control border border-info border-1" id="InputMail" placeholder="Your Answer" name="alternateMailId" >
					</div>
			 	</div>
			 </div>
			
			
			<!--  Experience in Years -->
			 <div class="card  mb-3 text-start">
			 	<div class="card-body">
			 		<div class=" text-light">
						<label for="InputNumber" class="form-label text-dark">Experience in Years</label>
						<input type="number" class="form-control border border-info border-1" id="InputNumber" placeholder="Your Answer" name="mobileNumber"  required="required">
					</div>
			 	</div>
			 </div>
			
			
			<!--  Current Employer -->
		
			 <div class="card  mb-3 text-start">
			 	<div class="card-body">
			 		<div class=" text-light">
						<label  class="form-label text-dark">Current Employer</label><br>
						<input type="radio"  id="InputEmployer1"  name="employer" value="Yes" checked="checked" onClick="yes()" >
						<label class="text-dark">Yes</label>
						<input type="radio" id="InputEmployer2"  name="employer" value="NO"  onClick="no()">
						<label class="text-dark">No</label>
					</div>
			 	</div>
			 </div>
			 
			<script>
				function no() {
					document.getElementById("InputCTC").disabled=true;  					   
				}
				function yes() {
					document.getElementById("InputCTC").disabled=false;  					   
				}
			</script>
			
			<!--  Current CTC -->
			 <div class="card  mb-3 text-start" id="hidd">
			 	<div class="card-body">
			 		<div class=" text-light">
						<label for="InputCTC" class="form-label text-dark">Current CTC</label>
						<input type="text" class="form-control border border-info border-1" id="InputCTC" placeholder="Your Answer" name="currentCTC" >
					</div>
			 	</div>
			 </div>
				
			<!--  Expected CTC -->
			 <div class="card  mb-3  text-start">
			 	<div class="card-body">
			 		<div class=" text-light">
						<label for="InputExpect" class="form-label text-dark">Expected CTC</label>
						<input type="text" class="form-control border border-info border-1" id="InputExpect" placeholder="Your Answer" name="expectedCTC">
					</div>
			 	</div>
			 </div>
			 
			 <!-- Number of days required to join us -->
			 <div class="card  mb-3  text-start">
			 	<div class="card-body">
			 		<div class=" text-light">
						<label for="InputNoDay" class="form-label text-dark">Number of days required to join us <span class="required-mark fw-bold text-danger">*</span></label>
						<input type="text" class="form-control border border-info border-1" id="InputNoDay" placeholder="Your Answer" name="dayJoin">
					</div>
			 	</div>
			 </div>
			 
			 <!--  Resource From/Ref.by -->
			 <div class="card  mb-4  text-start">
			 	<div class="card-body">
			 		<div class=" text-light ">
			 			<label for="InputResource" class="form-label text-dark">Resource From/Ref.by</label>
			 			<select class="ui dropdown form-control border border-info border-1" id="InputResource" name="resource">
  							<option value="">Others</option>
 							<option value="1">College</option>
  							<option value="2">Friend</option>
						</select>
					</div>
			 	</div>
			 </div>
			 
			  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>

   
			<div class=" text-center ">
				<input type="submit" class="btn btn-secondary " value="Register">
			</div>
		</form>
	</div>
	
	<footer class="p-3 bg-dark text-light mt-5 mb-0">
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
