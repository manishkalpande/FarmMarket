package com.farmMarket.farmMarket.controller;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.DefaultBootstrapContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.farmMarket.farmMarket.mybeans.DBConnector;
import com.farmMarket.farmMarket.mybeans.Order;
import com.farmMarket.farmMarket.mybeans.PasswordHashing;
import com.farmMarket.farmMarket.mybeans.Registration;

@Controller
public class TestController 
{
//	@Autowired
//	HttpServletRequest request;
//	@Autowired
//	HttpServletResponse response;
//	@Autowired
//	HttpSession ses=request.getSession(true);
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String firstLine() {
		return "home";
	}

	@RequestMapping(path = "login", method = RequestMethod.GET)
	public String loginPage() {
		return "login";
	}

	@RequestMapping(path = "logincust", method = RequestMethod.POST)
	public String customer(@ModelAttribute("reg") Registration reg, Model model) {
		String un = reg.getUsernm();
		String pw = reg.getPasswd();
		PasswordHashing ph = new PasswordHashing();
		String unm = ph.doHashing(un);
		String psw = ph.doHashing(pw);
		
		System.out.println(un+" "+unm);
		System.out.println(pw+" "+psw);

		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		boolean check = false;

		try {
			con = DBConnector.getConnected();
			pst = con.prepareStatement("select * from customers where cust_name=? and cust_pass=?;");
			pst.setNString(1, unm);
			pst.setNString(2, psw);
			rs = pst.executeQuery();
			System.out.println("try cha andart");

			if (rs.next()) {
			//	ses.setAttribute("userid", rs.getNString(0));
				System.out.println("bundi");
				check = true;
			} else {
				System.out.println("bhavika");
				check = false;
			}
		} catch (Exception e) {
			System.out.println("catch madhi");
			System.out.println(e.getStackTrace());
		}

		return check ? "home" : "failure";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		return "registration";
	}

	@RequestMapping(value = "/registrationcu", method = RequestMethod.POST)
	public String registration(@ModelAttribute("reg") Registration reg, Model model) {

		String mob = String.valueOf(reg.getMobno());
		String adh = String.valueOf(reg.getAadharid());
		String userid = (mob.substring(0, 3)) + adh.substring(0, 3);
		reg.setUserid(userid);
		PasswordHashing ph = new PasswordHashing();
		reg.setUsernm(ph.doHashing(reg.getUsernm()));
		reg.setPasswd(ph.doHashing(reg.getPasswd()));
		
		System.out.println(reg);
//		System.out.println(reg.getEmail());
//		System.out.println(reg.getUsernm());
		
		Connection con;
		CallableStatement cb;
		ResultSet rs;

		try {
			con = DBConnector.getConnected();
			cb = con.prepareCall("call newcustomer(?,?,?,?,?,?,?,?,?)");
			cb.setString(1, userid);
			cb.setString(2, reg.getPasswd());
			cb.setString(3, reg.getUsernm());
			cb.setString(4, reg.getEmail());
			cb.setString(5, reg.getGen());
			cb.setString(6, reg.getMobno());
			cb.setString(7, reg.getDob());
			cb.setString(8, reg.getAadharid());
			cb.setString(9, reg.getAddress());
			cb.execute();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "login";
	}

	@RequestMapping(path = "requestorder", method = RequestMethod.GET)
	public String sendMessage(@ModelAttribute Order order) {
		Connection con;
		CallableStatement cb;
		PreparedStatement pst;
		ResultSet rs;
		
		if(order.getOrderStatus().equals("accepted")) {
			try {
				con = DBConnector.getConnected();
				pst = con.prepareStatement("update order set order_status=? where order_id=?");
				pst.setString(1, order.getOrderStatus());
				pst.setString(2, order.getOrderid());
				int x = pst.executeUpdate();
				if(x>0) {
					System.out.println("order status updated in orders table");
				}
			}catch(Exception ex) {
				ex.getStackTrace();
			}
			
		}
		
		if(order.getOrderStatus().equals("declined")) {
			try {
				con = DBConnector.getConnected();
				pst = con.prepareStatement("update order set order_status=? where order_id=?");
				pst.setString(1, order.getOrderStatus());
				pst.setString(2, order.getOrderid());
				int x = pst.executeUpdate();
				if(x>0) {
					System.out.println("order status updated in orders table");
				}
			}
				catch(Exception e)
				{
					e.printStackTrace();
				}
			
		if (order.getOrderid().contentEquals("")) {
			int min = 10000000;
			int max = 99999999;
			int orderid = (int) (Math.random() * (max - min + 1) + min);
			order.setOrderid(String.valueOf(orderid));
		}
		

		try {
			con = DBConnector.getConnected();
			cb = con.prepareCall("call callOrder(?,?,?,?,?,?,?,?,?,?,?,?)");
			cb.setString(1, order.getOrderid());
			cb.setString(2, order.getCustomerid());
			cb.setString(3, order.getSellerid());
			cb.setString(4, order.getProdid());
			cb.setDate(5, (Date) order.getDate());
			cb.setNString(6, order.getProdTitle());
			cb.setNString(7, order.getProdUnit());
			cb.setNString(8, order.getProdQuantity());
			cb.setInt(9, order.getProductPrice());
			cb.setString(10, order.getPaymenttype());
			cb.setNString(11, order.getOrderStatus());
			cb.setNString(12, order.getMessage());
			cb.execute();

		} catch (Exception ex) {
			ex.getStackTrace();
		}

		
	}
		return "";
	}
	
	@RequestMapping(path = "forgetpass", method = RequestMethod.GET)
	public String callforgetpass() {
		
		
		return "forgetpassword";
	}
	
	
	@RequestMapping(path = "updateprofile", method = RequestMethod.GET)
	public String updateProfile(@ModelAttribute Order order) {
		
		
		return "";
	}
	

}
