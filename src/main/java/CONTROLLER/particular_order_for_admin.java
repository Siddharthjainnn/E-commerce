package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.checkoutpage;
import MODAL.admin_model;

@WebServlet("/particular_order_for_admin")
public class particular_order_for_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String order_id=request.getParameter("order_id");
	String customer_id=request.getParameter("customer_id");
	admin_model model=new admin_model();
ArrayList<checkoutpage> list=model.get_order_details_for_customer(order_id,customer_id);
if(list!=null)
{
	RequestDispatcher rd=request.getRequestDispatcher("full_order_for_particular_order_no.jsp");
	request.setAttribute("LIST", list);
	rd.forward(request, response);
}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
