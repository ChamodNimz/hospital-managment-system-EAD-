package com.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import frm.helpers.Validater;
import managers.DoctorManager;

public class Doctor extends ActionSupport implements ServletRequestAware {

	// normal properties
	private int doc_id;
	private String doc_name;
	private String doc_specialty;
	private String telephone;
	private String email;
	private String time;


	// special properties
	List<Doctor> list;
	private HttpServletRequest request;
	

	// normal properties getters and setters
	public String getTime() {
		return time;
	}
	
	public void setTime(String time) {
		this.time = time;
	}
	public int getDoc_id() {
		return doc_id;
	}

	public void setDoc_id(int doc_id) {
		this.doc_id = doc_id;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDoc_name() {
		return doc_name;
	}

	public void setDoc_name(String doc_name) {
		this.doc_name = doc_name;
	}

	public String getDoc_specialty() {
		return doc_specialty;
	}

	public void setDoc_specialty(String doc_specialty) {
		this.doc_specialty = doc_specialty;
	}

	@Override
	public void addFieldError(String fieldName, String errorMessage) {

		super.addFieldError(fieldName, errorMessage);
	}
	
	//special getters and setters that are out of model scope but in this class
	public List<Doctor> getList() {
		return list;
	}
	
	public void setList(List<Doctor> list) {
		this.list = list;
	}
	

	// add doctor functionality
	@Override
	public String execute() throws Exception {
		
		if(validation()) {
			
			DoctorManager.addDoctor(this);
			return SUCCESS;
		}
		else {
			
			return INPUT;
		}
		
		
	}
	

	//view doctors functionality
	public String viewDoctors() {
		
		this.list=DoctorManager.getDoctors();
		
		return SUCCESS;
	}
	
	//get doctor by id method 
	public String getDoctorById() {
		this.list=DoctorManager.getDoctorById(doc_id);
		
		return SUCCESS;
	}
	
	//update doctor method
	public String updateDoctor() {
		
		DoctorManager.updateDoctor(this);
		return SUCCESS;
	}
	
	//remove a doctor
	public String removeDoctor() {
		
		DoctorManager.removeDoctor(doc_id);
		return SUCCESS;
	}
	

	
	public boolean validation() {

		Validater validater = new Validater();

		// name validation
		if (!validater.nameIsValid(doc_name)) {

			addFieldError("doc_name", validater.getError());
			return false;
		}

		// specialty validation
		if (!validater.isOnlyLetters(doc_specialty)) {

			addFieldError("doc_specialty", validater.getError());
			return false;
		}

		// telephone validation
		if (!validater.phoneNoIsValid(telephone)) {

			addFieldError("telephone", validater.getError());
			return false;
		}
		return true;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request= request;
		
	}

}
