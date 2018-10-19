package com.actions;

import com.opensymphony.xwork2.ActionSupport;

public class Patient extends ActionSupport {
	
	private int patient_id;
	private String f_name;
	private String l_name;
	private String e_mail;
	private String address;
	private String gender;
	
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
		
	System.out.println(f_name);
	System.out.println(l_name);
	System.out.println(gender);
	
		return SUCCESS;
	}
	
	@Override
	public void validate() {
		
		super.validate();
		addFieldError("f_name", "fuck");
		
	}
	
	@Override
	public void addFieldError(String fieldName, String errorMessage) {
		
		super.addFieldError(fieldName, errorMessage);
	}
	
	
	
	
	
	
	

}
