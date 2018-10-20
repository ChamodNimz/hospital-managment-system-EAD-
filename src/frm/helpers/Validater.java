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

	

	public  boolean nameIsValid(String input) {
		
		String pattern="^[A-Za-z\\s_\\']{1,10}$";
		Pattern obj = Pattern.compile(pattern);
		
		Matcher m = obj.matcher(input);
		
		if(input.trim().equals("")) {
			this.error="Field should not be empty";
			return false;
		}
		else if(!m.matches()) {
			this.error="Invalid inputs provided. Do not use numbers and simbols";
			return false;
		}
		return true;
	}
	
	public  boolean phoneNoIsValid(String input) {
		
		String pattern="^[0-9]{10}$";
		Pattern obj = Pattern.compile(pattern);
		Matcher matcher = obj.matcher(input);
		
		if(!matcher.matches()) {
			
			this.error="Phone no should contain only 10 numbers";
			return false;
			
		}
		return true;
		
	}
	
	public boolean isValidNIC(String input) {
		
		String pattern="^[0-9]{10}(v|V)$";
		Pattern obj = Pattern.compile(pattern);
		Matcher matcher = obj.matcher(input);
		
			if(!matcher.matches()) {
				this.error="NIC should be 9 digits followed by 'v' Nothing other than that";
				return false;
			}
		return true;
	}
	
	public boolean isValidAddress() {
		
		String pattern ="^[A-Za-z0-9\\s]{}$";
		
		return true;
	}


	
}
