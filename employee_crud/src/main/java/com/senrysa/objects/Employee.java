package com.senrysa.objects;

public class Employee {

private int emp_id;
private String emp_name;
private String emp_mail;
private String emp_mobile ;






public Employee(String emp_name, String emp_mail, String emp_mobile) {
	super();
	this.emp_name = emp_name;
	this.emp_mail = emp_mail;
	this.emp_mobile = emp_mobile;
}



public Employee(int emp_id, String emp_name, String emp_mail, String emp_mobile) {
	super();
	this.emp_id = emp_id;
	this.emp_name = emp_name;
	this.emp_mail = emp_mail;
	this.emp_mobile = emp_mobile;
}



public String getEmp_name() {
	return emp_name;
}
public void setEmp_name(String emp_name) {
	this.emp_name = emp_name;
}
public String getEmp_mail() {
	return emp_mail;
}
public void setEmp_mail(String emp_mail) {
	this.emp_mail = emp_mail;
}
public String getEmp_mobile() {
	return emp_mobile;
}
public void setEmp_mobile(String emp_mobile) {
	this.emp_mobile = emp_mobile;
}



public int getEmp_id() {
	return emp_id;
}



public void setEmp_id(int emp_id) {
	this.emp_id = emp_id;
}





}
