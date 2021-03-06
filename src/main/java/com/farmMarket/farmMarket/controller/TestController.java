package com.farmMarket.farmMarket.controller;

import java.sql.*;
import java.util.Collection;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.farmMarket.farmMarket.mybeans.AddProduct;
import com.farmMarket.farmMarket.mybeans.ChangePassword;
import com.farmMarket.farmMarket.mybeans.DBConnector;
import com.farmMarket.farmMarket.mybeans.Order;
import com.farmMarket.farmMarket.mybeans.PasswordHashing;
import com.farmMarket.farmMarket.mybeans.Registration;
import com.farmMarket.farmMarket.mybeans.SendMail;

@Controller
public class TestController {

	HttpServletRequest request;
	HttpServletResponse response;
	
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String firstLine() {
		return "home";
	}
	
	@RequestMapping(value = "/home1", method = RequestMethod.GET)
	public String homepage() {
		return "home1";
	}
	
	
	

	@RequestMapping(path = "/login", method = RequestMethod.GET)
	public String loginPage() {
		return "selectUsrType";
	}
	
	@RequestMapping(value = "/myacc", method = RequestMethod.GET)
	public String myAcc(@ModelAttribute Registration reg, Model model,HttpSession session) {
//		PasswordHashing ph = new PasswordHashing();
//		model.addAttribute("usernm",ph.doHashing((String) model.getAttribute("usernm")));
		String x = (String) session.getAttribute("usrtype");
		String id = (String) session.getAttribute("userid");
		System.out.println(x);
		System.out.println(id);
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		boolean check = false;

		try {
			if(x.equals("customers")) {
				
			con = DBConnector.getConnected();
			pst = con.prepareStatement("select * from customers where cust_id=?;");
			pst.setString(1, id);	
			rs = pst.executeQuery();
		//	System.out.println("try cha andart xxx"+rs);

			if (rs.next()) {
				System.out.println("if cha andar");
				model.addAttribute("usernm",rs.getString("cust_name"));
				model.addAttribute("email", rs.getString("cust_email"));
				model.addAttribute("gen", rs.getString("cust_gen"));
				model.addAttribute("mobno", rs.getString("cust_mob"));
				model.addAttribute("dob", rs.getDate("cust_dob"));
				
				model.addAttribute("aadharid", rs.getString("cust_aadhar_vid"));
				model.addAttribute("address", rs.getString("cust_address"));
				System.out.println("xhamster"+model);
//				model.addAllAttributes((Collection<Registration>) reg);
//				System.out.println(reg);
			}
			}else {
	
				String uid = (String) session.getAttribute("userid");
				System.out.println(uid);
				con = DBConnector.getConnected();
				pst = con.prepareStatement("select * from sellers where seller_id=?;");
				pst.setString(1, uid);
				
				rs = pst.executeQuery();
				System.out.println("try cha andart");

				if (rs.next()) {
					model.addAttribute("usernm",rs.getString("seller_name"));
					model.addAttribute("email", rs.getString("seller_email"));
					model.addAttribute("gen", rs.getString("seller_gen"));
					model.addAttribute("mobno", rs.getString("seller_mob"));
					model.addAttribute("dob", rs.getDate("seller_dob"));
					
					model.addAttribute("aadharid", rs.getString("seller_aadhar_vid"));
					model.addAttribute("address", rs.getString("seller_address"));
					
				}
			}
			
		}catch(Exception ex) {
			ex.getStackTrace();
		}
		return "updateprofile";
	}
	@RequestMapping(path = "/usrtype", method = RequestMethod.POST)
	public String userType(@RequestParam("test") String x) {
		if(x.equals("customer")) {
			return "login";
		}else {
			return "loginSeller";
		}
	}
	
	@RequestMapping(path = "/logincust", method = RequestMethod.POST)
	public String customer(@ModelAttribute("reg") Registration reg, Model model,HttpSession session) {
		String un = reg.getUsernm();
		String pw = reg.getPasswd();
		PasswordHashing ph = new PasswordHashing();
		String unm = ph.doHashing(un);
		String psw = ph.doHashing(pw);

		System.out.println(un + " " + unm);
		System.out.println(pw + " " + psw);

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
				session.setAttribute("userid", rs.getString("cust_id"));
				session.setAttribute("usrtype", "customers");
								System.out.println(session.getId());
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

		return check ? "home1" : "failure";
	}
	
