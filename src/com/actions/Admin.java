package com.actions;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;

import managers.AdminManager;

public class Admin extends ActionSupport implements SessionAware {
	
	private int adminId;
	private String username;
	private String password;
	
	
	//map 
	private Map<String,Object>  session;


	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

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
	

		public boolean validation() {
			if(username.equals("")) {
				addFieldError("username","Username must not be empty");
				addFieldError("username","Username must not be empty");
				return false;
			}
			else {
				return true;
			}

		}
		
	
	@Override
	public void addFieldError(String fieldName, String errorMessage) {
	
		super.addFieldError(fieldName, errorMessage);
	}

	//execution
	public String execute() {
		if(validation()) {
			return SUCCESS;
		}
		else {
			return INPUT;
		}
	
	}

	//validate login
	public String validateLogin() {
	
		if(AdminManager.isValidUser(username, password)) {
			session.put("user", this);
			return SUCCESS;
		}
		else {
			addFieldError("username","Invalid Username/password");
			addFieldError("password","Invalid Username/password");
			return INPUT;
		}
		
	}
	
	//logout function 
	public String logOut() {
		session.remove("user");
		return SUCCESS;
	}

}
