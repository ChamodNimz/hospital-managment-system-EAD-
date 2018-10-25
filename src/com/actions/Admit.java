package com.actions;

import com.opensymphony.xwork2.ActionSupport;

public class Admit extends ActionSupport {
	
	//normal properties
	private int ref_no;
	private int ward_no;
	private int p_id;
	private String reason;
	private String special_notes;
	private String admit_date;
	private String release_date;
	private int floor_no;
	private String doc_name;
	
	//normal getters and setters
	public int getRef_no() {
		return ref_no;
	}
	public void setRef_no(int ref_no) {
		this.ref_no = ref_no;
	}
	public int getWard_no() {
		return ward_no;
	}
	public void setWard_no(int ward_no) {
		this.ward_no = ward_no;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getSpecial_notes() {
		return special_notes;
	}
	public void setSpecial_notes(String special_notes) {
		this.special_notes = special_notes;
	}
	public String getAdmit_date() {
		return admit_date;
	}
	public void setAdmit_date(String admit_date) {
		this.admit_date = admit_date;
	}
	public String getRelease_date() {
		return release_date;
	}
	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}
	public int getFloor_no() {
		return floor_no;
	}
	public void setFloor_no(int floor_no) {
		this.floor_no = floor_no;
	}
	public String getDoc_name() {
		return doc_name;
	}
	public void setDoc_name(String doc_name) {
		this.doc_name = doc_name;
	}
	
	
	
	
	
}
