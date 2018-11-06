package com.actions;

import com.opensymphony.xwork2.ActionSupport;

import managers.AdminManager;

public class Admin extends ActionSupport {
	
	private int adminId;
	private String username;
	private String password;


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	@Override
	public void validate() {
		
		super.validate();
		
		if(username.equals("")) {
			addFieldError("username","Username must not be empty");
			addFieldError("username","Username must not be empty");
		}
	}
	
	@Override
	public void addFieldError(String fieldName, String errorMessage) {
		// TODO Auto-generated method stub
		super.addFieldError(fieldName, errorMessage);
	}

	//execution
	public String execute() {
		
		return SUCCESS;
	}

	//validate login
	public String validateLogin() {
	
		if(AdminManager.isValidUser(username, password)) {
			return SUCCESS;
		}
		else {
			addFieldError("username","Invalid Username/password");
			addFieldError("password","Invalid Username/password");
			return INPUT;
		}
		
	}

}
