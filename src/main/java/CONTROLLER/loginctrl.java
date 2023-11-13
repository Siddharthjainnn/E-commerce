package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DTO.Product;
import DTO.customer;
import DTO.new_customer_add;
import MODAL.admin_model;

@WebServlet("/loginctrl")
public class loginctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String a = (String) request.getParameter("user_id");
		String b = (String) request.getParameter("password");

		admin_model model = new admin_model();
		int i = model.login_customer(a, b);

		new_customer_add ok = model.get_customer_login(a, b);
		ArrayList<Product> kl=model.get_all_product();
		
if(ok!=null)
{
//			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
		response.sendRedirect("home.jsp");
			request.setAttribute("kk", ok);		
			HttpSession session = request.getSession();
			session.setAttribute("msg", ok);
			session.setAttribute("LIST", kl);
}else {
	RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
	request.setAttribute("kk", "invallied username or password");	
	rd.forward(request, response);
}

		/*} else {
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			request.setAttribute("kk", "not available");
			rd.forward(request, response);
		}*/
//	if(i!=0)
//	{
//		response.sendRedirect("home.jsp");
//		HttpSession session =request.getSession();
//		session.setAttribute("msg", a);
//	}
//	else {
//		RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
//		request.setAttribute("msg", "incorrect username or password");
//		rd.forward(request, response);
//	}

//	if(ii!=null)
//	{
//		RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
//		request.setAttribute("lk", ii);
//		response.sendRedirect("home.jsp");
//		HttpSession session =request.getSession();
//		session.setAttribute("msg", a);
//	}else {
//		RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
//		request.setAttribute("ll", "incorrect username or password");
//		rd.forward(request, response);
//	}
	}

}
