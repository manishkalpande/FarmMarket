package com.farmMarket.farmMarket.mybeans;

public class ChangePassword {

	private String userid;
	private String passwd;
	private String newpass;
	
	public ChangePassword() {
		userid="";
		passwd="";
		newpass="";
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

	@Override
	public String toString() {
		return "ChangePassword [userid=" + userid + ", passwd=" + passwd + ", newpass=" + newpass + "]";
	}
	
}
