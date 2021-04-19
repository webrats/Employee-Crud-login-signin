<%@page import="com.senrysa.utility.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee CURD</title>

<!-- CCS for Bootstrap  -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

</head>
<body>
<h1 class="d-flex justify-content-center">Give employee Information</h1>




<div class=" d-flex justify-content-center">
<form class="lg-3" action="SetEmployeeServlet" method="post">
<div class="mb-3 ">
  <label for="exampleFormControlInput0" class="form-label">Employee Name</label>
  <input name="name" type="input" class="form-control" id="exampleFormControlInput0" placeholder="Amit Nandi">
</div>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Email address</label>
  <input  name="email" type="email"  class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label" >Mobile Number </label>
  <input name="mobile" class="form-control" id="exampleFormControlTextarea1"  placeholder="98000xxxxx"></textarea>
</div>
<div class="md-3">
<button type ="submit">Add Employee</button>
</div>
</form>
</div>


<!-- JS for bootstrap  -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>