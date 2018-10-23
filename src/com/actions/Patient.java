package com.actions;

import com.opensymphony.xwork2.ActionSupport;

public class Patient extends ActionSupport {
	
	//normal persistence variables
	private int patient_id;
	private String f_name;
	private String l_name;
	private String e_mail;
	private String address;
	private String gender;
	
	//special variables 
	private String message;// to send a message to front end when a transaction completed
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
	
	//normal getters and setters
	public int getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(int patient_id) {
		this.patient_id = patient_id;
	}
	public String getF_name() {
		return f_name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getL_name() {
		return l_name;
	}
	public void setL_name(String l_name) {
		this.l_name = l_name;
	}
	public String getE_mail() {
		return e_mail;
	}
	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	@Override
	public String execute() throws Exception {
		
		this.message="successfully admitted";
		return SUCCESS;
	}
	
	
	//admitPatient method call
	public String admitPatient() {
		
		return SUCCESS;
	}
	
	@Override
	public void addFieldError(String fieldName, String errorMessage) {
		
		super.addFieldError(fieldName, errorMessage);
	}
	
	
	
	
	
	
	

}
