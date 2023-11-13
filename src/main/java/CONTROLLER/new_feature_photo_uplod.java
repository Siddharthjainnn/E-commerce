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

import DTO.order_by_image_user_2;
import MODAL.admin_model;

@MultipartConfig(maxFileSize = 160300000)
@WebServlet("/new_feature_photo_uplod")
public class new_feature_photo_uplod extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String b=(String)request.getParameter("order_id");
		String a=(String)request.getParameter("user_id");
		String k=(String)request.getParameter("name");
		String j=(String)request.getParameter("dob");
		String l=(String)request.getParameter("email");
		String m=(String)request.getParameter("address");
		Part f=request.getPart("image");
		//String c=request.getParameter("order_id");
		InputStream is=null;
		if(f!=null)
		{
			is=f.getInputStream();
		}
		admin_model model=new admin_model();
		int i=model.get_order_by_photo_new(a,is,b,k,j,l,m);
		//order_by_image_user_2 list=model.get_all_bill_information(c);
		if(i!=0)
		{
			
			try {
				Thread.sleep(5000);
				response.sendRedirect("home.jsp");
				//request.setAttribute("LIST", list);
				request.setAttribute("msg_1", "order placed");
				
				
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
			request.setAttribute("msg", "not placed");
			rd.forward(request, response);
		}	
}}
