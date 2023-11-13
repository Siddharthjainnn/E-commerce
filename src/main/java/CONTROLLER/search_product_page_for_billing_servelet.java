package CONTROLLER;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/search_product_page_for_billing_servelet")
public class search_product_page_for_billing_servelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String billing_id=(String)request.getParameter("billing_id");
	System.out.println(billing_id);
	RequestDispatcher rd=request.getRequestDispatcher("search_product_page_for_billing.jsp");
	request.setAttribute("msg1",billing_id);
	rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
