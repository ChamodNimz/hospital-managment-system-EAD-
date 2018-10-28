package com.actions;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import managers.AdmitManager;
import managers.ChannelManager;
import managers.DoctorManager;
import managers.WardManager;

public class Channel extends ActionSupport {

	private int channel_id;
	private int doc_id;
	private String date;
	private String desease_type;
	
	//special properties 
	private List<Doctor> docList;
	private String message;
	private int apt_count;
	private List<Channel> channelList;
	
	
	//getters and setters normal 
	public int getChannel_id() {
		return channel_id;
	}
	public void setChannel_id(int channel_id) {
		this.channel_id = channel_id;
	}
	public int getDoc_id() {
		return doc_id;
	}
	public void setDoc_id(int doc_id) {
		this.doc_id = doc_id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDesease_type() {
		return desease_type;
	}
	public void setDesease_type(String desease_type) {
		this.desease_type = desease_type;
	}
	
	
	//special getters and setters
	
	public List<Doctor> getDocList() {
		return docList;
	}
	public List<Channel> getChannelList() {
		return channelList;
	}
	public void setChannelList(List<Channel> channelList) {
		this.channelList = channelList;
	}
	public int getApt_count() {
		return apt_count;
	}
	public void setApt_count(int apt_count) {
		this.apt_count = apt_count;
	}
	public void setDocList(List<Doctor> docList) {
		this.docList = docList;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
	/*
	 * get init details method to create the initial page to fill the channel detials
	 *  
	 */
	public String getInitDetails() {
		
		this.docList=DoctorManager.getDoctorWithId();
		return SUCCESS;
	}
	
	/*
	 * get selected doc details 
	 * 
	 * 	* doc_specailty
	 * 	* avlble time 
	 * 					 for channel ajax call 
	 */
	public void getSelectedDocAjax() {
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json");
		PrintWriter out;

		ArrayList<String> list = DoctorManager.getDocChannelDetails(doc_id);


		String json = new Gson().toJson(list);// google json object
		try {
			out = response.getWriter();
			out.println(json);
			out.flush();
		} catch (IOException e) {

			e.printStackTrace();
		}
		
	}
	
	/*
	 * 
	 *  add  appointment 
	 * 
	 */
	public String addAppointment() {
		
		this.date = this.date.replaceAll("(\\d+)/(\\d+)/(\\d+)", "$3-$1-$2");
		ChannelManager.addChannel(this);
		this.message="your appointment has been created please visit us on chosen time ";
		System.out.println(apt_count);
		System.out.println(doc_id);
		// update apt_count
		DoctorManager.updateAptCount(apt_count,doc_id);
		return SUCCESS;
	}
	
	/*
	 * 
	 *  get Channels to view all
	 * 
	 */
	public String viewChannels() {
		
		this.channelList=ChannelManager.getChannels();
		return SUCCESS;
	}
	
	
}
