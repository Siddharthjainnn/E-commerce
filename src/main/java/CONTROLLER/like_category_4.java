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


@WebServlet("/like_category_4")
public class like_category_4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("name");
		String b=request.getParameter("pro_id");
		String c=request.getParameter("category");
		String d=request.getParameter("price");
		String e=request.getParameter("customer_id");
		admin_model model=new admin_model();
		int i=model.add_to_wish_list(a,b,c,d,e);
		ArrayList<Product> list=model.get_prosoap_admin();
		if(i!=0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("sop_detergent.jsp");
			request.setAttribute("msg", "add to wishlist");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("sop_detergent.jsp");
			request.setAttribute("msg", "not added to wishlist");
			request.setAttribute("LIST",list);
			rd.forward(request, response);
		}
	}

}
