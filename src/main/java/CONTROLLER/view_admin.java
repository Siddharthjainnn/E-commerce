package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.Admin;
import MODAL.admin_model;


@WebServlet("/view_admin")
public class view_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	admin_model model=new admin_model();
ArrayList<Admin> list=	model.get_all_admin();
if(list!=null)
{
	RequestDispatcher rd=request.getRequestDispatcher("view_all_admin_page_2.jsp");
	request.setAttribute("LIST", list);
	rd.forward(request, response);
}else {
	RequestDispatcher rd=request.getRequestDispatcher("admin_page.jsp");
	request.setAttribute("LIST", "list not availabe");
	rd.forward(request, response);
}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
