package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.Add_to_cart;
import MODAL.admin_model;


@WebServlet("/add_to_final_cart_2")
public class add_to_final_cart_2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("h");
		String b=request.getParameter("hi");
		String c=request.getParameter("hii");
		String d=request.getParameter("hiii");
		String e=request.getParameter("hiiii");
		
		admin_model model=new admin_model();
		int i=model.add_to_cart_please(a,b,c,d,e);
		ArrayList<Add_to_cart> list=model.get_all_cart_items(e);
		if(i!=0)
		{
		
		RequestDispatcher rd = request.getRequestDispatcher("final_cart_show.jsp");
		request.setAttribute("msg", " added to cart succesffuly");
		request.setAttribute("LIST", list);
		rd.forward(request, response);

	} else {
		RequestDispatcher rd = request.getRequestDispatcher("final_cart_show.jsp");
		request.setAttribute("LIST", list);
		request.setAttribute("msg", "not added product to cart ");
		rd.forward(request, response);

}
	}

}
