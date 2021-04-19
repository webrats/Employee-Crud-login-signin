<%@page import="com.senrysa.utility.ConnectionProvider"%>
<%@page import="com.senrysa.dao.EmployeeDao"%>
<%@page import="com.senrysa.objects.Employee"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>

<!-- CCS for Bootstrap  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

</head>
<body>

					<%
					EmployeeDao empDao = new EmployeeDao(ConnectionProvider.getConnection());

					Employee emp = empDao.getEmployeeById(Integer.parseInt(request.getParameter("id")));
					
					%>


	<div class=" d-flex justify-content-center">
		<h2>Details of All Employee</h2>
	</div>

	<div class=" d-flex justify-content-center p-3 m-3">

		<form method="post" action="UpdateEmployeeServlet">

			<table class="table-success col">
				<thead>
					<tr>

						<th scope="col">Name</th>
						<th scope="col">Email</th>
						<th scope="col">Mobile</th>
					</tr>
				</thead>
				<tbody>


					


					<!--HTML  -->

					<tr>


						<td><input type="text" name="name"
							value=<%=emp.getEmp_name()%> size="50"></td>
						<td><%=emp.getEmp_mail()%></td>
						<td class="d-flex p-2 m-2"><%=emp.getEmp_mobile()%></td>

					</tr>
					<!--  HTML END-->


				</tbody>
			</table>
			<button type="submit" class="btn btn-primary">Save Change</button>
			<input type="hidden" name="id" value=<%=emp.getEmp_id()%> >
		</form>

	</div>

	<!-- JS for bootstrap  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
		crossorigin="anonymous"></script>





</body>
</html>