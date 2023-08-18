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


@WebServlet("/get_delete_customer")
public class get_delete_customer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String a=request.getParameter("user_id");
	admin_model model=new admin_model();
	
	int i=model.delete_customer(a);
	
	RequestDispatcher rd=request.getRequestDispatcher("all_customer_for admin.jsp");
	ArrayList<new_customer_add> list=model.get_customer_2();
	if(i!=0)
	{
		request.setAttribute("msg", "customer deleted");
		request.setAttribute("xx", list);
		rd.forward(request, response);
	}else {
		request.setAttribute("msg", "customer not  deleted");
		request.setAttribute("xx", list);
		rd.forward(request, response);
	}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
