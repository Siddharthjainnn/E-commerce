package DTO;

public class billing {
private String name;
private String billing_id;
private String email_id;

private String mobile_no;


public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getBilling_id() {
	return billing_id;
}
public void setBilling_id(String billing_id) {
	this.billing_id = billing_id;
}
public String getEmail_id() {
	return email_id;
}
public void setEmail_id(String email_id) {
	this.email_id = email_id;
}
public String getMobile_no() {
	return mobile_no;
}
public void setMobile_no(String mobile_no) {
	this.mobile_no = mobile_no;
}
public billing() {
	// TODO Auto-generated constructor stub
}
public billing(String name, String billing_id, String email_id, String mobile_no) {
	super();
	this.name = name;
	this.billing_id = billing_id;
	this.email_id = email_id;
	this.mobile_no = mobile_no;
}
}
