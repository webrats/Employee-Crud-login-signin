package com.senrysa.objects;

public class User {
	private int id ;
	private String email;
	private String psw ;
	
	
	
	public User() {
		super();
	}
	
	public User(String email, String psw) {
		super();
		this.email = email;
		this.psw = psw;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPsw() {
		return psw;
	}
	public void setPsw(String psw) {
		this.psw = psw;
	}
	
	
	
}
