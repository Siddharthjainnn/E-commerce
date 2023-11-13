package CONTROLLER;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import DTO.Add_to_cart;
import DTO.checkoutpage;
import DTO.order;
import MODAL.admin_model;

@MultipartConfig(maxFileSize = 160300000)
@WebServlet("/final_order_details_full")
public class final_order_details_full extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String z=request.getParameter("customer_id");
		String a=request.getParameter("order_no");
		String b=request.getParameter("name");
		String c=request.getParameter("email");
		String d=request.getParameter("address");
		String e=request.getParameter("city");
		String f=request.getParameter("landmark");
		String g=request.getParameter("pincode");
		String h=request.getParameter("total_ammount");
		String i=request.getParameter("quantity");
		Part j=request.getPart("image");
	   String date=request.getParameter("date");
		String exampleRadios=request.getParameter("exampleRadios");
		String status=request.getParameter("status");

        // Parse the date and time string if needed
       
        
		 /*String ll=request.getParameter("itemid");*/ 
		InputStream is=null;
		if(j!=null)
		{
			is=j.getInputStream();
		} 
		 String[] itemNames = request.getParameterValues("itemName");
	     String[] itemPrices = request.getParameterValues("itemPrice");
	     String[] itemquantity = request.getParameterValues("itemquantity");
	     String[] itemid=request.getParameterValues("itemid");
		
	     admin_model model=new admin_model();
		 List<checkoutpage> cartItems = new ArrayList<>();
	        for (int m = 0; m < itemNames.length; m++) {
	        	
	            String name = itemNames[m];
	            String quantity = itemquantity[m];
	           String price = itemPrices[m];
	           String pro_id=itemid[m];
	           
	            //checkoutpage ok=new checkoutpage(a, b, c, d, e, f, g, h, i, name, quantity, price); 
	          int k=model.add_to_final_cart_check_out_page(a, b, c, d, e, f, g, h, i,is,name, quantity, price,z,date,exampleRadios,status);
	          int y=model.delete_from_cart_on_new_cart_insertion(z, pro_id);
	          int l=model.delete_from_wishlist(z, pro_id);
	        }
	        
	        
	          ArrayList<Add_to_cart> list = model.get_all_cart_items(a);
	  		ArrayList<order> list2 = model.get_order_details(z, a);
	  		ArrayList<checkoutpage> list3=model.get_order_details_for_customer(a,z);
	  		
	  			//RequestDispatcher rd=request.getRequestDispatcher("details_confirm.jsp");
	  			//request.setAttribute("msg", "order has been placed");
	  		RequestDispatcher rd=request.getRequestDispatcher("order_tracking_page.jsp");
	  			request.setAttribute("LIST", list);
	  			request.setAttribute("LIST", list2);
	  			request.setAttribute("LIST", list3);
	  			rd.forward(request, response);
	        
	        
	        
		
	        
	
		
		
		
		
			/*
			 * RequestDispatcher rd=request.getRequestDispatcher("details_confirm.jsp");
			 * request.setAttribute("msg", "order has not  been placed");
			 * request.setAttribute("LIST", list); request.setAttribute("LIST", list2);
			 * rd.forward(request, response);
			 */
		
	}

}
