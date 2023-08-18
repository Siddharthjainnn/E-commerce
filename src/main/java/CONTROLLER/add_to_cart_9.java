package CONTROLLER;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import DTO.Product;
import MODAL.admin_model;

@MultipartConfig(maxFileSize = 16030000)
@WebServlet("/add_to_cart_9")
public class add_to_cart_9 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("pro_id");
		admin_model model=new admin_model();
	   ArrayList<Product> list= model.add_to_cart_9(a);
	   if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("confirm_cart_9.jsp");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("biscuitcustomer.jsp");
			request.setAttribute("LIST","not available");
			rd.forward(request, response);
		}

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String jk=(String)request.getParameter("cust_id");
		String a=(String)request.getParameter("name");
		String b=(String)request.getParameter("pro_id");
		String c=(String)request.getParameter("category");
		String d=(String)request.getParameter("quantity");
		double e=Double.parseDouble(request.getParameter("price"));
		Part f=request.getPart("image");
		InputStream is=null;
		if(f!=null)
		{
			is=f.getInputStream();
		}
		admin_model model=new admin_model();
		int i = model.add_cart_product(a, b, c, d, e, is,jk);
		ArrayList<Product> list = model.get_probusicts_admin();
		if (i != 0) {
			RequestDispatcher rd = request.getRequestDispatcher("biscuitcustomer.jsp");
			request.setAttribute("msg", " added to cart succesffuly");
			request.setAttribute("LIST", list);
			rd.forward(request, response);

		} else {
			RequestDispatcher rd = request.getRequestDispatcher("biscuitcustomer.jsp");
			request.setAttribute("LIST", list);
			request.setAttribute("msg", "not added product to cart ");
			rd.forward(request, response);

	}
	}
	}

