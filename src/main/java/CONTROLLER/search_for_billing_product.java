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


@WebServlet("/search_for_billing_product")
public class search_for_billing_product extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String search=(String)request.getParameter("search");
		String billing_id=(String)request.getParameter("billing_id");
		admin_model model=new admin_model();
		ArrayList<Product> list=model.get_all_product_like_all(search);
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("search_product_page_for_billing.jsp");
			request.setAttribute("list",list);
			request.setAttribute("msg1",billing_id );
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("search_product_page_for_billing.jsp");
			request.setAttribute("msg","product not found");
			rd.forward(request, response);
		}
	}

}
