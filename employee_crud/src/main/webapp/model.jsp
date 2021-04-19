<!-- Modal -->
<%@page import="com.senrysa.dao.EmployeeDao"%>



<div class="modal fade" id="EditDetails" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Update Details</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">



		<%
		String Edata ;
		
		%>

				<div class=" d-flex justify-content-center">
					<form class="lg-3" action="UpdateEmployeeServlet" method="post">
						<div class="mb-3 ">
							<label for="exampleFormControlInput0" class="form-label">Employee
								Name</label> <input name="name" type="input" class="form-control"
								id="exampleFormControlInput0" placeholder="Amit Nandi">
						</div>
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">Email
								address</label> <input name="email" type="email" class="form-control"
								id="exampleFormControlInput1" placeholder="name@example.com">
						</div>
						<div class="mb-3">
							<label for="exampleFormControlTextarea1" class="form-label">Mobile
								Number </label> <input name="mobile" class="form-control"
								id="exampleFormControlTextarea1" placeholder="98000xxxxx">
							</textarea>
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Save
								changes</button>
						</div>

					</form>
				</div>



			</div>

		</div>
	</div>
</div>