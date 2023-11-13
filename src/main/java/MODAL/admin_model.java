package MODAL;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.Part;

import CONTROLLER.ceck_otp;
import CONTROLLER.confirm_order_bt_admin;
import DTO.Add_to_cart;
import DTO.Admin;
import DTO.Cart_with_final_show;
import DTO.Product;
import DTO.billing;
import DTO.checkoutpage;
import DTO.customer;
import DTO.deliver_order;
import DTO.new_customer_add;
import DTO.order;
import DTO.order_by_image_user_2;
import DTO.order_details_for_admin;
import DTO.order_no;
import DTO.product_new;

public class admin_model {
 public static Connection create_connection()
 {
	 Connection con=null;
	 try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ok","root","root");
	} catch (Exception e) {
		e.printStackTrace();	}
	 return con;
 }


public int login_customer(String a, String b) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from new_best_customer_2 where user_id=? and password=?");
		ps.setString(1, a);
		ps.setString(2, b);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		i=1;
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}

public new_customer_add get_customer_login(String a, String b) {
	new_customer_add ok=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from  new_best_customer_2 where user_id=? and password=? ");
		ps.setString(1, a);
		ps.setString(2, b);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		ok=new new_customer_add(rs.getString("name"), rs.getString("user_id"),rs.getString("email_id") , rs.getString("phone"), rs.getString("password"), rs.getString("repassword"), rs.getString("adress"), rs.getString("city"), rs.getString("zip"), rs.getString("gender"), rs.getString("occupation"), rs.getString("dob"), rs.getString("notes"), rs.getString("updates"), rs.getString("offer"), rs.getString("dailyupdate"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return ok;
}

public int add_admin(String a, String b, String c, String d, Date e, InputStream is) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("insert into admin_1 values(?,?,?,?,?,?)");
		ps.setString(1, a);
		ps.setString(2, b);
		ps.setString(3, c);
		ps.setString(4, d);
//		ps.setString(5, e);
		ps.setDate(5, e);
		ps.setBlob(6, is);
		i=ps.executeUpdate();
		
	} catch (Exception e2) {
		e2.printStackTrace();
	}
	return i;
}

