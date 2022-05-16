package com.farmMarket.farmMarket.mybeans;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;

public class SendMail {

	public static void sendmail(int otp,String x) throws AddressException, MessagingException, IOException {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("garrykumar2022@gmail.com", "simplepassword");
			}
			
		});
		Message msg = new MimeMessage(session);
		msg.setFrom(new InternetAddress("tutorialspoint@gmail.com", false));

		msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(x));
		msg.setSubject("Tutorials point email");
		msg.setContent("Your OTP for verification is : "+otp, "text/html");
		msg.setSentDate(new Date());

		MimeBodyPart messageBodyPart = new MimeBodyPart();
		messageBodyPart.setContent("Farm Market OTP Verification", "text/html");

		MimeBodyPart attachPart = new MimeBodyPart();

		attachPart.attachFile("");
		Transport.send(msg);
	}
}
