package com.actions;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;

import frm.helpers.Validater;
import managers.AdmitManager;
import managers.DoctorManager;
import managers.PatientManager;
import managers.PatientReleaseManager;
import managers.WardManager;
import models.PatientRelease;

public class Admit extends ActionSupport {

	// normal properties
	private int ref_no;
	private int ward_no;
	private int p_id;
	private String reason;
	private String special_notes;
	private String admit_date;
	private String release_date;
	private int floor_no;
	private String doc_name;

	// special variables
	private List<Patient> patientList;
	private List<Ward> wardList;
	private List<Doctor> docList;
	private int w_id;
	private int avl_room_count;
	private List<Admit> admitList;
	private String message;
	private int total;

	public int getRef_no() {
		return ref_no;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
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

	public int getW_id() {
		return w_id;
	}

	public void setW_id(int w_id) {
		this.w_id = w_id;
	}

	// special getters and setters
	public int getAvl_room_count() {
		return avl_room_count;
	}

	public void setAvl_room_count(int avl_room_count) {
		this.avl_room_count = avl_room_count;
	}

	public List<Admit> getAdmitList() {
		return admitList;
	}

	public void setAdmitList(List<Admit> admitList) {
		this.admitList = admitList;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	// normal getters and setters
	public List<Patient> getPatientList() {
		return patientList;
	}

	public void setPatientList(List<Patient> patientList) {
		this.patientList = patientList;
	}

	public List<Ward> getWardList() {
		return wardList;
	}

	public void setWardList(List<Ward> wardList) {
		this.wardList = wardList;
	}

	public List<Doctor> getDocList() {
		return docList;
	}

	public void setDocList(List<Doctor> docList) {
		this.docList = docList;
	}

	// get admit details for fill dropdowns
	public String getAdmitDetails() {

		// get patient data
		this.patientList = PatientManager.getPatientsById();

		// get ward data
		this.wardList = WardManager.getWardsWithId();

		// get docnames
		this.docList = DoctorManager.getDoctorWithId();

		return SUCCESS;
	}

	/*
	 * get admit availability details to make the admit
	 */
	public void getAvailabilityDetails() {

		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json");
		PrintWriter out;

		ArrayList<Integer> list = WardManager.getWardAvailability(w_id);

		String json = new Gson().toJson(list);// google json object
		try {
			out = response.getWriter();
			out.println(json);
			out.flush();
		} catch (IOException e) {

			e.printStackTrace();
		}

	}

	// admitPatient method call
	public String admitPatient() {

		if (validation()) {
			
			this.admit_date = this.admit_date.replaceAll("(\\d+)/(\\d+)/(\\d+)", "$3-$1-$2");
			// update ward rooms
			WardManager.updateAvailableRoomCount(ward_no, avl_room_count);

			// update patient admit flag
			PatientManager.updateAdmitFlag(p_id, 1);

			if (AdmitManager.admitPatient(this)) {
				this.message = "This patient is successfully admitted .. !";
				return SUCCESS;
			} else {
				return ERROR;
			}
		}
		else {
			return INPUT;
		}
		

	}

	// view admit list
	public String viewAdmits() {

		this.admitList = AdmitManager.getAdmits();
		return SUCCESS;
	}

	// get patient release data to patient release pages
	public String patientReleaseData() {

		this.patientList = PatientManager.getAdmittedPatients();
		return SUCCESS;
	}

	// get patient details to release this patient ajax call
	public void getPatientDetails() {

		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json");
		PrintWriter out;

		ArrayList<String> list = AdmitManager.getPatientDetails(p_id);

		int roomPrice = WardManager.getRoomPrice(Integer.parseInt(list.get(2)));
		list.add(Integer.toString(roomPrice));

		String json = new Gson().toJson(list);// google json object
		try {
			out = response.getWriter();
			out.println(json);
			out.flush();
		} catch (IOException e) {

			e.printStackTrace();
		}
	}

	public String releasePatientProcess() {

		// update release date in admits table
		AdmitManager.updateReleaseDate(release_date, p_id);

		// set patient admit flag to 2 to make the patient completely off the system but
		// keep data
		PatientManager.updateAdmitFlag(p_id, 2);

		// set patient release details to patientRelease table
		PatientRelease release = new PatientRelease();
		release.setP_id(p_id);
		release.setTotal(total);

		PatientReleaseManager.addReleaseDetails(release);
		this.message = "patient released ...";
		return SUCCESS;
	}

	/*
	 * validations
	 */
	public boolean validation() {

		Validater validater = new Validater();

		// reason validation
		if (!validater.isOnlyLetters(reason)) {
			addFieldError("reason", validater.getError());
			return false;
		}

		// special_notes validation
		if (!validater.isOnlyLetters(special_notes)) {
			addFieldError("reason", validater.getError());
			return false;
		}

		return true;
	}

	@Override
	public void addFieldError(String fieldName, String errorMessage) {

		super.addFieldError(fieldName, errorMessage);
	}

}