	@RequestMapping(path = "/loginseller", method = RequestMethod.POST)
	public String seller(@ModelAttribute("reg") Registration reg, Model model,HttpSession session) {
		String un = reg.getUsernm();
		String pw = reg.getPasswd();
		PasswordHashing ph = new PasswordHashing();
		String unm = ph.doHashing(un);
		String psw = ph.doHashing(pw);

		System.out.println(un + " " + unm);
		System.out.println(pw + " " + psw);

		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		boolean check = false;

		try {
			con = DBConnector.getConnected();
			pst = con.prepareStatement("select * from sellers where seller_name=? and seller_pass=?;");
			pst.setNString(1, unm);
			pst.setNString(2, psw);
			rs = pst.executeQuery();
			System.out.println("try cha andart");

			if (rs.next()) {
				// ses.setAttribute("userid", rs.getNString(0));
				session.setAttribute("userid", rs.getString("seller_id"));
				session.setAttribute("usrtype", "sellers");
				
				//System.out.println("bundi");
				check = true;
			} else {
				//System.out.println("bhavika");
				check = false;
			}
		} catch (Exception e) {
			System.out.println("catch madhi");
			System.out.println(e.getStackTrace());
		}

		return check ? "home1" : "failure";
	}
	@RequestMapping(value = "/updateprofile", method = RequestMethod.POST)
	public String updateProfile(@ModelAttribute Registration reg,HttpSession session) {
		Connection con;
		PreparedStatement pst;
		String usrname = (String) session.getAttribute("usrtype");
		String userid = (String) session.getAttribute("userid");
		System.out.println(usrname+"  "+userid);
		System.out.println(reg);
		if(usrname.equals("customers")) {
		try {
//			DBConnector db= (DBConnector) DBConnector.getConnected();

			con = DBConnector.getConnected();
			pst = con.prepareStatement("update customers set cust_name=?,cust_gen=?,cust_email=?,cust_mob=?,cust_aadhar_vid=?,cust_address=? where cust_id=?");
			
			pst.setString(1, reg.getUsernm());
			pst.setString(2, reg.getGen());
			pst.setString(3, reg.getEmail());
			pst.setString(4, reg.getMobno());
			pst.setString(5, reg.getAadharid());
			pst.setString(6, reg.getAddress());
			pst.setString(7, userid);
			pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		}
		else{
			try {
//				DBConnector db= (DBConnector) DBConnector.getConnected();

				con = DBConnector.getConnected();
				pst = con.prepareStatement("update sellers set seller_name=?,seller_gen=?,seller_email=?,seller_mob=?,seller_aadhar_vid=?,seller_address=? where seller_id=?");
				
				pst.setString(1, reg.getUsernm());
				pst.setString(2, reg.getGen());
				pst.setString(3, reg.getEmail());
				pst.setString(4, reg.getMobno());
				pst.setString(5, reg.getAadharid());
				pst.setString(6, reg.getAddress());
				pst.setString(7, userid);
				pst.executeUpdate();

			} catch (Exception e) {
				e.printStackTrace();
			}
			}


		return "home1";
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
//			DBConnector db= (DBConnector) DBConnector.getConnected();

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
	
	@RequestMapping(path = "/registerSeller", method = RequestMethod.GET)
	public String registerSeller() {
		return "registrationSeller";
	}
	
	@RequestMapping(value = "/regseller", method = RequestMethod.POST)
	public String registrationSeller(@ModelAttribute("reg") Registration reg, Model model) {

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
//			DBConnector db= (DBConnector) DBConnector.getConnected();

			con = DBConnector.getConnected();
			cb = con.prepareCall("call newseller(?,?,?,?,?,?,?,?,?)");
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

		return "loginSeller";
	}

	@RequestMapping(path = "/requestorder", method = RequestMethod.POST)
	public String requestOrder(@ModelAttribute Order order) {
		Connection con;
		CallableStatement cb;
		PreparedStatement pst;
		ResultSet rs;
		System.out.println(order.toString());
		if (order.getOrderStatus().equals("accepted")) {
			try {
				System.out.println("inside try of order");
				con = DBConnector.getConnected();
				pst = con.prepareStatement("update order set order_status=? where order_id=?");
				pst.setString(1, order.getOrderStatus());
				pst.setString(2, order.getOrderid());
				int x = pst.executeUpdate();
				if (x > 0) {
					System.out.println("order status updated in orders table");
				}
			} catch (Exception ex) {
				ex.getStackTrace();
			}

		}

		if (order.getOrderStatus().equals("declined")) {
			try {
				con = DBConnector.getConnected();
				pst = con.prepareStatement("update order set order_status=? where order_id=?");
				pst.setString(1, order.getOrderStatus());
				pst.setString(2, order.getOrderid());
				int x = pst.executeUpdate();
				if (x > 0) {
					System.out.println("order status updated in orders table");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

			if (order.getOrderid().equals("")) {
				System.out.println("order id created");
				int min = 10000000;
				int max = 99999999;
				int orderid = (int) (Math.random() * (max - min + 1) + min);
				order.setOrderid(String.valueOf(orderid));
				System.out.println(order.toString());

			try {
				
				con = DBConnector.getConnected();
				System.out.println("inside try");
				cb = con.prepareCall("call callOrder (?,?,?,?,?,now(),?,?,?,?,?,?,?);");
			
				cb.setString(1, order.getOrderid());
				cb.setString(2, order.getName());
				cb.setString(3, order.getCustomerid());
				cb.setString(4, order.getSellerid());
				cb.setString(5, order.getProdid());
				cb.setString(6, order.getProdTitle());			
				cb.setString(7, order.getProdUnit());
				cb.setString(8, order.getProdQuantity());
				cb.setInt(9, order.getProductPrice());
				cb.setString(10, order.getPaymenttype());
				cb.setNString(11, order.getOrderStatus());
				cb.setNString(12, order.getMessage());
				System.out.println("inside try 6");
				cb.execute();
				System.out.println("inside try 7");
				boolean s=true;
				System.out.println(s+" execute query");
				if(s)
				{
					String email="";
					System.out.println("order executed");
					System.out.println(order.getSellerid());
					pst = con.prepareStatement("select seller_email from sellers where seller_id=?;");
					pst.setNString(1, order.getSellerid());
					rs = pst.executeQuery();
					if(rs.next())
					{
					email=rs.getString("seller_email");
					System.out.println(email);
					SendMail.sendmail(0,email,"Dear Seller, you have received an order request from "+order.getName()+". He also has a message for you : " +order.getMessage()+"\n Yours Sincerely, \n Farm Market");
					 System.out.println("email send ");
					}
				}

			} catch (Exception ex) {
				System.out.println("inside order catch");
				System.out.println(ex.getStackTrace());
				System.out.println(ex.getMessage());
			}

		}
		return "home1";
	}

	@RequestMapping(path = "/forgetpass", method = RequestMethod.GET)
	public String callforgetpass(@ModelAttribute ChangePassword cp) {
		String x = cp.getUsrtype();
		return "forgetpassword";
	}
	
	@RequestMapping(path = "/setpa", method = RequestMethod.POST)
	public String setnewpass(@ModelAttribute ChangePassword cp) {
			Connection con;
			CallableStatement cb;
			PreparedStatement pst;
			ResultSet rs;
			PasswordHashing ph = new PasswordHashing();
			cp.setPasswd(ph.doHashing(cp.getPasswd()));
		
//			System.out.println(order.toString());
				try {
					System.out.println("inside try of order");
					con = DBConnector.getConnected();
					pst = con.prepareStatement("update customers set cust_pass=? where cust_email=?");
					pst.setString(1,cp.getPasswd());
					pst.setString(2,cp.getEmail());
					int w=pst.executeUpdate();
					
					return "home1";
				}
				catch(Exception ex)
				{
					ex.getStackTrace();
					ex.getMessage();
				}
		return "home1";
	}
	
	
	
	@RequestMapping(path = "/forgetpass1", method = RequestMethod.GET)
	public String callforgetpass1(@ModelAttribute ChangePassword cp) {
		String x = cp.getUsrtype();
		return "login";
	}

	@RequestMapping(path = "/changepass", method = RequestMethod.GET)
	public String changePass() {
		return "changepwd";
	}

	@RequestMapping(path = "/searchprod", method = RequestMethod.POST)
	public String searchProd(@RequestParam("search-box") String x, Model model) {
		model.addAttribute("prodnm", x);
		System.out.println(x);
		return "searchproduct1";
	}

	@RequestMapping(path = "/changepassword", method = RequestMethod.POST)
	public String changePassword(@ModelAttribute ChangePassword cp) {
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		PasswordHashing ph = new PasswordHashing();
		cp.setPasswd(ph.doHashing(cp.getPasswd()));
		cp.setNewpass(ph.doHashing(cp.getNewpass()));
		System.out.println(cp.getNewpass() + " " + cp.getPasswd());
		try {
			System.out.println("try cha andar");
			con = DBConnector.getConnected();
			pst = con.prepareStatement("select cust_pass from customers where cust_id=431232");

//			pst.setString(1,"431232");
			rs = pst.executeQuery();
			System.out.println("query execute jhali");
			if (rs.next()) {
				System.out.println("rs cha andar aalo re");
				if (cp.getPasswd().equals(rs.getNString("cust_pass"))) {
					System.out.println("old pass check jhala");

					pst = con.prepareStatement("update customers set cust_pass=? where cust_id=?");
					pst.setNString(1, cp.getNewpass());
					pst.setNString(2, "431232");
					int x = pst.executeUpdate();
					System.out.println("pass change chi query jhalai");
					if (x > 0) {
						System.out.println("password changed successfully");
						return "home1";
					} else {
						System.out.println("password not updated");
						return "changepass";
					}

				} else {
					System.out.println("old password not enterd correctly");
					return "changepass";
				}
			} else {
				System.out.println("kahi kr res null aahe");
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return "changepwd";
	}

	@RequestMapping(path = "/showprod", method = RequestMethod.GET)
	public String showprod() {
		return "showproduct";
	}

	@RequestMapping(path = "/showseller", method = RequestMethod.GET)
	public String showseller() {
		return "showsellers";
	}
	
	@RequestMapping(path = "/addProduct", method = RequestMethod.GET)
	public String addProduct() {
		return "addproduct";
	}
	
	@RequestMapping(path = "/showProduct", method = RequestMethod.GET)
	public String showProduct() {
		return "showmyproduct";
	}
	@RequestMapping(path = "/appendproduct", method = RequestMethod.POST)
	public String appendProd(@ModelAttribute AddProduct ap,HttpSession session) {
		System.out.println("mehtod called");
		Connection con;
		CallableStatement cb;
		ResultSet rs;
		String x = (String)session.getAttribute("userid");
		System.out.println(x);
		ap.setSeller_id(x);
		System.out.println(ap.getProd_id());
		try {
//			DBConnector db= (DBConnector) DBConnector.getConnected();
			System.out.println("inside try");
			con = DBConnector.getConnected();
			cb = con.prepareCall("call addproduct(?,?,?,?,?,?,?)");
			cb.setString(1, ap.getProd_id());
			cb.setString(2, ap.getSeller_id());
			cb.setString(3, ap.getProd_title());
			cb.setString(4, ap.getProd_desc());
			cb.setString(5, ap.getProd_quantity());
			cb.setString(6, ap.getProd_quantity_type());
			cb.setInt(7, ap.getProd_price());
			cb.execute();
			System.out.println("mehtod executed");
		} catch (Exception e) {
			System.out.println("inside catch");
			e.printStackTrace();
		}

		return "showmyproduct";
	}
	@RequestMapping(path = "/deletemyprod", method = RequestMethod.POST)
	public String deletemyprod(@ModelAttribute AddProduct ap,HttpSession session) {
		Connection con;
		PreparedStatement pst;
		
		System.out.println(ap.getProd_id());
		System.out.println(ap.getSeller_id());
		try {
			System.out.println("try cha andar");
			con = DBConnector.getConnected();
			pst = con.prepareStatement("delete from products1 where prod_id=? and seller_id=?");
			pst.setString(1, ap.getProd_id());
			pst.setString(2, ap.getSeller_id());
			
			int r=pst.executeUpdate();
			System.out.println("query execute jhali");
			if (r>0) {
				
				System.out.println("iside rs");
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		
		
		return "";
	}
	
	@RequestMapping(value = "/trans", method = RequestMethod.GET)
	public String transaction(HttpSession session) {
		String usertype=(String) session.getAttribute("usrtype");
		if(usertype.equals("customers"))
			return "transaction";
		else
			return "transactionseller";
	}
	
	@RequestMapping(value = "/weather", method = RequestMethod.GET)
	public String showweather(HttpSession session) {
		return "weather";
	}
	
	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public String payment(HttpSession session) {
		return "payments";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "home";
	}

}
