package com.farmMarket.farmMarket.controller;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.farmMarket.farmMarket.mybeans.SendMail;



@RestController()
public class EmailController {
	
	int otp=0;
	
   @RequestMapping(value = "/sendemail")
   public String sendEmail() throws AddressException, MessagingException, IOException {
	   int min = 1000;
		int max = 9999;
	      otp= (int) (Math.random() * (max - min + 1) + min); 
      SendMail.sendmail();
      return "Email";   
   }
   
   @RequestMapping(value = "/verifymail")
   public String otpcheck(@RequestParam("otp") int c)
   {
	   if(otp==c)
		   return "";
	   
	   
	   return "";
   }
   
   
}


