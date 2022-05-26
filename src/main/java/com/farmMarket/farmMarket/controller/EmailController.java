package com.farmMarket.farmMarket.controller;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.farmMarket.farmMarket.mybeans.SendMail;



@Controller
public class EmailController {
	
	int otp=0;
	
   @RequestMapping(value = "/sendemail")
   public void sendEmail(@RequestParam("email") String x) throws AddressException, MessagingException, IOException {
	   int min = 1000;
		int max = 9999;
	      otp= (int) (Math.random() * (max - min + 1) + min); 
	      System.out.println("funt called");
	      String message="\"Your OTP for verification is : ";
      SendMail.sendmail(otp,x,message);
   }
   
   @RequestMapping(value = "/verifymail" ,method = RequestMethod.POST)
   public String otpcheck(@RequestParam("otp") int c,HttpSession session)
   {
	   System.out.println(session.getId());
	   String ty=(String) session.getAttribute("usrtype");
	   System.out.println(ty);
	   if(otp==c)
	   {
		   return "setnewpass";
	   }
	   
	   
	   return "forgetpassword";
   }
   
   
}


