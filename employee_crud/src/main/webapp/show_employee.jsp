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


<title>Query DataTables </title>

<link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>






<!-- CCS for Bootstrap  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

</head>
<body>
	<div class=" d-flex justify-content-center">
		<h2>Details of All Employee</h2>
	</div>

	<div class=" d-flex justify-content-center p-3 m-3">

		<table id="companies" class="table-success col">
			<thead>
				<tr>

					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Mobile</th>
				</tr>
			</thead>
			<tbody>

				<%
				EmployeeDao empDao = new EmployeeDao(ConnectionProvider.getConnection());

				ArrayList<Employee> arr = empDao.getAllEmployee();
				for (Employee emp : arr) {
				%>
				<!--HTML  -->

				<tr>


					<td><%=emp.getEmp_name()%></td>

					<td><%=emp.getEmp_mail()%></td>
					<td class="d-flex p-2 m-2"><%=emp.getEmp_mobile()%> <a
						type="button" href="edit_employee.jsp?id=<%=emp.getEmp_id()%>"
						class="btn btn-primary m-auto">Edit</a></td>

				</tr>
				<!--  HTML END-->

				<%
				}
				%>


				




			</tbody>
		</table>

	</div>

	<!-- JS for bootstrap  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
		crossorigin="anonymous"></script>



<script type="text/javascript">
	$(document).ready(function() {
		$("#companies").dataTable({
			"sPaginationType" : "full_numbers",
			"bJQueryUI" : true
		});
	});
</script>

</body>
</html>