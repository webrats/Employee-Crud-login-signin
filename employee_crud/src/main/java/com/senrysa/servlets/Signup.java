package com.senrysa.servlets;

import java.io.IOException;
import java.io.PrintWriter;


import javax.crypto.*;

import java.sql.SQLException;



import com.senrysa.dao.UserDao;
import com.senrysa.middleware.SignupMiddleware;
import com.senrysa.objects.User;
import com.senrysa.utility.ConnectionProvider;
import com.senrysa.utility.Security;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Signup() {
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, res);
		String email = req.getParameter("email");
		String psw = req.getParameter("psw");
		String psw_repeat = req.getParameter("psw-repeat");
		
		StringBuffer buffer=new StringBuffer();
		
		 try {
				
				Security.setKey(KeyGenerator.getInstance("DESede").generateKey());
				Security.setCipher(Cipher.getInstance("DESede"));
				
				//Encryption 
				byte[] encryptionBytes = Security.encrypt(psw);
				String passw=new String(encryptionBytes);
				
				//System.out.println(passw);
				
				//Decryption
				System.out.println(Security.decrypt(passw.getBytes()));
			} catch (Exception e1) {
				
				System.out.println("Encryption Problem "+e1);
			}
		
		
		 PrintWriter out = res.getWriter();
		if(! SignupMiddleware.emailValidate(email, psw)) {
			out.write("Email or Password Cann't be Null!");
		}
		else if(!SignupMiddleware.passwordMatch(psw, psw_repeat)) {
			out.write("Password Mismatch");
		}
		else {
        
        
		try {
			/*
			
			byte[] encryptionBytes = Security.encrypt(psw);
			 psw=new String(encryptionBytes);
			 
			 String dpsw = new String(Security.decrypt(psw.getBytes()));
			 System.out.println("Dycript "+dpsw);
			
			System.out.println(psw);
			*/
			
		} catch (Exception e1) {
			
			System.out.println("Encryption Problem "+e1);
		}
		
		
		
		
		UserDao dao = new UserDao(ConnectionProvider.getConnection());
		User user = new User(email,psw);
		
		try {
			if(dao.saveUser(user).equals("saved"))
			{
				out.print("success");
			}
			else if(dao.saveUser(user).equals("present")) {
				out.print("present");
			}
			else {
				out.print("fail");
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		}
	}

}
