<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup</title>

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
<link href="../resources/css/signup.css" rel="stylesheet"
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
									<h1>Sign Up</h1>
									
									<h5 id="ajaxResponse"></h5>
									
									<p>Please fill in this form to create an account.</p>
									<hr>

									<label for="email">Email</label> 
									<input type="text"
										placeholder="Enter Email" name="email" required> 
										
										<label for="psw">Password</label> 
										<input type="password" placeholder="Enter Password" name="psw" required> 
										<label for="psw-repeat">Repeat Password</label> <input
										type="password" placeholder="Repeat Password"
										name="psw-repeat" required>



									<div class="clearfix">
										<div class="row justify-content-center my-3 px-3">
											<button type="submit" id="myButton" class="btn-block btn-color">Sign
												up</button>
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



	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>


<!--Ajax Servlet Call  -->
<script type="text/javascript">
$(document).ready(function() {
	 
    //Stops the submit request
    $("#myAjaxRequestForm").submit(function(e){
           e.preventDefault();
    });
    
    //checks for the button click event
    $("#myButton").click(function(e){
           /*  
            //get the form data and then serialize that
            dataString = $("#myAjaxRequestForm").serialize();
            
            //get the form data using another method 
            var countryCode = $("input#countryCode").val(); 
            dataString = "countryCode=" + countryCode;
            */
            //make the AJAX request, dataType is set to json
            //meaning we are expecting JSON data in response from the server
            $.ajax({
                type: "POST",
                url: "../Signup",
                data: $("#myAjaxRequestForm").serialize(),
                dataType: "html",
                
                //if received a response from the server
                success: function( data, textStatus, jqXHR) {
                    //our request was success so we have  some information to display
                   
                    
                    if(data =="success"){
                    	 swal("Sign up successful!", "We are redirecting to Login Page!", "success"). then(function() {
                    		 window. location = "login.jsp";
                    	 });
                         $("#ajaxResponse").html(data);
                    }
                    else if(data =="present"){
                    	
                    	swal("Email Already Present!", "Try with different email id !", "error")
                    	
                    }
					else{
                    	
                    	swal("Sign up fail!", data, "error")
                    	
                    }
                   
            		
                },
                
                //If there was no resonse from the server
                error: function(jqXHR, textStatus, errorThrown){
                     console.log("Something really bad happened " + textStatus);
                     
                      $("#ajaxResponse").html(jqXHR.responseText);
                },
                
                //capture the request before it was sent to server
                beforeSend: function(jqXHR, settings){
                    //adding some Dummy data to the request
                    //settings.data += "&dummyData=whatever";
                    //disable the button until we get the response
                    $('#myButton').attr("disabled", true);
                },
                
                //this is called after the response or error functions are finsihed
                //so that we can take some action
                complete: function(jqXHR, textStatus){
                    //enable the button 
                    $('#myButton').attr("disabled", false);
                }
      
            });        
    });
 
});
</script>

</body>
</html>