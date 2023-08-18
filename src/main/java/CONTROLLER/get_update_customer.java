package CONTROLLER;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import DTO.customer;
import DTO.new_customer_add;
import MODAL.admin_model;

@MultipartConfig(maxFileSize =16030000)
@WebServlet("/get_update_customer")
public class get_update_customer extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("user_id");
		admin_model model=new admin_model();
		//customer cc=model.get_all_customer_details(a);
		new_customer_add cc=model.get_all_customer_details(a);
		if(cc!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("customer_update_page.jsp");
			request.setAttribute("msg", cc);
			rd.forward(request, response);
		}else {

			RequestDispatcher rd=request.getRequestDispatcher("all_customer_for admin.jsp");
			request.setAttribute("msg","not available");
			rd.forward(request, response);
		}
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
		
		int i=model.update_customer_2(name,user_id,email_id,phone,password,repassword ,adress,city,zip,gender,occupation,dob,notes,updates,offer,dailyupdate,im);
		RequestDispatcher rd=request.getRequestDispatcher("all_customer_for admin.jsp");
		ArrayList<new_customer_add> list=model.get_customer_2();
		if(i!=0)
		{
			request.setAttribute("msg", " thankyou you have been updated succesfully ");
			request.setAttribute("xx", list);
			rd.forward(request, response);
			
		}
		else {
			request.setAttribute("msg", " sorry you have not been updated succesfully ");
			request.setAttribute("xx", list);
			rd.forward(request, response);

		}
	}

	}


