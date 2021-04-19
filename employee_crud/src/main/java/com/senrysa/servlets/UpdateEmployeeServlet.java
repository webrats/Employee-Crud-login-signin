package com.senrysa.servlets;

import java.io.IOException;

import java.sql.SQLException;

import com.senrysa.dao.EmployeeDao;
import com.senrysa.objects.Employee;
import com.senrysa.utility.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class UpdateEmployeeServlet
 */
@WebServlet("/UpdateEmployeeServlet")
public class UpdateEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public UpdateEmployeeServlet() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		
		EmployeeDao empDao = new EmployeeDao(ConnectionProvider.getConnection());
		
		int id = Integer.parseInt(req.getParameter("id")) ;
		
		Employee emp = empDao.getEmployeeById(id);
		emp.setEmp_name(req.getParameter("name"));
		System.out.println(id);
		try {
			if(empDao.updateEmployeeDetails(emp) ==true) {
				
				res.sendRedirect("show_employee.jsp");
			}
			else {
				System.out.println("not Redicrect");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