public Admin get_admin_login(String a, String b) {
	Admin ok=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from admin_1 where user_id=? and password=? ");
		ps.setString(1, a);
		ps.setString(2, b);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		ok=new Admin(rs.getString("name"), rs.getString("user_id"), rs.getString("password"), rs.getString("gender"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return ok;
	
}

public Admin get_admin_login_2(String a, String b) {
	Admin ok=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from admin_1 where user_id=? and password=?");
		ps.setString(1, a);
		ps.setString(2, b);
		System.out.println(a+" "+b);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		ok=new Admin(rs.getString("name"), rs.getString("user_id"), rs.getString("password"), rs.getString("gender"));
	System.out.println(rs.getString("name")+"  "+ rs.getString("user_id")+"  "+ rs.getString("password")+"  "+ rs.getString("gender"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return ok;
}

public ArrayList<Admin> get_all_admin() {
	ArrayList<Admin> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from admin_1");
	ResultSet rs=	ps.executeQuery();
	while(rs.next()){
		Admin ok=new Admin(rs.getString("name"), rs.getString("user_id"), rs.getString("password"), rs.getString("gender"));
	list.add(ok);
	System.out.println(rs.getString("name")+"  "+ rs.getString("user_id")+"  "+ rs.getString("password")+"  "+ rs.getString("gender"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<customer> get_customer() {
	ArrayList<customer> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from customer_1");
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		customer ll=new customer(rs.getString("name"), rs.getString("user_id"), rs.getString("password"), rs.getString("gender"));
		list.add(ll);
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public byte[] get_img(String a) {
	byte[] img=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from customer_1 where user_id=?");
		ps.setString(1, a);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			System.out.println("i havve iamge sir");
			img=rs.getBytes("image");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	System.out.println(img+"final immage which i have send");
	return img;
	
}

public byte[] get_customer_image(String a) {
	byte[] image=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from  new_best_customer_2 where user_id=? ");
		ps.setString(1, a);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			image=rs.getBytes("image");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return image;
}

public int delete_customer(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from new_best_customer_2 where user_id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}

public new_customer_add get_all_customer_details(String a) {
	new_customer_add ok=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from new_best_customer_2 where user_id=? ");
		ps.setString(1, a);
		
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		ok=new new_customer_add(rs.getString("name"), rs.getString("user_id"),rs.getString("email_id") , rs.getString("phone"), rs.getString("password"), rs.getString("repassword"), rs.getString("adress"), rs.getString("city"), rs.getString("zip"), rs.getString("gender"), rs.getString("occupation"), rs.getString("dob"), rs.getString("notes"), rs.getString("updates"), rs.getString("offer"), rs.getString("dailyupdate"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return ok;
}

public int update_customer(String a, String b, String c, String d, String password, String repassword, String adress, String city, String zip, String gender, String occupation, String dob, String notes, String updates, String offer, String dailyupdate, InputStream is) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("update  new_best_customer_2  set name=?,email_id=?,phone=?,password=?,repassword=?,adress=?,city=?,zip=?,gender=?,occupation=?,dob=?,notes=?,updates=?,offer=?,dailyupdate=?,image=? where user_id=?");
		ps.setString(1, a);
		ps.setString(2, c);
		ps.setString(3, d);
		
		
		ps.setBlob(4, is);
		ps.setString(5, b);
		i=ps.executeUpdate();
		
	} catch (Exception e2) {
		e2.printStackTrace();
	}
	return i;

	
}

public int add_admin_product(String a, String b, String c, String d, double e, InputStream is) {
	int i=0;
	Connection con=null;
	if(c.equals("OIL_GHEE"))
	{
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("insert into OIL_GHEE values(?,?,?,?,?,?)");
		ps.setString(1, a);
		ps.setString(2, b);
		ps.setString(3, c);
		ps.setString(4, d);
		ps.setDouble(5, e);
		ps.setBlob(6, is);
		
	i=	ps.executeUpdate();
	
	} catch (Exception e2) {
		e2.printStackTrace();
	}
	}else if (c.equals("sugar & jerry")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into sugar values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	} else if (c.equals("SOAP & DETERGENT")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into soap values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("SPICES & MASALA")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into spices values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("ATTA & PARMAL")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into atta values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("DAL & GRAINS")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into DAL values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("SEV & NAMKEEN")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into SEV values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("BISCUITS & CHOCLATE")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into BISCUITS values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("AGARBATTI & POJJA ITEMS")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into AGARBATTI values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("DRY FRUITS")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into DRY values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("DAILY ESSENTIALS")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into DAILY values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("DAIRY PRODUCTS")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into DAIRY values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}

	return i;
}

public ArrayList<Product> get_pro_admin() {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from OIL_GHEE ");
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> get_prosugar_admin() {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from sugar");
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> get_prosoap_admin() {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from soap ");
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> get_prospices_admin() {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from spices ");
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> get_proatta_admin() {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from atta ");
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> get_prodal_admin() {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from DAL ");
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> get_prosev_admin() {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from SEV ");
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> get_probusicts_admin() {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from BISCUITS ");
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> get_proagabatti_admin() {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from AGARBATTI ");
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> get_prodryfruit_admin() {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from DRY ");
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> get_prodailyess_admin() {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from DAILY ");
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> get_prodairy_admin() {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from DAIRY ");
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public byte[] get_oil_admin_img(String a) {
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from OIL_GHEE where id=? ");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}

public byte[] get_sugar_admin_img(String a) {
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from sugar where id=? ");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}

public byte[] get_detergent_admin_img(String a) {
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from soap where id=? ");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}

public byte[] get_spices_admin_img(String a) {
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from spices where id=? ");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}

public byte[] get_atta_admin_img(String a) {
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from atta where id=? ");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}

public byte[] get_dal_admin_img(String a) {
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from DAL where id=? ");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}
public byte[] get_sev_admin_img(String a) {
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from SEV where id=? ");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}
public byte[] get_biscuit_admin_img(String a) {
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from BISCUITS where id=? ");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}
public byte[] get_agarbati_admin_img(String a) {
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from AGARBATTI where id=? ");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}

public byte[] get_dry_admin_img(String a) {
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from DRY where id=? ");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}

public byte[] get_daily_admin_img(String a) {
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from DAILY where id=? ");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}

public byte[] get_dairy_admin_img(String a) {
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from DAIRY where id=? ");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}

public int delete_oil(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from OIL_GHEE where id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;

}

public int delete_sugar(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from sugar where id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}

public int delete_soap(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from soap where id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}
public int delete_spices(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from spices where id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}


public int delete_atta(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from atta where id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}

public int delete_DAL(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from DAL where id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}

public int delete_SEV(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from SEV where id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}

public int delete_BISCUITS(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from BISCUITS where id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}

public int delete_AGARBATTI(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from AGARBATTI where id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}

public int delete_DRY(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from DRY where id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}


public int delete_DAILY(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from DAILY where id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}

public int delete_DAIRY(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from DAIRY where id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}

public Product get_full_oil_admin(String a) {
	Product pp=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from OIL_GHEE where id=?");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return pp;
}

public int add_update_product(String a, String b, String c, String d, double e, InputStream is) {
	int i=0;
	Connection con=null;
	if(c.equals("OIL_GHEE"))
	{
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("update OIL_GHEE set name=?,category=?,quantity=?,price=?,image=? where id=?");
		ps.setString(1, a);
		ps.setString(2, c);
		ps.setString(3, d);
		ps.setDouble(4, e);
		ps.setBlob(5, is);
		ps.setString(6, b);
		
	i=	ps.executeUpdate();
	
	} catch (Exception e2) {
		e2.printStackTrace();
	}
	}else if (c.equals("sugar & jerry")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("update sugar set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	} else if (c.equals("SOAP & DETERGENT")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("update soap set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("SPICES & MASALA")) {
		try {
			con=create_connection();
			//PreparedStatement ps=con.prepareStatement("insert into spices values(?,?,?,?,?,?)");
			PreparedStatement ps=con.prepareStatement("update spices set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("ATTA & PARMAL")) {
		try {
			con=create_connection();
			//PreparedStatement ps=con.prepareStatement("insert into atta values(?,?,?,?,?,?)");
			PreparedStatement ps=con.prepareStatement("update atta set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("DAL & GRAINS")) {
		try {
			con=create_connection();
			//PreparedStatement ps=con.prepareStatement("insert into DAL values(?,?,?,?,?,?)");
			PreparedStatement ps=con.prepareStatement("update DAL set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("SEV & NAMKEEN")) {
		try {
			con=create_connection();
			//PreparedStatement ps=con.prepareStatement("insert into SEV values(?,?,?,?,?,?)");
			PreparedStatement ps=con.prepareStatement("update SEV set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("BISCUITS & CHOCLATE")) {
		try {
			con=create_connection();
			//PreparedStatement ps=con.prepareStatement("insert into BISCUITS values(?,?,?,?,?,?)");
			PreparedStatement ps=con.prepareStatement("update BISCUITS set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("AGARBATTI & POJJA ITEMS")) {
		try {
			con=create_connection();
			//PreparedStatement ps=con.prepareStatement("insert into AGARBATTI values(?,?,?,?,?,?)");
			PreparedStatement ps=con.prepareStatement("update AGARBATTI set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("DRY FRUITS")) {
		try {
			con=create_connection();
			//PreparedStatement ps=con.prepareStatement("insert into DRY values(?,?,?,?,?,?)");
			PreparedStatement ps=con.prepareStatement("update DRY set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("DAILY ESSENTIALS")) {
		try {
			con=create_connection();
			//PreparedStatement ps=con.prepareStatement("insert into DAILY values(?,?,?,?,?,?)");
			PreparedStatement ps=con.prepareStatement("update DAILY set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("DAIRY PRODUCTS")) {
		try {
			con=create_connection();
			
			PreparedStatement ps=con.prepareStatement("update DAIRY set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}

	return i;
}

public Product get_full_sugar_admin(String a) {
	Product pp=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from sugar where id=?");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return pp;
}

public Product get_full_spices_admin(String a) {
	Product pp=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from spices where id=?");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return pp;
}

public Product get_full_soap_admin(String a) {
	Product pp=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from soap where id=?");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return pp;
}

public Product get_full_atta_admin(String a) {
	Product pp=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from atta where id=?");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return pp;
}


public Product get_full_dal_admin(String a) {
	Product pp=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from DAL where id=?");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return pp;
}
public Product get_full_sev_admin(String a) {
	Product pp=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from SEV where id=?");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return pp;
}
public Product get_full_biscuit_admin(String a) {
	Product pp=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from BISCUITS where id=?");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return pp;
}


public Product get_full_aggarbati_admin(String a) {
	Product pp=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from AGARBATTI where id=?");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return pp;
}

public Product get_full_dry_admin(String a) {
	Product pp=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from DRY where id=?");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return pp;
}
public Product get_full_daily_admin(String a) {
	Product pp=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from DAILY where id=?");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return pp;
}
public Product get_full_dairy_admin(String a) {
	Product pp=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from DAIRY where id=?");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return pp;
}

public ArrayList<Product> add_to_cart(String a) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from OIL_GHEE where id=?");
				ps.setString(1, a);
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public int add_cart_product(String a, String b, String c, String d, double e, InputStream is, String jk) {
	int i=0;
	Connection con=null;
	if(d.equals("1"))
	{
		double f=e;
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into cart_1 values(?,?,?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			ps.setDouble(7, f);
			ps.setString(8, jk);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	
	else if(d.equals("2"))
	{
		
		
	double f=e*2;
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into cart_1 values(?,?,?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			ps.setDouble(7, f);
			ps.setString(8, jk);
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	else if(d.equals("3"))
	{
		
		
	double f=e*3;
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into cart_1 values(?,?,?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			ps.setDouble(7, f);
			ps.setString(8, jk);
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	else if(d.equals("4"))
	{
		
		
	double f=e*4;
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into cart_1 values(?,?,?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			ps.setDouble(7, f);
			ps.setString(8, jk);
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	else if(d.equals("5"))
	{
		
		
	double f=e*5;
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into cart_1 values(?,?,?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			ps.setDouble(7, f);
			ps.setString(8, jk);
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	else if(d.equals("6"))
	{
		
		
	double f=e*6;
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into cart_1 values(?,?,?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			ps.setDouble(7, f);
			ps.setString(8, jk);
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	else if(d.equals("7"))
	{
		
		
	double f=e*7;
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into cart_1 values(?,?,?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			ps.setDouble(7, f);
			ps.setString(8, jk);
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	else if(d.equals("8"))
	{
		
		
	double f=e*8;
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into cart_1 values(?,?,?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			ps.setDouble(7, f);
			ps.setString(8, jk);
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	else if(d.equals("9"))
	{
		
		
	double f=e*9;
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into cart_1 values(?,?,?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			ps.setDouble(7, f);
			ps.setString(8, jk);
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	else if(d.equals("10"))
	{
		
		
	double f=e*10;
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into cart_1 values(?,?,?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			ps.setDouble(7, f);
			ps.setString(8, jk);
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	
	
	return i;
}

public ArrayList<Product> add_to_cart_1(String a) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from sugar where id=?");
				ps.setString(1, a);
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> add_to_cart_soap(String a) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from soap where id=?");
				ps.setString(1, a);
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> add_to_cart_3(String a) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from spices where id=?");
				ps.setString(1, a);
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> add_to_cart_4(String a) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from SEV where id=?");
				ps.setString(1, a);
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> add_to_cart_5(String a) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from DRY where id=?");
				ps.setString(1, a);
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> add_to_cart_6(String a) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from DAL where id=?");
				ps.setString(1, a);
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> add_to_cart_7(String a) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from DAIRY where id=?");
				ps.setString(1, a);
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> add_to_cart_8(String a) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from DAILY where id=?");
				ps.setString(1, a);
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> add_to_cart_9(String a) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from BISCUITS where id=?");
				ps.setString(1, a);
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> add_to_cart_10(String a) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from atta where id=?");
				ps.setString(1, a);
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public ArrayList<Product> add_to_cart_11(String a) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from AGARBATTI where id=?");
				ps.setString(1, a);
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;

}

public ArrayList<Add_to_cart> get_all_cart_items(String user_id) {
	ArrayList<Add_to_cart> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from cart_1 where customer_id=?");
		ps.setString(1, user_id);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		Add_to_cart ll=new Add_to_cart(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"), rs.getDouble("Total_price"));
		list.add(ll);
	}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

public int delete_cart() {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("truncate table cart");
	i=	ps.executeUpdate();
	System.out.println(" cart deleted");
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}

public int delete_pro_cart(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from cart_1 where id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}

public int add_to_cart_please(String a, String b, String c, String d, String e2) {
	int i=0;
	Connection con=null;
try {
	con=create_connection();
	PreparedStatement ps=con.prepareStatement("insert into add_bhai_1 values(?,?,?,?,?)");
	ps.setString(1, a);
	ps.setString(2, b);
	ps.setString(3, c);
	ps.setString(4, d);
	ps.setString(5, e2);
i=	ps.executeUpdate();
} catch (Exception e) {
	e.printStackTrace();
}
	return i;
}

public double get_otp() {
	double i=0;	
	i= (Math.floor(Math.random()*90000) + 10000);

	System.out.println(i);
	return i;
}

public  String sendEmail(Session session, String emailID, String torecipt, String sub, String body) {
	try {
		System.out.println("heeeeeeee");
		MimeMessage msg=new MimeMessage(session); 
		msg.addHeader("Content-type", "text/HTML;charset=UTF-8");
		msg.addHeader("format", "flowed");
		msg.addHeader("Content-Transfer-Encoding", "8bit");
		System.out.println("ok pagal");
		msg.setFrom(new InternetAddress(emailID));
		msg.setSubject(sub,"UTF-8");
		msg.setText(body,"UTF-8");
		msg.setSentDate(new java.util.Date());
		msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(torecipt, false));
		System.out.println("message is ready to send ");
		Transport.send(msg);
		System.out.println("email sent sucessfull");
 
	} catch (Exception e) {
		e.printStackTrace();
	}
	return body;
	
}

public int check_otp_sir(String e, String otp_generated) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		if(e.equals(otp_generated))
		{
			i=1;
		}
	} catch (Exception e2) {
	e2.printStackTrace();
	}
	return i;
}

public String sendreviewEmail(Session session, String emailID, String torecipt, String string, String msgg) {
	try {
	System.out.println("heeeeeeee");
	MimeMessage msg=new MimeMessage(session); 
	msg.addHeader("Content-type", "text/HTML;charset=UTF-8");
	msg.addHeader("format", "flowed");
	msg.addHeader("Content-Transfer-Encoding", "8bit");
	System.out.println("ok pagal");
	msg.setFrom(new InternetAddress(emailID));
	msg.setSubject(string,"UTF-8");
	msg.setText(msgg,"UTF-8");
	msg.setSentDate(new java.util.Date());
	msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(torecipt, false));
	System.out.println("message is ready to send ");
	Transport.send(msg);
	System.out.println("email sent sucessfull");

} catch (Exception e) {
	e.printStackTrace();
}
	return msgg;



}

public new_customer_add get_profile_customer(String aa) {
	//byte[] image=null;
	new_customer_add cc=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from  new_best_customer_2 where user_id=?");
		ps.setString(1, aa);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			
			System.out.println("i havve iamge sir");
			//image=rs.getBytes("image");
			//customer cc=new customer(rs.getString("name"),rs.getString("user_id"), rs.getString("password"), rs.getString("gender"), rs.getBytes("image"));
			 //cc=new new_customer_add(rs.getString("name"), rs.getString("user_id"), rs.getString("password"), rs.getString("gender"));
			 cc=new new_customer_add(rs.getString("name"), rs.getString("user_id"),rs.getString("email_id") , rs.getString("phone"), rs.getString("password"), rs.getString("repassword"), rs.getString("adress"), rs.getString("city"), rs.getString("zip"), rs.getString("gender"), rs.getString("occupation"), rs.getString("dob"), rs.getString("notes"), rs.getString("updates"), rs.getString("offer"), rs.getString("dailyupdate"));
			System.out.println(rs.getString("name"));
			System.out.println(cc);
			
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
		
	
	return cc;
}

public int update_password(String user_id, String password_new) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("update   new_best_customer_2 set password=? where user_id=?");
		ps.setString(1, password_new);
		ps.setString(2, user_id);
		
		
		
		
		i=ps.executeUpdate();
		
	} catch (Exception e2) {
		e2.printStackTrace();
	}
	return i;
}

public int update_by_customer_image(String a, InputStream is) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("update  new_best_customer_2  set image=? where user_id=?");
	
		ps.setBlob(1, is);
		ps.setString(2, a);
		i=ps.executeUpdate();
		
	} catch (Exception e2) {
		e2.printStackTrace();
	}
	return i;

	
}

public int add_cu(String name, String user_id, String email_id, String phone, String password, String repassword,
		String adress, String city, String zip, String gender, String occupation, String dob, String notes,
		String updates, String offer, String dailyupdate, InputStream im) {
	int kl=0;
	Connection con=null;
	try {
		
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("insert into new_best_customer_2 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, name);
		ps.setString(2, user_id);
		ps.setString(3, email_id);
		ps.setString(4, phone);
		ps.setString(5, password);
		ps.setString(6, repassword);
		ps.setString(7, adress);
		ps.setString(8, city);
		ps.setString(9, zip);
		ps.setString(10, gender);
		ps.setString(11, occupation);
		ps.setString(12, dob);
		ps.setString(13, notes);
		ps.setString(14, updates);
		ps.setString(15, offer);
		ps.setString(16, dailyupdate);
		ps.setBlob(17, im);
	kl=ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return kl;
}

public ArrayList<new_customer_add> get_customer_2() {
	ArrayList<new_customer_add> list2=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from new_best_customer_2");
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		//new_customer_add ll=new new_customer_add(rs.getString("name"), rs.getString("user_id"), rs.getString("password"), rs.getString("gender"),rs.getString("name"), rs.getString("user_id"), rs.getString("password"), rs.getString("gender"),rs.getString("name"), rs.getString("user_id"), rs.getString("password"), rs.getString("gender"));
		new_customer_add ll=new new_customer_add(rs.getString("name"), rs.getString("user_id"),rs.getString("email_id") , rs.getString("phone"), rs.getString("password"), rs.getString("repassword"), rs.getString("adress"), rs.getString("city"), rs.getString("zip"), rs.getString("gender"), rs.getString("occupation"), rs.getString("dob"), rs.getString("notes"), rs.getString("updates"), rs.getString("offer"), rs.getString("dailyupdate"));
		System.out.println(rs.getString("user_id"));
		list2.add(ll);
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list2;
}

public int update_customer_2(String name, String user_id, String email_id, String phone, String password,
		String repassword, String adress, String city, String zip, String gender, String occupation, String dob,
		String notes, String updates, String offer, String dailyupdate, InputStream im) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("update new_best_customer_2 set name=?,email_id=?,phone=?,password=?,repassword=?,adress=?,city=?,zip=?,gender=?,occupation=?,dob=?,notes=?,updates=?,offer=?,dailyupdate=?,image=? where user_id=?");
		ps.setString(1, name);
		//ps.setString(2, user_id);
		ps.setString(2, email_id);
		ps.setString(3, phone);
		ps.setString(4, password);
		ps.setString(5, repassword);
		ps.setString(6, adress);
		ps.setString(7, city);
		ps.setString(8, zip);
		ps.setString(9, gender);
		ps.setString(10, occupation);
		ps.setString(11, dob);
		ps.setString(12, notes);
		ps.setString(13, updates);
		ps.setString(14, offer);
		ps.setString(15, dailyupdate);
		ps.setBlob(16, im);
		ps.setString(17, user_id);
	i=ps.executeUpdate();
	if(i!=0)
	{
		System.out.println("updatation done");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}


public int please_add_to_cart(Cart_with_final_show jh) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("insert into cart_5 values(?,?,?,?,?,?,?)");
		ps.setString(1, jh.getCustomer_id());
		ps.setString(2, jh.getName());
		ps.setString(3, jh.getPro_id());
		ps.setString(4, jh.getCategory());
		ps.setDouble(5, jh.getPrice());
		ps.setString(6, jh.getQuantity());
		ps.setString(7, jh.getTotal_price());
		
		
	i=	ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}


public int orders_1(String order_id, String dynamicValue, String dynamicValue2, String date) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		
		PreparedStatement ps=con.prepareStatement("update order_5 set customer_id=?,dynamicValue=?,date=? where order_id=?");
		ps.setString(1, dynamicValue2);
		ps.setString(2, dynamicValue);
		ps.setString(3, order_id);
		ps.setString(4, date);
		
		
		
		
	i=	ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}


public ArrayList<order> get_order_details(String customer_id, String order_id) {
	ArrayList<order> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		/*
		 * PreparedStatement ps=con.
		 * prepareStatement("SELECT distinct * FROM cart_1 CROSS JOIN order_4 ON cart_1.customer_id = order_4.customer_id where customer_id=?"
		 * );
		 */
		//PreparedStatement ps=con.prepareStatement("select distinct * from cart_1 JOIN order_4 ON cart_1.customer_id = order_4.customer_id ");
		PreparedStatement ps=con.prepareStatement("select distinct * from cart_1 CROSS JOIN order_5 ON cart_1.customer_id = order_5.customer_id where order_id=?");
		
		//PreparedStatement ps=con.prepareStatement("SELECT * FROM cart_1 LEFT JOIN order_3 ON cart_1.customer_id = order_3.order_id");
		ps.setString(1, order_id);
		System.out.println("done");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			order oo=new order(rs.getString("name"), rs.getString("id"),rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"), rs.getString("customer_id"), rs.getString("order_id"), rs.getString("dynamicValue"),rs.getString("date"));
			System.out.println(rs.getString("name"));
			//name, id, category, quantity, price, image, Total_price, customer_id, order_id, dynamicValue
			list.add(oo);
			System.out.println("lsit available");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	System.out.println("list send please check");
	return list;
	
}


public int update_cart_quantity(String user_id, String pro_name, String pro_id, String cat, String quantity,
		double price) {
	int i=0;
	
	Connection con=null;
	try {
		con=create_connection();
		
		PreparedStatement ps=con.prepareStatement("update cart_1 set name=?,category=?,quantity=?,price=?,customer_id=? where id=?");
		ps.setString(1, pro_name);
		ps.setString(2, cat);
		ps.setString(3, quantity);
		ps.setDouble(4,price );
		ps.setString(5, user_id);
		ps.setString(6, pro_id);
		i=ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}


public ArrayList<order_no> get_all_order(String order_id) {
	ArrayList<order_no> list3=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from order_5 where order_id");
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list3;
}


public int orders_2(String order_id, String dynamicValue, String dynamicValue2, String date) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		
		PreparedStatement ps=con.prepareStatement("insert into order_5 values(?,?,?,?)");
		ps.setString(1, dynamicValue);
		ps.setString(2, order_id);
		ps.setString(3, dynamicValue2);
		ps.setString(4, date);
		
		
		
		
		
	i=	ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}





public int add_to_final_cart_check_out_page(String a, String b, String c, String d, String e, String f, String g,
		String h, String i, InputStream is, String name, String quantity, String price, String z) {
	int k=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("insert into last_order_2 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, a);
		ps.setString(2, b);
		ps.setString(3, c);
		ps.setString(4, d);
		ps.setString(5, e);
		ps.setString(6, f);
		ps.setString(7, g);
		ps.setBlob(8,is);
		ps.setString(9, h);
		ps.setString(10, i);
		ps.setString(11, name);
		ps.setString(12,quantity );
		ps.setString(13, price);
		ps.setString(14, z);
		
	k=ps.executeUpdate();
		
		
	} catch (Exception u) {
		u.printStackTrace();
	}
	return k;
}


public int delete_from_cart_on_new_cart_insertion(String a, String ll) {
	int k=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from cart_1 where id=? and customer_id=? ");
		
		ps.setString(1, ll);
		ps.setString(2, a);
		
	k=	ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return k;
}


public ArrayList<checkoutpage> get_order_details_for_customer(String order_no, String customer_id) {
	ArrayList<checkoutpage> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from last_order_6 where order_no=? and customer_id=?");
	
		ps.setString(1, order_no);
		ps.setString(2, customer_id);
		
		
		System.out.println(order_no+""+customer_id);
	ResultSet rs=	ps.executeQuery();
    System.out.println(rs);
	System.out.println("yaha jak done"+customer_id);
	while(rs.next())
	{
		System.out.println("rewanshi");
		checkoutpage kkk=new checkoutpage(rs.getString("order_no"), rs.getString("name"),rs.getString("email"), rs.getString("adress"), rs.getString("city"), rs.getString("landmark"), rs.getString("pincode"), rs.getString("total"), rs.getString("total_items"),rs.getString("pro_name"),rs.getString("pro_quantity"),rs.getString("pro_price"),rs.getString("customer_id"),rs.getString("date"),rs.getString("payment"),rs.getString("status"));
	System.out.println(rs.getString("order_no")+""+ rs.getString("name"));
		list.add(kkk);
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}


public ArrayList<order_details_for_admin> get_all_order_for_admin() {
	ArrayList<order_details_for_admin> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from order_5");
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		
		order_details_for_admin v=new order_details_for_admin(rs.getString("order_id"),rs.getString("customer_id"), rs.getString("dynamicValue"),rs.getString("date"));
		list.add(v);
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}


public byte[] get_payment_img(String order_id) {
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from  last_order_6 where order_no=? ");
		ps.setString(1, order_id);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}


public ArrayList<order_details_for_admin> get_order_details_of_particular_customer(String customer_id) {
	ArrayList<order_details_for_admin> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from order_5 where customer_id=?");
		ps.setString(1, customer_id);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		
		order_details_for_admin v=new order_details_for_admin(rs.getString("order_id"),rs.getString("customer_id"), rs.getString("dynamicValue"),rs.getString("date"));
		list.add(v);
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}


public byte[] get_admin_img(String user_id) {
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from new_best_customer_2 where user_id=? ");
		ps.setString(1, user_id);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}


public int add_to_final_cart_check_out_page(String a, String b, String c, String d, String e, String f, String g,
		String h, String i, InputStream is, String name, String quantity, String price, String z, String date,
		String exampleRadios, String status) {
	int k=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("insert into last_order_6 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, a);
		ps.setString(2, b);
		ps.setString(3, c);
		ps.setString(4, d);
		ps.setString(5, e);
		ps.setString(6, f);
		ps.setString(7, g);
		ps.setBlob(8,is);
		ps.setString(9, h);
		ps.setString(10, i);
		ps.setString(11, name);
		ps.setString(12,quantity );
		ps.setString(13, price);
		ps.setString(14, z);
		ps.setString(15, date);
		ps.setString(16, exampleRadios);
		ps.setString(17, status);
		
	k=ps.executeUpdate();
		
		
	} catch (Exception u) {
		u.printStackTrace();
	}
	return k;
}


public int get_update_status(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		//order_no, name, email, adress, city, landmark, pincode, image, total, total_items, pro_name, pro_quantity, pro_price, customer_id, date, payment, status
		PreparedStatement ps=con.prepareStatement("update last_order_6 set status=? where order_no=?");
		ps.setString(1, "order-confirm");
		ps.setString(2, a);
		i=ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}


public int get_out_for_status(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		//order_no, name, email, adress, city, landmark, pincode, image, total, total_items, pro_name, pro_quantity, pro_price, customer_id, date, payment, status
		PreparedStatement ps=con.prepareStatement("update last_order_6 set status=? where order_no=?");
		ps.setString(1, "order-out-of-delivery");
		ps.setString(2, a);
		i=ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}


public int get_update_status_89(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		//order_no, name, email, adress, city, landmark, pincode, image, total, total_items, pro_name, pro_quantity, pro_price, customer_id, date, payment, status
		PreparedStatement ps=con.prepareStatement("update last_order_6 set status=? where order_no=?");
		ps.setString(1, "Deliverd");
		ps.setString(2, a);
		i=ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}


public int add_to_new_table_order_deliverd(String a, String currentDate) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("insert into delivery_status values(?,?,?)");
		ps.setString(1, a);
		ps.setString(2,currentDate);
		ps.setString(3,"deliverd");
		i=ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}


public int delete_order_which_is_deliverd(String a) {
	int i=0;
	Connection con=null;
	try {
		con =create_connection();
		PreparedStatement ps=con.prepareStatement("delete from order_5 where order_id=? ");
		ps.setString(1, a);
		i=ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}


public int add_to_new_table_order_deliverd(String a, String b, String currentDate) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("insert into delivery_status_2 values(?,?,?,?)");
		ps.setString(1, a);
		ps.setString(2, b);
		ps.setString(3,currentDate);
		ps.setString(4,"deliverd");
		i=ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}


public ArrayList<deliver_order> get_deiverd_order_details_of_particular_customer(String customer_id) {
	ArrayList<deliver_order> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from delivery_status_2 where customer_id=?");
		ps.setString(1, customer_id);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		
		//order_details_for_admin v=new order_details_for_admin(rs.getString("order_id"),rs.getString("customer_id"), rs.getString("dynamicValue"),rs.getString("date"));
		deliver_order v=new deliver_order(rs.getString("order_id"),rs.getString("customer_id"), rs.getString("date"),rs.getString("status"));
		list.add(v);
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}


public ArrayList<deliver_order> get_all_deliver_order() {
	ArrayList<deliver_order> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from delivery_status_2");
		ResultSet rs=ps.executeQuery();
		while(rs.next()) { 
			deliver_order dd=new deliver_order(rs.getString("order_id"), rs.getString("customer_id"), rs.getString("date"), rs.getString("status"));
			list.add(dd);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}


public int add_product_into_final_product_list(String a, String b, String c, String d, double e, InputStream is) {
	int i=0;
	Connection con=null;
	if(c.equals("OIL_GHEE"))
	{
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?)");
		ps.setString(1, a);
		ps.setString(2, b);
		ps.setString(3, c);
		ps.setString(4, d);
		ps.setDouble(5, e);
		ps.setBlob(6, is);
		
	i=	ps.executeUpdate();
	
	} catch (Exception e2) {
		e2.printStackTrace();
	}
	}else if (c.equals("sugar & jerry")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	} else if (c.equals("SOAP & DETERGENT")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("SPICES & MASALA")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("ATTA & PARMAL")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("DAL & GRAINS")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("SEV & NAMKEEN")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("BISCUITS & CHOCLATE")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("AGARBATTI & POJJA ITEMS")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("DRY FRUITS")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("DAILY ESSENTIALS")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("DAIRY PRODUCTS")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setDouble(5, e);
			ps.setBlob(6, is);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}

	return i;
}


public new_customer_add get_particulear_customer_details_for_otp(String user_id) {
	new_customer_add cc=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from new_best_customer_2 where user_id=?");
		ps.setString(1, user_id);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			cc=new new_customer_add(rs.getString("name"), rs.getString("user_id"),rs.getString("email_id") , rs.getString("phone"), rs.getString("password"), rs.getString("repassword"), rs.getString("adress"), rs.getString("city"), rs.getString("zip"), rs.getString("gender"), rs.getString("occupation"), rs.getString("dob"), rs.getString("notes"), rs.getString("updates"), rs.getString("offer"), rs.getString("dailyupdate"));
			System.out.println(rs.getString("name"));
			
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return cc;
}


public ArrayList<Product> get_all_product() {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from product ");
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}


public byte[] get_all_product_img(String a) {
	System.out.println(a+"hello");
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from product where id=?");
		System.out.println("select * from product where id="+a);
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}


public int add_to_wish_list(String a, String b, String c, String d, String e2) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		
		PreparedStatement ps =con.prepareStatement("insert into wishlist_1 values(?,?,?,?,?)");
		/*
		 * PreparedStatement ps =con.
		 * prepareStatement("insert into wishlist_1 ADD CONSTRAINT unique_color_per_customer UNIQUE (customer_id, color)"
		 * );
		 */
				
		ps.setString(1, a);
		ps.setString(2, b);
		ps.setString(3, c);
		ps.setString(4, d);
		ps.setString(5, e2);
	i=	ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}


public int add_update_product_1(String a, String b, String c, String d, double e, InputStream is) {
	int i=0;
	Connection con=null;
	if(c.equals("OIL_GHEE"))
	{
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("update product set name=?,category=?,quantity=?,price=?,image=? where id=?");
		ps.setString(1, a);
		ps.setString(2, c);
		ps.setString(3, d);
		ps.setDouble(4, e);
		ps.setBlob(5, is);
		ps.setString(6, b);
		
	i=	ps.executeUpdate();
	
	} catch (Exception e2) {
		e2.printStackTrace();
	}
	}else if (c.equals("sugar & jerry")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("update product set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	} else if (c.equals("SOAP & DETERGENT")) {
		try {
			con=create_connection();
			PreparedStatement ps=con.prepareStatement("update product set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("SPICES & MASALA")) {
		try {
			con=create_connection();
			//PreparedStatement ps=con.prepareStatement("insert into spices values(?,?,?,?,?,?)");
			PreparedStatement ps=con.prepareStatement("update product set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("ATTA & PARMAL")) {
		try {
			con=create_connection();
			//PreparedStatement ps=con.prepareStatement("insert into atta values(?,?,?,?,?,?)");
			PreparedStatement ps=con.prepareStatement("update product set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("DAL & GRAINS")) {
		try {
			con=create_connection();
			//PreparedStatement ps=con.prepareStatement("insert into DAL values(?,?,?,?,?,?)");
			PreparedStatement ps=con.prepareStatement("update product set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("SEV & NAMKEEN")) {
		try {
			con=create_connection();
			//PreparedStatement ps=con.prepareStatement("insert into SEV values(?,?,?,?,?,?)");
			PreparedStatement ps=con.prepareStatement("update product set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("BISCUITS & CHOCLATE")) {
		try {
			con=create_connection();
			//PreparedStatement ps=con.prepareStatement("insert into BISCUITS values(?,?,?,?,?,?)");
			PreparedStatement ps=con.prepareStatement("update product set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("AGARBATTI & POJJA ITEMS")) {
		try {
			con=create_connection();
			//PreparedStatement ps=con.prepareStatement("insert into AGARBATTI values(?,?,?,?,?,?)");
			PreparedStatement ps=con.prepareStatement("update product set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("DRY FRUITS")) {
		try {
			con=create_connection();
			//PreparedStatement ps=con.prepareStatement("insert into DRY values(?,?,?,?,?,?)");
			PreparedStatement ps=con.prepareStatement("update product set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("DAILY ESSENTIALS")) {
		try {
			con=create_connection();
			//PreparedStatement ps=con.prepareStatement("insert into DAILY values(?,?,?,?,?,?)");
			PreparedStatement ps=con.prepareStatement("update product set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	else if (c.equals("DAIRY PRODUCTS")) {
		try {
			con=create_connection();
			
			PreparedStatement ps=con.prepareStatement("update product set name=?,category=?,quantity=?,price=?,image=? where id=?");
			ps.setString(1, a);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setDouble(4, e);
			ps.setBlob(5, is);
			ps.setString(6, b);
			
		i=	ps.executeUpdate();
		
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}

	return i;
}


public int delete_product(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from product where id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}


public ArrayList<Product> get_wish_list(String a) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select DISTINCT * from wishlist_1 where customer_id=?");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		Product ll=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getDouble("price"));
		list.add(ll);
	}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}


public ArrayList<Product> add_to_cart_from_wishlist(String a) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from product where id=?");
				ps.setString(1, a);
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}


public ArrayList<Product> add_to_cart_wishlist(String a) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
				PreparedStatement ps=con.prepareStatement("select * from product where id=?");
				ps.setString(1, a);
			ResultSet rs=	ps.executeQuery();
			while(rs.next())
			{
				Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
				list.add(pp);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}
public ArrayList<Product> get_all_product_like(String inputsearch) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		//SELECT * FROM your_table WHERE column_name LIKE ?
		PreparedStatement ps=con.prepareStatement("select * from product where name LIKE ?");
	
		//System.out.println("select * from product WHERE name LIKE=?);
		//ps.setString(1, inputsearch);
ps.setString(1, "%" + inputsearch + "%");
		ResultSet rs=	ps.executeQuery();
		while(rs.next())
		{
			Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
			list.add(pp);
		}
} catch (Exception e) {
	e.printStackTrace();
}
return list;
}


public int delete_from_wishlist(String z, String pro_id) {
	int k=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from wishlist_1 where id=? and customer_id=? ");
		
		ps.setString(1,pro_id);
		ps.setString(2,z);
		
	k=	ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return k;
}


public int billing_1(String a, String b, String c, String d) {
int i=0;
Connection con=null;
try {
	con=create_connection();
	PreparedStatement ps=con.prepareStatement("insert into billing values(?,?,?,?)");
	ps.setString(1, a);
	ps.setString(2, b);
	ps.setString(3, c);
	ps.setString(4, d);
	i=ps.executeUpdate();
} catch (Exception e) {
	e.printStackTrace();
}
	return i;
}


public billing get_billing_information(String b) {
	billing list=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from billing where billing_id=?");
		ps.setString(1, b);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			
			list=new billing(rs.getString("name"), rs.getString("billing_id"),rs.getString("email_id"), rs.getString("mobile_no"));
		
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}


public ArrayList<Product> get_all_product_like_all(String search) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		//SELECT * FROM your_table WHERE column_name LIKE ?
		PreparedStatement ps=con.prepareStatement("select * from product where id=?");
	
		//System.out.println("select * from product WHERE name LIKE=?);
		//ps.setString(1, inputsearch);
ps.setString(1, search);
		ResultSet rs=	ps.executeQuery();
		while(rs.next())
		{
			Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
			list.add(pp);
		}
} catch (Exception e) {
	e.printStackTrace();
}
return list;
}


public int add_to_bill_please(String billing_id, String name, String id, String category, String quantity, double e) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("insert into bill_for_dekstop values(?,?,?,?,?,?)");
		ps.setString(1, billing_id);
		ps.setString(2, name);
		ps.setString(3, id);
		ps.setString(4, category);
		ps.setString(5, quantity);
		ps.setDouble(6, e);
		i=ps.executeUpdate();
	} catch (Exception e2) {
		e2.printStackTrace();
	}
	return i;
}


public ArrayList<Product> get_all_product_added(String billing_id) {
	ArrayList<Product> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from bill_for_dekstop where billing_id=?");
		ps.setString(1, billing_id);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			Product pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
			list.add(pp);
		}
	} catch (Exception e) {
	e.printStackTrace();
	}
	return list;
}


public int get_order_by_photo_new(String a, InputStream is,String m, String b, String k, String j, String l) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		
		PreparedStatement ps=con.prepareStatement("insert into order12 values(?,?,?,?,?,?,?)");
		ps.setString(1, a);
		ps.setBlob(2, is);
		ps.setString(3, m);//
		ps.setString(4, b);
		ps.setString(5, k);
		ps.setString(6,j);
		ps.setString(7, l);
		i=ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return i;
}





public byte[] get_bill_by_img(String a) {
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from order12 where order_id=?");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}




public order_by_image_user_2 get_all_bill_information(String c) {
	order_by_image_user_2 list =null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from  order11 where order_id=?");
		
		ps.setString(1, c);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			
			list=new order_by_image_user_2(rs.getString("user_id"),rs.getString("order_id"));
			System.out.println(rs.getString("user_id")+" "+rs.getString("order_id")); 
			
			
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}


public byte[] get_bill_user_id_img(String a) {
	byte img[]=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from order12 where order_id=?");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		img=rs.getBytes("image");
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return img;
}


public ArrayList<order_by_image_user_2> get_order_details_of_particular_customer_by_image(String customer_id) {
	ArrayList<order_by_image_user_2> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from order12 where user_id=?");
		ps.setString(1, customer_id);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		
		order_by_image_user_2 v=new order_by_image_user_2(rs.getString("user_id"),rs.getString("order_id"), rs.getString("name"),rs.getString("dob"));
		list.add(v);
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}


/*
 * public order_by_image_user_2 order_by_image_user_2_get_all_data(String a,
 * String b) { order_by_image_user_2 list=null; Connection con=null; try {
 * con=create_connection(); PreparedStatement ps=con.
 * prepareStatement("select * from order12 where order_id=? and user_id=?");
 * 
 * ps.setString(1, a); ps.setString(2, b);
 * 
 * 
 * System.out.println(a+""+b); ResultSet rs= ps.executeQuery();
 * System.out.println(rs); //System.out.println("yaha jak done"+customer_id);
 * while(rs.next()) { System.out.println("rewanshi"); list=new
 * order_by_image_user_2(rs.getString("user_id"),rs.getString("order_id"),
 * rs.getString("name"),rs.getString("dob"),rs.getString("email"),rs.getString(
 * "adress")); System.out.println(rs.getString("order_id")+""+
 * rs.getString("name"));
 * 
 * } } catch (Exception e) { e.printStackTrace(); } return list;
 * 
 * }
 */


public order_by_image_user_2 get_all_data(String a, String b) {
	order_by_image_user_2 list=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from order12 where order_id=? and user_id=?");
	
		ps.setString(1, a);
		ps.setString(2, b);
		
		
		System.out.println(a+""+b);
	ResultSet rs=	ps.executeQuery();
    System.out.println(rs);
	//System.out.println("yaha jak done"+customer_id);
	while(rs.next())
	{
		System.out.println("rewanshi");
		 list=new order_by_image_user_2(rs.getString("user_id"),rs.getString("order_id"), rs.getString("name"),rs.getString("dob"),rs.getString("email"),rs.getString("adress"));
	System.out.println(rs.getString("order_id")+""+ rs.getString("name"));
	
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;

}


public ArrayList<order_by_image_user_2> get_all_order() {
	ArrayList<order_by_image_user_2> list=new ArrayList<>();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from order12");
		ResultSet rs=ps.executeQuery();
		while(rs.next()) { 
			//order_by_image_user_2 dd=new order_by_image_user_2(rs.getString("order_id"), rs.getString("customer_id"), rs.getString("date"), rs.getString("status"));
			order_by_image_user_2 v=new order_by_image_user_2(rs.getString("user_id"),rs.getString("order_id"), rs.getString("name"),rs.getString("dob"),rs.getString("email"),rs.getString("adress")); 
			
			
			list.add(v);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;


}


public Product get_all_product(String a) {
	Product pp=null;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from product where id=?");
		ps.setString(1, a);
	ResultSet rs=	ps.executeQuery();
	while(rs.next())
	{
		pp=new Product(rs.getString("name"), rs.getString("id"), rs.getString("category"), rs.getString("quantity"), rs.getDouble("price"));
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return pp;

}


public int add_update_product_offer(String a, String b, String c, String d, double e, double f, String g, String h) {
	int i=0;
	Connection con=null;
	
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("insert into offer_2 values(?,?,?,?,?,?,?,?)");
		ps.setString(1, a);
		ps.setString(2, b);
		ps.setString(3, c);
		ps.setString(4, d);
		ps.setDouble(5, e);
		ps.setDouble(6, f);
		ps.setString(7, g);
		ps.setString(8, h);
		
		
	i=	ps.executeUpdate();
	
	} catch (Exception e2) {
		e2.printStackTrace();
	}
	return i;
	}


public int add_update_product_combo(String a, String b, String c, String d, double e, double f, String g, String h) {
	int i=0;
	Connection con=null;
	
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("insert into combo_2 values(?,?,?,?,?,?,?,?)");
		ps.setString(1, a);
		ps.setString(2, b);
		ps.setString(3, c);
		ps.setString(4, d);
		ps.setDouble(5, e);
		ps.setDouble(6, f);
		ps.setString(7, g);
		ps.setString(8, h);
		
		
	i=	ps.executeUpdate();
	
	} catch (Exception e2) {
		e2.printStackTrace();
	}
	return i;
	}


public int add_update_product_deal_of_week(String a, String b, String c, String d, double e, double f, String g, String h) {
	int i=0;
	Connection con=null;
	
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("insert into deal_2 values(?,?,?,?,?,?,?,?)");
		ps.setString(1, a);
		ps.setString(2, b);
		ps.setString(3, c);
		ps.setString(4, d);
		ps.setDouble(5, e);
		ps.setDouble(6, f);
		ps.setString(7, g);
		ps.setString(8, h);
		
		
	i=	ps.executeUpdate();
	
	} catch (Exception e2) {
		e2.printStackTrace();
	}
	return i;
	}


public int add_update_product_deal_of(String a, String b, String c, String d, double e, double f, String g, String h) {
	int i=0;
	Connection con=null;
	
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("insert into deal_of_2 values(?,?,?,?,?,?,?,?)");
		ps.setString(1, a);
		ps.setString(2, b);
		ps.setString(3, c);
		ps.setString(4, d);
		ps.setDouble(5, e);
		ps.setDouble(6, f);
		ps.setString(7, g);
		ps.setString(8, h);
		
		
	i=	ps.executeUpdate();
	
	} catch (Exception e2) {
		e2.printStackTrace();
	}
	return i;
	}


public int delete_product_offer(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from offer_2 where pro_id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}

public int delete_product_combo(String a) {
	int i=0;
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from combo_2 where pro_id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return i;
}

public int deleate_deal_of_week(String a) {
	int i=0;
	Connection con=null;
	
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from deal_2 where pro_id=?");
		ps.setString(1, a);
		i=ps.executeUpdate();
		
		
	
	
	} catch (Exception e2) {
		e2.printStackTrace();
	}
	return i;
	}


public int deleate_product_deal_of(String a) {
	int i=0;
	Connection con=null;
	
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("delete from deal_of_2 where pro_id=? ");
		ps.setString(1, a);
		i=ps.executeUpdate();
	
	} catch (Exception e2) {
		e2.printStackTrace();
	}
	return i;
	}


public ArrayList<product_new> get_all_deal() {
	ArrayList<product_new> list=new ArrayList<>();
	admin_model model=new admin_model();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from deal_of_2");
		ResultSet rs=	ps.executeQuery();
		while(rs.next())
		{
			
			product_new pp=new product_new(rs.getString("pro_name"), rs.getString("pro_id"), rs.getString("pro_category"), rs.getString("pro_quantity"), rs.getDouble("pro_price"),rs.getDouble("offer_price"),rs.getString("start_date"), rs.getString("end_date"));
			list.add(pp);
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}


public ArrayList<product_new> get_all_combo() {
	ArrayList<product_new> list=new ArrayList<>();
	admin_model model=new admin_model();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from combo_2");
		ResultSet rs=	ps.executeQuery();
		while(rs.next())
		{
			
			product_new pp=new product_new(rs.getString("pro_name"), rs.getString("pro_id"), rs.getString("pro_category"), rs.getString("pro_quantity"), rs.getDouble("pro_price"),rs.getDouble("offer_price"),rs.getString("start_date"), rs.getString("end_date"));
			list.add(pp);
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}


public ArrayList<product_new> get_all_offer() {
	ArrayList<product_new> list=new ArrayList<>();
	admin_model model=new admin_model();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from offer_2");
		ResultSet rs=	ps.executeQuery();
		while(rs.next())
		{
			
			product_new pp=new product_new(rs.getString("pro_name"), rs.getString("pro_id"), rs.getString("pro_category"), rs.getString("pro_quantity"), rs.getDouble("pro_price"),rs.getDouble("offer_price"),rs.getString("start_date"), rs.getString("end_date"));
			list.add(pp);
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}


public ArrayList<product_new> get_all_deal_week() {
	ArrayList<product_new> list=new ArrayList<>();
	admin_model model=new admin_model();
	Connection con=null;
	try {
		con=create_connection();
		PreparedStatement ps=con.prepareStatement("select * from deal_2");
		ResultSet rs=	ps.executeQuery();
		while(rs.next())
		{
			
			product_new pp=new product_new(rs.getString("pro_name"), rs.getString("pro_id"), rs.getString("pro_category"), rs.getString("pro_quantity"), rs.getDouble("pro_price"),rs.getDouble("offer_price"),rs.getString("start_date"), rs.getString("end_date"));
			list.add(pp);
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}
}




