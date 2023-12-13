package CONTROLLER;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import MODAL.admin_model;

@MultipartConfig(maxFileSize = 160300000)
@WebServlet("/new_customer_add_please")
public class new_customer_add_please extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name =(String)request.getParameter("name");
		String user_id =(String)request.getParameter("user_id");
		String email_id =(String)request.getParameter("email_id");
		String phone =(String)request.getParameter("phone");
		String password =(String)request.getParameter("password");
		String repassword =(String)request.getParameter("repassword");
		String adress =(String)request.getParameter("adress");
		String city =(String)request.getParameter("city");
		String zip =(String)request.getParameter("zip");
		String gender =(String)request.getParameter("gender");
		String occupation =(String)request.getParameter("occupation");
		String dob =(String)request.getParameter("dob");
        Part image = request.getPart("image");
		
		InputStream im =null;
		if(image!=null)
		{
			im = image.getInputStream();
		}
		
		String notes =(String)request.getParameter("notes");
		String updates =(String)request.getParameter("updates");
		String offer =(String)request.getParameter("offer");
		String dailyupdate =(String)request.getParameter("dailyupdate");
		
		
		admin_model model=new admin_model();
		System.out.println("simpleEmail Start");
		String emailID="siddhujain1208@outlook.com";
		String password2="Siddharthjain123@....";
		String torecipt=email_id;
		
		Properties props =System.getProperties();
		props.put("mail.smtp.host", "Outlook.com");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port","587");
		props.put("mail.smtp.starttls.enable", "true");
		
		Authenticator auth=new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(emailID, password2);
			}
		};
		
		System.out.println("hello to everyone");
		Session session=Session.getInstance(props, auth);
		System.out.println("kkkk");
		
		System.out.println("jjjjj");
		
		
		  		  String msgg="Hello "+name+ 
		  		"your user Bringit Id is = "
		  				+user_id;
		  
		  
		  
		 
	String aa=	model.sendreviewEmail(session,emailID,torecipt,"THANKYOU FOR CREATING AN ACCOUNT IN BRINGIT YOUR BRINGIT ID IS  ",msgg);
		int kl=model.add_cu(name,user_id,email_id,phone,password,repassword ,adress,city,zip,gender,occupation,dob,notes,updates,offer,dailyupdate,im);
		RequestDispatcher rd=request.getRequestDispatcher("create_now.jsp");
		if(kl!=0)
		{
			request.setAttribute("msg","sucess");			
		}
		else 
		{
			request.setAttribute("msg","invallid");
		}
		
		rd.forward(request, response);
		}
	}