package com.farmMarket.farmMarket.mybeans;

public class ChangePassword {

	private String userid;
	private String passwd;
	private String newpass;
	private String usrtype;
	private String email;
	private String otp;
	
	
	public ChangePassword() {
		userid="";
		passwd="";
		newpass="";
		usrtype="";
		email = "";
		otp="";
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

	public String getNewpass() {
		return newpass;
	}

	public void setNewpass(String newpass) {
		this.newpass = newpass;
	}
	
	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getOtp() {
		return otp;
	}

	public void setOtp(String otp) {
		this.otp = otp;
	}

	public String getUsrtype() {
		return usrtype;
	}

	public void setUsrtype(String usrtype) {
		this.usrtype = usrtype;
	}

	@Override
	public String toString() {
		return "ChangePassword [userid=" + userid + ", passwd=" + passwd + ", newpass=" + newpass + ", email=" + email
				+ ", otp=" + otp + "]";
	}

	
	
}
