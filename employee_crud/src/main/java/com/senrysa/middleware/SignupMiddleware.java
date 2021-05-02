package com.senrysa.middleware;

public class SignupMiddleware {

	
	public static boolean emailValidate(String email , String psw) {
		if( email.trim().equals("") ||email.trim().equals(null) || psw.trim().equals("") ||psw.trim().equals(null) ){
			return false ;
		}
		return true ;
	}
	
	public static boolean passwordMatch(String psw , String psw_repet) {
		if( !psw.trim().equals(psw_repet.trim())){
			return false ;
		}
		return true ;
	}
	
	
}
