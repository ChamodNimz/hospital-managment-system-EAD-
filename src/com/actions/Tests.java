package com.actions;

import com.opensymphony.xwork2.ActionSupport;

public class Tests extends ActionSupport {

	private int t_id;
	private String test_name;
	private String date;
	private String f_name;
	private String l_name;
	private String telephone;
	private int total;
	private String email;
	private int issue_flag;
	private int paid_flag;
	
	
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
	public String execute() throws Exception {
		
		System.out.println(f_name);
		System.out.println(l_name);
		System.out.println(telephone);
		System.out.println(test_name);
		System.out.println(date);
		return SUCCESS;
	}
	
	
	
	
}
