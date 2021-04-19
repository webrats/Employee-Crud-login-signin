<%@page import="com.senrysa.utility.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee CURD</title>

<!-- CCS for Bootstrap  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">


<!-- Java Script cdn -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>

	<div class="p-3 m-3">
		<h2 class="d-flex justify-content-center">Welcome</h2>
	</div>

	<div class="row p-3">
		<div class="col-3"></div>
		<div class="col-3">
			<a type="Button" href="add_employee.jsp" class="btn btn-success">Add
				Employee</a>
		</div>
		<div class="col-3">
			<a type="Button" id="show_emp_details" href="show_employee.jsp"  class="btn btn-success">Show Employee Details</a>
		</div>
		<div class="col-3"></div>
	</div>

	<table cellpadding="0" cellspacing="0" border="0" id="tableid">
		<thead>
			<tr>

				<th width="10%">Name</th>
				<th width="10%">Email</th>
				<th width="10%">Moile No</th>
			</tr>
		</thead>
	</table>

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