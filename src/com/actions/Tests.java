package com.actions;

import com.opensymphony.xwork2.ActionSupport;

import frm.helpers.Validater;

public class Tests extends ActionSupport {

	private int t_id;
	private String test_name;
	private String date;
	private String f_name;
	private String l_name;
	private String telephone;
	private int total;
	private String email;
	private int issue_flag=0;
	private int paid_flag=0;
	
	
	public int getT_id() {
		return t_id;
	}
	public void setT_id(int t_id) {
		this.t_id = t_id;
	}
	public String getTest_name() {
		return test_name;
	}
	public void setTest_name(String test_name) {
		this.test_name = test_name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getF_name() {
		return f_name;
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
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getIssue_flag() {
		return issue_flag;
	}
	public void setIssue_flag(int issue_flag) {
		this.issue_flag = issue_flag;
	}
	public int getPaid_flag() {
		return paid_flag;
	}
	public void setPaid_flag(int paid_flag) {
		this.paid_flag = paid_flag;
	}
	
	
	
	@Override
	public void addFieldError(String fieldName, String errorMessage) {
		
		super.addFieldError(fieldName, errorMessage);
	}
	
	
	
	@Override
	public void validate() {
		
		super.validate();
		
		Validater validater = new Validater();
		
		
		if(!validater.nameIsValid(f_name)) {
			
			addFieldError("f_name", validater.getError());
		}
		
		if(!validater.nameIsValid(l_name)) {
			
			addFieldError("l_name", validater.getError());
		}
		
		if(!validater.phoneNoIsValid(telephone)) {
			
			addFieldError("telephone", validater.getError());
		}
	}
	
	@Override
	public String execute() throws Exception {
		
		TestsManager.createTest(this); 
	
		return SUCCESS;
	}
	
	
	/*
	 * to fill data with tests that has submitted
	 */
	public void getSearchNames() {
		
	}
	
	/*
	 * do payment when customer pays for test results
	 * 
	 */
	public void payForResults() {
		
	}
	
	
	
	
		
}
