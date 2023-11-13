package CONTROLLER;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class mail_1 {
	public Properties getMailProperties() {
	    Properties properties = new Properties();
	    properties.put("mail.smtp.host", "Outlook.com");
	    properties.put("mail.smtp.auth", "true");
	    properties.put("mail.smtp.port", "587"); // Your SMTP port
	    return properties;
	}
	
	public void sendOrderConfirmationEmail(String recipientEmail, String orderDetails) {
	    Properties properties = getMailProperties();

	    // Create a session with the email server.
	    Session session = Session.getInstance(properties, new Authenticator() {
	        @Override
	        protected PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication("siddhujain1208@outlook.com","Siddharthjain123@...11");
	        }
	    });

	    try {
	        // Create a MimeMessage.
	        MimeMessage message = new MimeMessage(session);

	        // Set the sender's email address.
	        message.setFrom(new InternetAddress("siddhujain1208@outlook.com"));

	        // Set the recipient's email address.
	        message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipientEmail));

	        // Set the email subject.
	        message.setSubject("Order Confirmation");
String ok="hello to everyone";
	        // Set the email content (HTML content in this example).
	        message.setContent("<html><body>Order details: Order #" +ok + "<br>Thank you for your purchase!</body></html>", "text/html");

	        // Send the email.
	        Transport.send(message);
	    } catch (MessagingException e) {
	        e.printStackTrace();
	        // Handle email sending errors
	    }
	}


}
