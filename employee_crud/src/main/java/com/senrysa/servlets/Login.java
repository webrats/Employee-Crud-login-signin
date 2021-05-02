package com.senrysa.servlets;

import java.io.IOException;

import javax.crypto.*;


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
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Login() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String email = req.getParameter("email");
		String psw = req.getParameter("psw");
		StringBuffer buffer=new StringBuffer();
		
			
		
		if(! SignupMiddleware.emailValidate(email, psw)) {
			//out.write("Email or Password Cann't be Null!");
		}
		
		else {
			
			UserDao dao = new UserDao(ConnectionProvider.getConnection());
			
			
			try {
				User user   = dao.getUserByEamil(email);
				if(!user.getPsw().equals(null) || !user.getPsw().equals("")) {
					
					String  dpsw =new String(user.getPsw());
					System.out.println(dpsw);
					
					Security.setKey(KeyGenerator.getInstance("DESede").generateKey());
					Security.setCipher(Cipher.getInstance("DESede"));
					
					//Encryption 
					//byte[] encryptionBytes = Security.encrypt(dpsw);
					//String passw=new String(encryptionBytes);
					
					//System.out.println(passw);
					System.out.println("Œg×)~ºO".getBytes());
					//Decryption
					System.out.println("Dycript pass :"+Security.decrypt("Œg×)~ºO".getBytes()));
					 
					 
					
					if(dpsw.equals(psw)) {
						//out.print("success");
					}
					else {
						//out.print("Invalid User credentials!");
					}
				}
				else{
					
					//out.print("Invalid User credentials!");
				}
				
				
				System.out.println(psw);
				
			} catch (Exception e1) {
				
				System.out.println("Encryption Problem "+e1);
			}
			
		}
		
		
		}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
