package CONTROLLER;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import MODAL.admin_model;

@MultipartConfig(maxFileSize = 16030000)
@WebServlet("/admin_add_product_6")
public class admin_add_product_6 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("name");
		String b=(String)request.getParameter("pro_id");
		String c=(String)request.getParameter("category");
		String d=(String)request.getParameter("quantity");
		double e=Double.parseDouble(request.getParameter("price"));
		Part f=request.getPart("image");
		InputStream is=null;
		InputStream js=null;
		if(f!=null)
		{
			is=f.getInputStream();
			js=f.getInputStream();
		}
		admin_model model=new admin_model();
		int i=model.add_admin_product(a,b,c,d,e,is);
		int j=model.add_product_into_final_product_list(a,b,c,d,e,js);
		if(i!=0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("add_Product_admin_6.jsp");
			RequestDispatcher rx=request.getRequestDispatcher("add_Product_admin_6.jsp");
			request.setAttribute("msg", "product added succesffuly");
			rd.forward(request, response);
			rx.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("add_Product_admin_6.jsp");
			RequestDispatcher rx=request.getRequestDispatcher("add_Product_admin_6.jsp");
			request.setAttribute("msg", "product not added ");
			rd.forward(request, response);
			rx.forward(request, response);
		}
	}

}
