package DTO;

public class order_details_for_admin implements Comparable<order_details_for_admin> {
private String customer_id;
private String order_id;
private String dynamicValue;
private String date;

public order_details_for_admin() {
	// TODO Auto-generated constructor stub
}
public String getCustomer_id() {
	return customer_id;
}

public void setCustomer_id(String customer_id) {
	this.customer_id = customer_id;
}

public String getOrder_id() {
	return order_id;
}
public void setOrder_id(String order_id) {
	this.order_id = order_id;
}
public String getDynamicValue() {
	return dynamicValue;
}
public void setDynamicValue(String dynamicValue) {
	this.dynamicValue = dynamicValue;
}


public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public order_details_for_admin(String order_id, String dynamicValue) {
	super();
	this.order_id = order_id;
	this.dynamicValue = dynamicValue;
}
public order_details_for_admin( String order_id,String customer_id, String dynamicValue) {
	super();
	this.order_id = order_id;
	this.customer_id = customer_id;
	this.dynamicValue = dynamicValue;
}
public order_details_for_admin(String customer_id, String order_id, String dynamicValue, String date) {
	super();
	this.customer_id = customer_id;
	this.order_id = order_id;
	this.dynamicValue = dynamicValue;
	this.date = date;
}
@Override
public int compareTo(order_details_for_admin o) {
	
	return o.getDate().compareTo(this.getDate());
}

}
