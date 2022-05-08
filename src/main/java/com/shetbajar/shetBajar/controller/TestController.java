package com.shetbajar.shetBajar.controller;

import java.sql.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shetbajar.shetBajar.mybeans.DBConnector;
import com.shetbajar.shetBajar.mybeans.PasswordHashing;
import com.shetbajar.shetBajar.mybeans.Registration;

@Controller
public class TestController {

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String firstLine() {
		return "home";
	}

	@RequestMapping(path = "/logincust", method = RequestMethod.POST)
	public String customer(@ModelAttribute Registration registration, Model model) {
		String un = registration.getUsernm();
		String pw = registration.getPasswd();
		PasswordHashing ph = new PasswordHashing();
		String unm = ph.doHashing(un);
		String psw = ph.doHashing(pw);

		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		boolean check = false;
		con = DBConnector.getConnected();
		try {
			pst = con.prepareStatement("select * from customers where cust_uame=? and cust_pass=?");
			pst.setString(1, unm);
			pst.setString(2, psw);
			rs = pst.executeQuery();

			if (rs.next()) {
				check = true;
			} else {
				check = false;
			}
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
		}

		return check ? "home" : "failure";
	}

	@RequestMapping(path = "/restation", method = RequestMethod.POST)
	public String registration(@ModelAttribute Registration registratoin, Model model) {

		return "";
	}

}
