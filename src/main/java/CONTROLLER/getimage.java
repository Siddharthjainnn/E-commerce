package CONTROLLER;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MODAL.admin_model;

@MultipartConfig(maxFileSize = 16030000)
@WebServlet("/getimage")
public class getimage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("user_id");
		System.out.println(a+"this id");
		admin_model model=new admin_model();
		byte[] img=model.get_img(a);
		System.out.println("i have gout all the images");
		ServletOutputStream sos=null;
		if(img!=null)
		{
			System.out.println("i am not null");
			sos=response.getOutputStream();
			sos.write(img);
			System.out.println("at the end of decade");
		
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
