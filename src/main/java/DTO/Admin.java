package DTO;

import java.sql.Date;

import javax.servlet.http.Part;

public class Admin {
	private String name;
	private String user_id;
	private String password;
	private String gender;
	private Date age;
	private  Part image ;
	
	public Admin() {
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getAge() {
		return age;
	}

	public void setAge(Date age) {
		this.age = age;
	}

	public Part getImage() {
		return image;
	}

	public void setImage(Part image) {
		this.image = image;
	}

	public Admin(String name, String user_id, String password, String gender, Date age) {
		super();
		this.name = name;
		this.user_id = user_id;
		this.password = password;
		this.gender = gender;
		this.age = age;
	}

	public Admin(String name, String user_id, String password, String gender) {
		super();
		this.name = name;
		this.user_id = user_id;
		this.password = password;
		this.gender = gender;
	}

	public Admin(String name, String user_id, String password, String gender, Date age, Part image) {
		super();
		this.name = name;
		this.user_id = user_id;
		this.password = password;
		this.gender = gender;
		this.age = age;
		this.image = image;
	}
	
}
