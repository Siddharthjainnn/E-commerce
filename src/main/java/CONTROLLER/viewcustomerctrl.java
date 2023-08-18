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


@WebServlet("/viewcustomerctrl")
public class viewcustomerctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	admin_model model=new admin_model();
	//ArrayList<customer> list=model.get_customer();
	ArrayList<new_customer_add> list2=model.get_customer_2();
//	if(list!=null)
//	{
//	RequestDispatcher rd=request.getRequestDispatcher("all_customer_for admin.jsp");
//	request.setAttribute("xx", list);
//	rd.forward(request, response);
//	}else {
//		RequestDispatcher rd=request.getRequestDispatcher("admin_page.jsp");
//		request.setAttribute("xx", "not available");
//		rd.forward(request, response);
//	}
	
	if(list2!=null)
	{
		System.out.println("list is available");
	RequestDispatcher rd=request.getRequestDispatcher("all_customer_for admin.jsp");
	request.setAttribute("xx", list2);
	rd.forward(request, response);
	System.out.println("list send");
	}else {
		RequestDispatcher rd=request.getRequestDispatcher("admin_page.jsp");
		request.setAttribute("xx", "not available");
		rd.forward(request, response);
	}
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
