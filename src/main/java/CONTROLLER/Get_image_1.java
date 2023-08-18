package CONTROLLER;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MODAL.admin_model;


@WebServlet("/get_image_1")
public class Get_image_1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("user_id");
		admin_model model=new admin_model();
		byte[] image=model.get_customer_image(a);
		
		ServletOutputStream sos=null;
		
		if(image!=null)
		{
			sos=response.getOutputStream();
			sos.write(image);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
