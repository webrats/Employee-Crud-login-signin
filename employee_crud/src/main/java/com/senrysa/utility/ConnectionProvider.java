package com.senrysa.utility;

import java.sql.*;
public class ConnectionProvider {

	private static Connection con ;
	
	public static Connection getConnection() {
		
		try {
			if(con == null) {
				
				
				// Load the driver class 
				Class.forName("com.mysql.jdbc.Driver");
				
				// Get connection and store in con ;
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_db", "root", "senrysa");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con ;
	}
}
