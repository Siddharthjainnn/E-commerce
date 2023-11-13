package DTO;

import javax.servlet.http.Part;

public class order_by_image_user_2 {
private String user_id;
private String order_id;
private Part image;
private String name;
private String email_id;
private String date_of_order;
private String adress;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail_id() {
	return email_id;
}
public void setEmail_id(String email_id) {
	this.email_id = email_id;
}
public String getDate_of_order() {
	return date_of_order;
}
public void setDate_of_order(String date_of_order) {
	this.date_of_order = date_of_order;
}
public String getAdress() {
	return adress;
}
public void setAdress(String adress) {
	this.adress = adress;
}
public order_by_image_user_2() {
	// TODO Auto-generated constructor stub
}
public String getUser_id() {
	return user_id;
}
public void setUser_id(String user_id) {
	this.user_id = user_id;
}
public String getOrder_id() {
	return order_id;
}
public void setOrder_id(String order_id) {
	this.order_id = order_id;
}
public Part getImage() {
	return image;
}
public void setImage(Part image) {
	this.image = image;
}
public order_by_image_user_2(String user_id, String order_id, Part image) {
	super();
	this.user_id = user_id;
	this.order_id = order_id;
	this.image = image;
}
public order_by_image_user_2(String string, String string2) {
	super();
	this.user_id = user_id;
	this.order_id = order_id;
}
public order_by_image_user_2(String user_id, String order_id, Part image, String name, String email_id,
		String date_of_order, String adress) {
	super();
	this.user_id = user_id;
	this.order_id = order_id;
	this.image = image;
	this.name = name;
	this.email_id = email_id;
	this.date_of_order = date_of_order;
	this.adress = adress;
}
public order_by_image_user_2(String user_id, String order_id, String name, String email_id, String date_of_order,
		String adress) {
	super();
	this.user_id = user_id;
	this.order_id = order_id;
	this.name = name;
	this.email_id = email_id;
	this.date_of_order = date_of_order;
	this.adress = adress;
}
public order_by_image_user_2(String user_id, String order_id, String name, String date_of_order) {
	super();
	this.user_id = user_id;
	this.order_id = order_id;
	this.name = name;
	this.date_of_order = date_of_order;
}

}
