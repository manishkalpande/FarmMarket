package com.farmMarket.farmMarket.mybeans;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Registration {
	private String userid;
	private String passwd;
	private String usernm;
	private String email;
	private String gen;
	private String mobno;
	//@DateTimeFormat(pattern ="yyyy-MM-dd")
	private String dob;	
	private String aadharid;
	private String address;
	
	
	public Registration()
	{
		userid="";
		usernm="";
		passwd="";
		email="";
		gen="";
		mobno="";
		dob="";
		aadharid="";
		address="";
		
	}
	

	public String getGen() {
		return gen;
	}


	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getUsernm() {
		return usernm;
	}

	public void setUsernm(String usernm) {
		this.usernm = usernm;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setGen(String gen) {
		this.gen = gen;
	}



	public String getMobno() {
		return mobno;
	}


	public void setMobno(String mobno) {
		this.mobno = mobno;
	}

	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}


	public String getAadharid() {
		return aadharid;
	}

	public void setAadharid(String aadharid) {
		this.aadharid = aadharid;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


	@Override
	public String toString() {
		return "Registration [userid=" + userid + ", passwd=" + passwd + ", usernm=" + usernm + ", email=" + email
				+ ", gen=" + gen + ", mobno=" + mobno + ", dob=" + dob + ", aadharid=" + aadharid + ", address="
				+ address + "]";
	}

	
	

}
