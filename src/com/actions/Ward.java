package com.actions;

import com.opensymphony.xwork2.ActionSupport;

import frm.helpers.Validater;
import managers.WardManager;

public class Ward extends ActionSupport {

	// normal properties
	private int w_id;
	private String w_name;
	private String room_count;
	private int available_rooms;
	private float price;
	
	
	// special properties
	private String message;


	public int getW_id() {
		return w_id;
	}


	public void setW_id(int w_id) {
		this.w_id = w_id;
	}


	public String getW_name() {
		return w_name;
	}


	public void setW_name(String w_name) {
		this.w_name = w_name;
	}

	public String getRoom_count() {
		return room_count;
	}


	public void setRoom_count(String room_count) {
		this.room_count = room_count;
	}


	public int getAvailable_rooms() {
		return available_rooms;
	}


	public void setAvailable_rooms(int available_rooms) {
		this.available_rooms = available_rooms;
	}


	public float getPrice() {
		return price;
	}


	public void setPrice(float price) {
		this.price = price;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}


	// add a ward method
	@Override
	public String execute() throws Exception {
		
		try {
			if(validation()) {
				
				this.available_rooms=Integer.parseInt(this.room_count);
				
				if(WardManager.addWard(this)) {
					this.message="Successfully added this ward";
				}
				else {
					this.message="error adding this ward";
				}
				return SUCCESS;
			}
			else {
				return INPUT;
			}
			
			
			
		}catch(NumberFormatException e) {
			addFieldError("room_count","Room count should be a number");
			return INPUT;
		}
		catch (Exception e) {
			this.message="error adding an exception occured";
			return SUCCESS;
		}
		
	}
	
	public boolean validation() {
		
		Validater  validater = new Validater();
		
		//validate w_name
		if(!validater.nameIsValid(w_name)) {
			addFieldError("w_name",validater.getError());
			return false;
		}
		//total_rooms 
		if(!validater.isNumber(room_count)) {
			addFieldError("room_count",validater.getError());
			return false;
		}
		return true;
	}


	@Override
	public void addFieldError(String fieldName, String errorMessage) {
		
		super.addFieldError(fieldName, errorMessage);
	}
	
	
	
	
	
	
	
	
}
