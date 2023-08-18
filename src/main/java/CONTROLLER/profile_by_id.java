package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.customer;
import DTO.new_customer_add;
import MODAL.admin_model;


@WebServlet("/profile_by_id")
public class profile_by_id extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aa=(String)request.getParameter("user_id");
		admin_model model=new admin_model();
		new_customer_add list=model.get_profile_customer(aa);
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
			request.setAttribute("msg", "please login sir /madham");
			rd.forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
