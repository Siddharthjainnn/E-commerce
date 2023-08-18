package CONTROLLER;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;

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
@WebServlet("/admin_add")
public class admin_add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("name");
		String b=(String)request.getParameter("user_id");
		String c=(String)request.getParameter("password");
		String d=(String)request.getParameter("gender");
//		String e=(String)request.getAttribute("age");
		Date e=(Date) request.getAttribute("age");
		Part f=request.getPart("image");
		InputStream is=null;
		if(f!=null)
		{
			is=f.getInputStream();
		}
		admin_model model=new admin_model();
		int i=model.add_admin(a,b,c,d,e,is);
		RequestDispatcher rd=request.getRequestDispatcher("create_admin.jsp");
		if(i!=0)
		{
			request.setAttribute("msg", " thankyou you have been add succesfully ");
			rd.forward(request, response);
			
		}
		else {
			request.setAttribute("msg", " sorry you have not been add succesfully ");
			rd.forward(request, response);

		}
	}

}
