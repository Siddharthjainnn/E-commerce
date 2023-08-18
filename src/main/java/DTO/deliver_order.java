package DTO;

public class deliver_order {
	private String order_id;
	private String customer_id;
 private String	date; 
private String status;

public deliver_order() {
	// TODO Auto-generated constructor stub
}

public String getOrder_id() {
	return order_id;
}

public void setOrder_id(String order_id) {
	this.order_id = order_id;
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

public String getStatus() {
	return status;
}

public void setStatus(String status) {
	this.status = status;
}

public deliver_order(String order_id, String customer_id, String date, String status) {
	super();
	this.order_id = order_id;
	this.customer_id = customer_id;
	this.date = date;
	this.status = status;
}


}
