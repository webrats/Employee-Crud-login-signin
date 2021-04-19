package com.senrysa.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import com.senrysa.dao.EmployeeDao;
import com.senrysa.objects.Employee;
import com.senrysa.utility.ConnectionProvider;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class SetEmployeeServlet
 */
@SuppressWarnings("serial")
@WebServlet("/SetEmployeeServlet")
public class SetEmployeeServlet extends HttpServlet {

    public SetEmployeeServlet() {
       
    }


	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String mobile = req.getParameter("mobile");
		
		
		Employee emp = new Employee(name,email,mobile);
		
		EmployeeDao empDao = new EmployeeDao(ConnectionProvider.getConnection());
		PrintWriter out = res.getWriter();
		res.setContentType("text/html");
		try {
			if(empDao.setEmployee(emp)) {
				out.print("<h2>Employee is Added successfully !!</h2>");
				RequestDispatcher rd =  req.getRequestDispatcher("add_employee.jsp");
				rd.include(req, res);
				
			}
			else {
				out.print("<h2>Already Exist !!</h2>");
				RequestDispatcher rd =  req.getRequestDispatcher("add_employee.jsp");
				rd.include(req, res);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		out.close();
	}

}
