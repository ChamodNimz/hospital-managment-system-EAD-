package com.actions;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import frm.helpers.Validater;
import managers.DoctorManager;
import managers.PatientManager;
import managers.WardManager;

public class Patient extends ActionSupport {

	// normal persistence variables
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
	private int admit_flag;

	// special variables
	private String message;// to send a message to front end when a transaction completed
	private List<Patient> patientList; // to send patient list to admits
	private List<Ward> wardList; // to send ward id and name to admits
	private List<Doctor> docList; // to send doctor id and name to admits
	private int w_id; // to store ajax incomming w_id value

	// special getters and setters
	public List<Doctor> getDocList() {
		return docList;
	}

	public int getW_id() {
		return w_id;
	}

	public void setW_id(int w_id) {
		this.w_id = w_id;
	}

	public void setDocList(List<Doctor> docList) {
		this.docList = docList;
	}

	public List<Ward> getWardList() {
		return wardList;
	}

	public void setWardList(List<Ward> wardList) {
		this.wardList = wardList;
	}

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

	// normal getters and setters
	public int getPatient_id() {
		return patient_id;
	}

	public int getAdmit_flag() {
		return admit_flag;
	}

	public void setAdmit_flag(int admit_flag) {
		this.admit_flag = admit_flag;
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

		return SUCCESS;
	}

	public String registerPatient() {

		this.admit_flag = 0;
		if(validation()) {
			PatientManager.registerPatient(this);
			this.message = "successfully registered";
			return SUCCESS;	
		}
		else {
			return INPUT;
		}
		
	}

	@Override
	public void addFieldError(String fieldName, String errorMessage) {

		super.addFieldError(fieldName, errorMessage);
	}

	public boolean validation() {

		Validater validater = new Validater();

		// fname validation
		if (!validater.nameIsValid(p_fname)) {

			addFieldError("p_fname", validater.getError());
			return false;
		}

		// fname validation
		if (!validater.nameIsValid(p_lname)) {

			addFieldError("p_lname", validater.getError());
			return false;
		}

		// address validation
		if (!validater.isValidAddress(p_address)) {

			addFieldError("p_address", validater.getError());
			return false;
		}

		// telephone validation
		if (!validater.phoneNoIsValid(telephone)) {

			addFieldError("telephone", validater.getError());
			return false;
		}

		// NIC validation
		if (!validater.isValidNIC(p_nic)) {

			addFieldError("p_nic", validater.getError());
			return false;
		}
		return true;
	}

}
