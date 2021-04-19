package com.senrysa.dao;

import java.sql.*;
import java.util.ArrayList;

import com.senrysa.objects.Employee;

public class EmployeeDao {

	
	Connection con ;

	public EmployeeDao(Connection con) {
		super();
		this.con = con;
	}
	
	
	
	// Inserting Employee object in Database 
	
	public boolean setEmployee(Employee emp ) throws SQLException {
		boolean f = false ;
		
		try {
			String quary ="insert into employee (emp_name,emp_mail,emp_mobile) values(?,?,?)";
			
			PreparedStatement ps =   con.prepareStatement(quary);
			ps.setString(1, emp.getEmp_name());
			ps.setString(2, emp.getEmp_mail());
			ps.setString(3, emp.getEmp_mobile());
			
			ps.executeUpdate();
			
			f = true ;
			ps.close();
			
					
		}
		catch(Exception e) {
			System.out.println(">>>>>>>> SET EPLOYEE EXEPTION ");
			e.printStackTrace();
		}
				
		
		return f;
		
	}
	
	
	//Get All employee obj from the database 
	
	public ArrayList<Employee> getAllEmployee() throws SQLException {
		Employee emp ;
		ArrayList<Employee> arr = new ArrayList<Employee>();
		
		String quary = "select * from employee";
		try {
			 PreparedStatement ps =  con.prepareStatement(quary);
			 ResultSet rs =  ps.executeQuery() ; 
			 
			 
			 while(rs.next()) {
				 int id = rs.getInt(1);
				 String name = rs.getString(2);
				 String mail = rs.getString(3);
				 String mobile = rs.getString(4);
				 emp = new Employee(id,name,mail,mobile);
				 arr.add(emp);
			 }
			 	rs.close();
				ps.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(">>>>>>>> GET EPLOYEE EXEPTION ");
			e.printStackTrace();
		}
		
		
		
		return arr ;
	}
	
	
	
	// Get an Employee by ID
	public Employee getEmployeeById(int id ) {
		Employee emp = null;
		
		try {
			
			String quary = "select * from employee where emp_id = ?";
			 PreparedStatement ps = con.prepareStatement(quary);
			 ps.setInt(1, id);
			 
			 ResultSet rs =  ps.executeQuery();
			 while(rs.next()) {

				 String name =rs.getString("emp_name");
				 String mail = rs.getString("emp_mail");
				 String mobile = rs.getString("emp_mobile");
				 emp = new Employee(id ,name,mail,mobile);
			 }
			 
			 
			 
			 ps.close();
			 rs.close();
		}catch(Exception e) {
			System.out.println("GET Employee by ID exeption ");
			e.printStackTrace();
		}
		return emp ;
	}
	
	// Update an Employee Details by id 
	
	public boolean updateEmployeeDetails(Employee emp ) throws SQLException {
		boolean flag =false ;
		
		try {
			String quary = "update employee set emp_name =? ,emp_mail =? ,emp_mobile=? where emp_id =?";
			
			 PreparedStatement ps = con.prepareStatement(quary);
			 ps.setString(1,emp.getEmp_name());
			 ps.setString(2, emp.getEmp_mail());
			 ps.setString(3, emp.getEmp_mobile());
			 ps.setInt(4,emp.getEmp_id());
			 
			 ps.executeUpdate();
			 flag = true ;
			 
			 ps.close();
			 
			 
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return flag ;
		
	}
	
}
