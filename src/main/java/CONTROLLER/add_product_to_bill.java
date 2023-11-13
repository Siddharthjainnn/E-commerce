package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.Product;
import MODAL.admin_model;


@WebServlet("/add_product_to_bill")
public class add_product_to_bill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String billing_id=(String)request.getParameter("bill_id");
		String name=(String)request.getParameter("name");
		String id=(String)request.getParameter("id");
		String category=(String)request.getParameter("category");
		String quantity=(String)request.getParameter("quantity");
		double e=Double.parseDouble(request.getParameter("price"));
		
		admin_model model=new admin_model();
		ArrayList<Product> list2=model.get_all_product_added(billing_id);
		int i=model.add_to_bill_please(billing_id,name,id,category,quantity,e);
		if(i!=0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("search_product_page_for_billing.jsp");
			request.setAttribute("list", list2);
			request.setAttribute("msg", "added to bill");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("search_product_page_for_billing.jsp");
			request.setAttribute("msg", "not added to bill");
			request.setAttribute("list", list2);
			rd.forward(request, response);
		}
		
	}

}
