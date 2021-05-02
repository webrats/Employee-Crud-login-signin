package com.senrysa.dao;

import java.sql.*;

import com.senrysa.objects.Employee;
import com.senrysa.objects.User;

public class UserDao {

	
	Connection con ;

	public UserDao(Connection con) {
		super();
		this.con = con;
	}
	
	
	
	// Inserting User object in Database 
	
	public String saveUser(User user ) throws SQLException {
		
		if(getUserByEamilCheck(user.getEmail())) {
			return "present";
		}
		
		
		String quary ="insert into user (email,password) values(?,?)";
		
		 
		try {
			PreparedStatement ps  =   con.prepareStatement(quary);
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getPsw());

			ps.executeUpdate();
			ps.close();
			return "saved";
				
		}
		catch(Exception e) {
			System.out.println(">>>>>>>> SET User EXEPTION ");
			e.printStackTrace();
			
		}
		
				
		
		return "saved";
		
	}
	

	
	
	
	// Get an User by Email 
	public User getUserByEamil(String email ) throws SQLException {
		
		User user = null ;
		
		String quary = "select * from user where email = ? ";
		  
		  
		try {
			
			PreparedStatement ps  = con.prepareStatement(quary);
			
			 ps.setString(1, email);
			
			 
			 ResultSet rs  =  ps.executeQuery();
			 while(rs.next()) {
				 
				 
				 String Email =rs.getString("email");
				 String psw = rs.getString("password");
				
				 user = new User(Email,psw);
			 }
			 
			 
		}catch(Exception e) {
			System.out.println("GET User by email  ");
			e.printStackTrace();
		}
		
		
		return user ;
	}
	
	
	// Get an Employee by email
		public Boolean getUserByEamilCheck(String email  ) throws SQLException {
  
			try {
				
				String quary = "select * from user where email = ? ";
				PreparedStatement ps = con.prepareStatement(quary);
				 ps.setString(1, email);
				 
				 
				 ResultSet rs  =  ps.executeQuery();
				
				 while(rs.next()) {

					 return true ;
				 }
				 
				 
			}catch(Exception e) {
				System.out.println("GET User by email Check exeption ");
				e.printStackTrace();
			}
			
			 
			return false ;
		}
	
	
}
