package com.actions;

import com.opensymphony.xwork2.ActionSupport;

public class Admin extends ActionSupport {
	
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
		System.out.println("username: "+username);
		System.out.println("username: "+password);
		
		return SUCCESS;
	}

	

}
