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
import MODAL.admin_model;

@MultipartConfig(maxFileSize = 160300000)
@WebServlet("/update_by_customer_image")
public class update_by_customer_image extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("user_id");
		Part f=request.getPart("image");
		InputStream is=null;
		if(f!=null)
		{
			is=f.getInputStream();
		}
		admin_model model=new admin_model();
		int i=model.update_by_customer_image(a,is);
		RequestDispatcher rd=request.getRequestDispatcher("update_image_by_customer.jsp");
		
		if(i!=0)
		{
			request.setAttribute("msg", "  profile have been updated succesfully ");
			
			rd.forward(request, response);
			
			
		}
		else {
			request.setAttribute("msg", " sorry profile have not  been updated succesfully ");
			
			rd.forward(request, response);

		}
	}

	}

