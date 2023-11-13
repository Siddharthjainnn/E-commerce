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


@WebServlet("/get_delete_atta")
public class get_delete_atta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("user_id");
		admin_model model=new admin_model();
	int i=	model.delete_atta(a);
	int j=model.delete_product(a);
	ArrayList<Product> list=model.get_proatta_admin();
	if(i!=0)
	{
		RequestDispatcher rd=request.getRequestDispatcher("attaadmin.jsp");
		request.setAttribute("msg", "delted succefully");
		request.setAttribute("LIST", list);
		rd.forward(request, response);
	}else {
		RequestDispatcher rd=request.getRequestDispatcher("attaadmin.jsp");
		request.setAttribute("msg", " not delted ");
		request.setAttribute("LIST", list);
		rd.forward(request, response);
	}
	
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
