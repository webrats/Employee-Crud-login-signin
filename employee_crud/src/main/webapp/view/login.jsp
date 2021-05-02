<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

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
<link href="../resources/css/login.css" rel="stylesheet" type="text/css">

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
							<h6 class="msg-info">Please login to your account</h6>


							<form action=""id="myAjaxRequestForm">
							
								<div class="form-group">
									<label class="form-control-label text-muted">Username</label> <input
										type="text" id="email" name="email" placeholder="Email id"
										class="form-control">
								</div>
								<div class="form-group">
									<label class="form-control-label text-muted">Password</label> <input
										type="password" id="psw" name="psw" placeholder="Password"
										class="form-control">
								</div>
								<div class="row justify-content-center my-3 px-3">
									<button id="myButton" class="btn-block btn-color">Login to Dev.
										Community</button>
								</div>
							</form>


							<div class="row justify-content-center my-2">
								<a href="#"><small class="text-muted">Forgot
										Password?</small></a>
							</div>
						</div>
					</div>
					<div class="bottom text-center mb-5">
						<p class="sm-text mx-auto mb-3">
							Don't have an account?<a href="signup.jsp"
								class="btn btn-white ml-2">Create new</a>
						</p>
					</div>
				</div>
				<div class="card card2">
					<div class="my-auto mx-md-5 px-md-5 right">
						<h3 class="text-white">We are more than just a Community</h3>
						<small class="text-white"></small>
					</div>
				</div>
			</div>
		</div>
	</div>



<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>



<!-- Ajax Servlet Call  -->
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
                url: "../Login",
                data: $("#myAjaxRequestForm").serialize(),
                dataType: "html",
                
                //if received a response from the server
                success: function( data, textStatus, jqXHR) {
                    //our request was success so we have  some information to display
                   
                    
                    if(data =="success"){
                    	 swal("Sign in successful!", "", "success")
                         $("#ajaxResponse").html(data);
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