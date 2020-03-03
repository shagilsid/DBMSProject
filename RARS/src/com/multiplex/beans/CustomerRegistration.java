package com.multiplex.beans;

import java.sql.Blob;

public class CustomerRegistration 
{
	private String userName;
	private String password;
	private String email;
	private String dob;
	private String gender;
	private String mobileNo;
	private Blob image;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	
	@Override
	public String toString() {
		return "CustomerRegistration [userName=" + userName + ", password=" + password + ", email=" + email + ", dob="
				+ dob + ", gender=" + gender + ", mobileNo=" + mobileNo + ", image=" + image + "]";
	}


}
