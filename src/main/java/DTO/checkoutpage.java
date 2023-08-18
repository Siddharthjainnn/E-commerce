package DTO;

import javax.servlet.http.Part;

public class checkoutpage {
	private String order_no; 
	private String name;
	private String email;
	private String adress;
	private String city;
	private String landmark;
	private String pincode;
	private Part image;
	private String total;
	private String total_items;
	private String pro_name;
	private String pro_quantity;
	private String pro_price;
	private String customer_id;
	private String date;
	private String payment;
	private String status;
	
	
	
	public String getOrder_no() {
		return order_no;
	}



	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getAdress() {
		return adress;
	}



	public void setAdress(String adress) {
		this.adress = adress;
	}



	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
	}



	public String getLandmark() {
		return landmark;
	}



	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}



	public String getPincode() {
		return pincode;
	}



	public void setPincode(String pincode) {
		this.pincode = pincode;
	}



	public Part getImage() {
		return image;
	}



	public void setImage(Part image) {
		this.image = image;
	}



	public String getTotal() {
		return total;
	}



	public void setTotal(String total) {
		this.total = total;
	}



	public String getTotal_items() {
		return total_items;
	}



	public void setTotal_items(String total_items) {
		this.total_items = total_items;
	}



	public String getPro_name() {
		return pro_name;
	}



	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}



	public String getPro_quantity() {
		return pro_quantity;
	}



	public void setPro_quantity(String pro_quantity) {
		this.pro_quantity = pro_quantity;
	}



	public String getPro_price() {
		return pro_price;
	}



	public void setPro_price(String pro_price) {
		this.pro_price = pro_price;
	}



	public String getCustomer_id() {
		return customer_id;
	}



	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}



	public String getDate() {
		return date;
	}



	public void setDate(String date) {
		this.date = date;
	}



	public String getPayment() {
		return payment;
	}



	public void setPayment(String payment) {
		this.payment = payment;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	public checkoutpage() {
		// TODO Auto-generated constructor stub
	}



	public checkoutpage(String order_no, String name, String email, String adress, String city, String landmark,
			String pincode, Part image, String total, String total_items, String pro_name, String pro_quantity,
			String pro_price, String customer_id) {
		super();
		this.order_no = order_no;
		this.name = name;
		this.email = email;
		this.adress = adress;
		this.city = city;
		this.landmark = landmark;
		this.pincode = pincode;
		this.image = image;
		this.total = total;
		this.total_items = total_items;
		this.pro_name = pro_name;
		this.pro_quantity = pro_quantity;
		this.pro_price = pro_price;
		this.customer_id = customer_id;
	}



	public checkoutpage(String order_no, String name, String email, String adress, String city, String landmark,
			String pincode, String total, String total_items, String pro_name, String pro_quantity, String pro_price,
			String customer_id) {
		super();
		this.order_no = order_no;
		this.name = name;
		this.email = email;
		this.adress = adress;
		this.city = city;
		this.landmark = landmark;
		this.pincode = pincode;
		this.total = total;
		this.total_items = total_items;
		this.pro_name = pro_name;
		this.pro_quantity = pro_quantity;
		this.pro_price = pro_price;
		this.customer_id = customer_id;
	}



	public checkoutpage(String order_no, String name, String email, String adress, String city, String landmark,
			String pincode, Part image, String total, String total_items, String pro_name, String pro_quantity,
			String pro_price, String customer_id, String date, String payment) {
		super();
		this.order_no = order_no;
		this.name = name;
		this.email = email;
		this.adress = adress;
		this.city = city;
		this.landmark = landmark;
		this.pincode = pincode;
		this.image = image;
		this.total = total;
		this.total_items = total_items;
		this.pro_name = pro_name;
		this.pro_quantity = pro_quantity;
		this.pro_price = pro_price;
		this.customer_id = customer_id;
		this.date = date;
		this.payment = payment;
	}



	public checkoutpage(String order_no, String name, String email, String adress, String city, String landmark,
			String pincode, String total, String total_items, String pro_name, String pro_quantity, String pro_price,
			String customer_id, String date, String payment) {
		super();
		this.order_no = order_no;
		this.name = name;
		this.email = email;
		this.adress = adress;
		this.city = city;
		this.landmark = landmark;
		this.pincode = pincode;
		this.total = total;
		this.total_items = total_items;
		this.pro_name = pro_name;
		this.pro_quantity = pro_quantity;
		this.pro_price = pro_price;
		this.customer_id = customer_id;
		this.date = date;
		this.payment = payment;
	}



	public checkoutpage(String order_no, String name, String email, String adress, String city, String landmark,
			String pincode, Part image, String total, String total_items, String pro_name, String pro_quantity,
			String pro_price, String customer_id, String date, String payment, String status) {
		super();
		this.order_no = order_no;
		this.name = name;
		this.email = email;
		this.adress = adress;
		this.city = city;
		this.landmark = landmark;
		this.pincode = pincode;
		this.image = image;
		this.total = total;
		this.total_items = total_items;
		this.pro_name = pro_name;
		this.pro_quantity = pro_quantity;
		this.pro_price = pro_price;
		this.customer_id = customer_id;
		this.date = date;
		this.payment = payment;
		this.status = status;
	}



	public checkoutpage(String order_no, String name, String email, String adress, String city, String landmark,
			String pincode, String total, String total_items, String pro_name, String pro_quantity, String pro_price,
			String customer_id, String date, String payment, String status) {
		super();
		this.order_no = order_no;
		this.name = name;
		this.email = email;
		this.adress = adress;
		this.city = city;
		this.landmark = landmark;
		this.pincode = pincode;
		this.total = total;
		this.total_items = total_items;
		this.pro_name = pro_name;
		this.pro_quantity = pro_quantity;
		this.pro_price = pro_price;
		this.customer_id = customer_id;
		this.date = date;
		this.payment = payment;
		this.status = status;
	}



	
	

}

