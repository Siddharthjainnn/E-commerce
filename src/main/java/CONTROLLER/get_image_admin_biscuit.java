package CONTROLLER;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MODAL.admin_model;


@WebServlet("/get_image_admin_biscuit")
public class get_image_admin_biscuit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("pro_id");
		admin_model model=new admin_model();
	byte[] img=	model.get_biscuit_admin_img(a);
	ServletOutputStream sos=null;
	if(img!=null)
	{
		sos=response.getOutputStream();
		sos.write(img);
	}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
