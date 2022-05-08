package com.shetbajar.shetBajar.controller;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shetbajar.shetBajar.mybeans.SendMail;

@RestController(value="/rrr")
public class EmailController {
   
   
   @RequestMapping(value = "/sendemail")
   public String sendEmail() throws AddressException, MessagingException, IOException {
      SendMail.sendmail();
      return "Email sent successfully";   
   }
   
}


