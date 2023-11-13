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


@WebServlet("/delete_from_wishlist")
public class delete_from_wishlist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("user_id");
		System.out.println(a+"hello darling");
		String b=(String)request.getParameter("pro_id");
		System.out.println(b+"hello darling_2");
		admin_model model=new admin_model();
		int i=model.delete_from_wishlist(a, b);
		ArrayList<Product> list=model.get_wish_list(a);
		if(i!=0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("wish_list_page.jsp");
			request.setAttribute("msg", "removed from wishlist");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("wish_list_page.jsp");
			request.setAttribute("msg", "not removed from wishlist");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
