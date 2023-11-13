package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.Product;
import MODAL.admin_model;

/**
 * Servlet implementation class get_update_all_product_4
 */
@MultipartConfig(maxFileSize = 160300000)
@WebServlet("/get_update_all_product_4")
public class get_update_all_product_4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		String a=(String)request.getParameter("user_id");
    		admin_model model=new admin_model();
    	Product pp=	model.get_all_product(a);
    	if(pp!=null)
    	{
    		RequestDispatcher rd=request.getRequestDispatcher("update_page_all_product_deal_of_the_day.jsp");
    		request.setAttribute("p", pp);
    		rd.forward(request, response);
    	}else {
    		RequestDispatcher rd=request.getRequestDispatcher("update_page_product_4.jsp");
    		request.setAttribute("p", "not avialble");
    		rd.forward(request, response);
    	}
    	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("name");
		String b=(String)request.getParameter("pro_id");
		String c=(String)request.getParameter("category");
		String d=(String)request.getParameter("quantity");
		double e=Double.parseDouble(request.getParameter("price"));
		double f=Double.parseDouble(request.getParameter("offer_price"));
		String g=(String)request.getParameter("str_date");
		String h=(String)request.getParameter("end_date");
		/*
		 * Part f=request.getPart("image"); InputStream is=null; InputStream js=null;
		 * if(f!=null) { is=f.getInputStream(); js=f.getInputStream(); }
		 */admin_model model=new admin_model();
		int i=model.add_update_product_deal_of_week(a,b,c,d,e,f,g,h);
		/* int j=model.add_update_product_1(a, b, c, d, e, js); */
		ArrayList<Product> list=model.get_all_product();
		
		if(i!=0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("Offer_page.jsp");
			request.setAttribute("msg", "product Added to Deal of day succesffuly");
			request.setAttribute("list", list);
			rd.forward(request, response);
			
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("Offer_page.jsp");
			request.setAttribute("msg", "product not added to Deal Of the day ");
			request.setAttribute("list", list);
			rd.forward(request, response);
			
		}
	}
	}
