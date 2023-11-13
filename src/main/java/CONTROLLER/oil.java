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
import DTO.product_new;
import MODAL.admin_model;


@WebServlet("/oil&gheecustomser")
public class oil extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		admin_model model=new admin_model();
		ArrayList<Product> list=model.get_pro_admin();
		ArrayList<product_new> list1=model.get_all_deal();
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("oil&ghee_customer.jsp");
			request.setAttribute("LIST", list);
			request.setAttribute("LIST1", list1);
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("oil&ghee_customer.jsp");
			request.setAttribute("LIST", "msg not available");
			request.setAttribute("LIST1", list1);
			rd.forward(request, response);
		}

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
