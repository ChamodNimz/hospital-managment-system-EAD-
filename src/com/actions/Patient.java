package com.actions;

import java.util.List;
import com.opensymphony.xwork2.ActionSupport;
import managers.PatientManager;

public class Patient extends ActionSupport {
	
	//normal persistence variables
	private int patient_id;
	private String p_fname;
	private String p_lname;
	private String email;
	private String p_address;
	private String p_gender;
	private String reg_date;
	private String telephone;
	private String password;
	private String p_nic;
	
	
	//special variables 
	private String message;// to send a message to front end when a transaction completed
	private List<Patient> patientList ; // to send patient list to admits
	
	
	//special getters and setters 
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public List<Patient> getPatientList() {
		return patientList;
	}
	public void setPatientList(List<Patient> patientList) {
		this.patientList = patientList;
	}
	
	
	
	//normal getters and setters
	public int getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(int patient_id) {
		this.patient_id = patient_id;
	}
	public String getP_fname() {
		return p_fname;
	}
	public void setP_fname(String p_fname) {
		this.p_fname = p_fname;
	}
	public String getP_lname() {
		return p_lname;
	}
	public void setP_lname(String p_lname) {
		this.p_lname = p_lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getP_address() {
		return p_address;
	}
	public void setP_address(String p_address) {
		this.p_address = p_address;
	}
	public String getP_gender() {
		return p_gender;
	}
	public void setP_gender(String p_gender) {
		this.p_gender = p_gender;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getP_nic() {
		return p_nic;
	}
	public void setP_nic(String p_nic) {
		this.p_nic = p_nic;
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
	
	
	//get admit details for fill dropdowns
	public String getAdmitDetails() {
		
		//get patient data
		this.patientList =PatientManager.getPatientsById();
		
		//get ward data
		
		//get docnames
		
		return SUCCESS;
	}
	
	@Override
	public void addFieldError(String fieldName, String errorMessage) {
		
		super.addFieldError(fieldName, errorMessage);
	}
	
	
	
	
	
	
	

}
