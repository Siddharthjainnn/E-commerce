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

@MultipartConfig(maxFileSize =16030000)
@WebServlet("/get_update_agarbati")
public class get_update_agarbati extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("user_id");
		admin_model model=new admin_model();
	Product pp=	model.get_full_aggarbati_admin(a);
	if(pp!=null)
	{
		RequestDispatcher rd=request.getRequestDispatcher("update_page_product_8.jsp");
		request.setAttribute("p", pp);
		rd.forward(request, response);
	}else {
		RequestDispatcher rd=request.getRequestDispatcher("update_page_product_8.jsp");
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
		Part f=request.getPart("image");
		InputStream is=null;
		if(f!=null)
		{
			is=f.getInputStream();
		}
		admin_model model=new admin_model();
		int i=model.add_update_product(a,b,c,d,e,is);
		ArrayList<Product> list=model.get_proagabatti_admin();
		
		if(i!=0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("agarbattidmin.jsp");
			request.setAttribute("msg", "product updated succesffuly");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
			
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("agarbattidmin.jsp");
			request.setAttribute("msg", "product not updated added ");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
			
		}
	}
	}
