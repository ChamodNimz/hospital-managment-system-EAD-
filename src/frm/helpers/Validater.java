package frm.helpers;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validater {
	
	private String dirtyString;
	private String error;
	
	private Matcher matcher ;
	
	
	/*
	 * error codes
	 * 1- true
	 * 0- false
	 * 
	 */

	public Validater() {
		
	}
	
	public Validater(String input) {
		this.dirtyString=input;
	}
	
	public String getDirtyString() {
		return dirtyString;
	}
	
	public void setDirtyString(String dirtyString) {
		this.dirtyString = dirtyString;
	}
	
	public String getError() {
		return error;
	}
	
	public void setError(String error) {
		this.error = error;
	}
	//validate names

	

	public  String name(String input) {
		
		String pattern="^[A-Za-z\\s_\\']{1,10}$";
		Pattern obj = Pattern.compile(pattern);
		
		Matcher m = obj.matcher(input);
		
		if(input.trim().equals("")) {
			this.error="Field should not be empty";
		}
		else if(m.matches()) {
			this.error="Invalid inputs provided. Do not use numbers and simbols";
		}
		return "1";
	}


	
}
