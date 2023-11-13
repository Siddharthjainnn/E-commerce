package CONTROLLER;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MODAL.admin_model;


@WebServlet("/otp_generator")
public class otp_generator extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * admin_model model=new admin_model(); double i=model.get_otp(); if(i!=0) {
		 * 
		 * RequestDispatcher rd=request.getRequestDispatcher("verify.jsp");
		 * request.setAttribute("msg", i); rd.forward(request, response); }
		 */
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email_id=request.getParameter("email_id");
		
		System.out.println("simpleEmail Start");
		String emailID="siddhujain1208@outlook.com";
		String password="Siddharthjain123@...11";
		String torecipt=email_id;
		
		Properties props =System.getProperties();
		props.put("mail.smtp.host", "Outlook.com");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port","587");
		props.put("mail.smtp.starttls.enable", "true");
		
		Authenticator auth=new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(emailID, password);
			}
		};
		
		System.out.println("hello to everyone");
		Session session=Session.getInstance(props, auth);
		System.out.println("kkkk");
		admin_model model=new admin_model();
		System.out.println("jjjjj");
		
		
		  int otp=0;
		  
			/* otp= (Math.floor(Math.random()*90000) + 10000); */
		  otp=(int) Math.floor(1000 + Math.random() * 9000);
		  
		  String otp2 = String.valueOf(otp); System.out.println(otp);
		  String msgg=".....WELCOME TO JAIN PROVISION STORE ....."
		  		+ " YOUR ONE TIME PASSWORD IS ::=>  "+otp2;
		  System.out.println(otp);
		  
		  
		 
	String aa=	model.sendEmail(session,emailID,torecipt,"JAIN PROVISON STORE YOUR ONE TIME PASSWORD",msgg);
	if(aa!=null)
	{
		RequestDispatcher rd=request.getRequestDispatcher("verify.jsp");
		request.setAttribute("ll", otp2);
		rd.forward(request, response);
		
	}
	}

}
