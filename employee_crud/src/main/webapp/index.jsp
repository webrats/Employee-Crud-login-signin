<%@page import="com.senrysa.utility.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee CURD</title>


<!-- Bootstrap CDN CSS & JS -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	
<!-- Sweet alert js -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<!-- Css login.css -->
<link href="resources/css/signup.css" rel="stylesheet"
	type="text/css">
</head>
<body>


	
<div class="container px-4 py-5 mx-auto">
		<div class="card card0">
			<div class="d-flex flex-lg-row flex-column-reverse">
				<div class="card card1">
					<div class="row justify-content-center my-auto">
						<div class="col-md-8 col-10 my-5">
							<div class="row justify-content-center px-3 mb-3">
								<img id="logo" src="https://i.imgur.com/PSXxjNY.png">
							</div>
							<h3 class="mb-5 text-center heading">We are Dev.</h3>

							<!-- FORM -->
		
							<form action=""  id="myAjaxRequestForm">
								<div class="container">
									
									<div class="clearfix">
										<div class="row justify-content-center my-3 px-3">
											<a type="Button" href="add_employee.jsp" id="myButton" class="btn-block btn-color">Add Employee </a>
										</div>

									</div>
									<div class="clearfix">
										<div class="row justify-content-center my-3 px-3">
											<a type="submit" id="myButton" href="show_employee.jsp" class="btn-block btn-color">ALL Eployee Details</a>
										</div>

									</div>
									<div class="clearfix">
										<div class="row justify-content-center my-3 px-3">
											<a type="submit" id="myButton" href="view/login.jsp"  class="btn-block btn-color">Login
												 </a>
										</div>

									</div>
									<div class="clearfix">
										<div class="row justify-content-center my-3 px-3">
											<a type="submit" href="view/signup.jsp" id="myButton" class="btn-block btn-color">Sign
												up</a>
										</div>

									</div>
								</div>
							</form>

							<!-- End FORM  -->

						</div>

					</div>

				</div>
				<div class="card card2">
					<div class="my-auto mx-md-5 px-md-5 right">
						<h3 class="text-white">We are more than just a Community</h3>
						<small class="text-white">We are Dev. community :)</small>
					</div>
				</div>
			</div>
		</div>
	</div>
	

	<script type="text/javascript">
	
		$(document).ready(function() {
			$("#tableid").hide();
			
			
		});
		
		/* 
		$("#show_emp_details").click(function(){
			var txt = $("#show_emp_details").text();
			    if(txt == "Show Employee Details"){
			    	$("#show_emp_details").text("Hide Details");
			    }
			    else{
			    	$("#show_emp_details").text("Show Employee Details");
			    }
			    
			    var otable= $("#tableid").datatable({
			    	"processing" : true ,
			    	
			    	"ajax" :{
			    		"url":"GetEmployeeDetailsServlet",
			    		"datasrc": "demo",
			    		"type" :"get"
			    	}
			    });
		});
		
		
		 */
		
		
	</script>

	<!-- JS for bootstrap  -->

</body>
</html>