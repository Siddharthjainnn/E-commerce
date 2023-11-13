<%@page import="DTO.new_customer_add"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.apache.catalina.filters.ExpiresFilter.XServletOutputStream"%>
<%@page import="DTO.customer"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="profile.css">
<style></style>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
	<style>
	.button-75 {
  align-items: center;
  background-image: linear-gradient(135deg, #f34079 40%, #fc894d);
  border: 0;
  border-radius: 10px;
  box-sizing: border-box;
  color: #fff;
  cursor: pointer;
  display: flex;
  flex-direction: column;
  font-family: "Codec cold",sans-serif;
  font-size: 16px;
  font-weight: 700;
  height: 54px;
  justify-content: center;
  letter-spacing: .4px;
  line-height: 1;
  max-width: 100%;
  padding-left: 20px;
  padding-right: 20px;
  padding-top: 3px;
  text-decoration: none;
  text-transform: uppercase;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-75:active {
  outline: 0;
}

.button-75:hover {
  outline: 0;
}

.button-75 span {
  transition: all 200ms;
}

.button-75:hover span {
  transform: scale(.9);
  opacity: .75;
}

@media screen and (max-width: 991px) {
  .button-75 {
    font-size: 15px;
    height: 50px;
  }

  .button-75 span {
    line-height: 50px;
  }
}
	</style>
</head>
<body>
<%@include file="header.jsp" %>

<%
	new_customer_add list = (new_customer_add) request.getAttribute("LIST");

	%>
	

	
	
	<%-- hii



	<%kk.getImage(); %>
	<%=list.getName()%>
	<%=list.getGender()%>
	<%=list.getPassword()%>
	<%=list.getUser_id()%>
	<%=list.getImage()%>
	<img alt="image not fond"
		src="get_profile_image?user_id=<%=list.getUser_id()%>">
 --%>
	
	
	<section style="background-color: #eee;">
  <div style="margin-left: 6cm;margin-right: 6cm;">
    <div class="row">
      <div class="col">
        <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
          <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">User</a></li>
            <li class="breadcrumb-item active" aria-current="page">User Profile</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="row">
      <div class="col-lg-4">
        <div class="card mb-4">
          <div class="card-body text-center">
            <img src="get_profile_image?user_id=<%=list.getUser_id()%>" alt="avatar"
              class="rounded-circle img-fluid" style="width: 150px;">
            <h5 class="my-3"><%=list.getName()%></h5>
            <p class="text-muted mb-1">Bringit</p>
            <p class="text-muted mb-4">Golden Customer</p>
            <div class="d-flex justify-content-center mb-2">
              <a href="edit_by_customer?user_id=<%=list.getUser_id()%>"type="button" class="btn btn-primary flex-grow-1">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a href="logoutctrl" type="button" class="btn btn-danger flex-grow-1">logout</a>
            </div>
          </div>
        </div>
        <div class="card mb-4 mb-lg-0">
          <div class="card-body p-0">
            <ul class="list-group list-group-flush rounded-3">
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <i class="fas fa-globe fa-lg text-warning"></i>
                <p class="mb-0"><%=list.getEmail_id() %></p>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
               <!--  <i class="fab fa-github fa-lg" style="color: #333333;"></i> -->
               <i class="fa-solid fa-cake-candles"></i>
                <p class="mb-0"><%=list.getDob() %></p>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <!-- <i class="fab fa-twitter fa-lg" style="color: #55acee;"></i> -->
                <i class="fa-solid fa-user"></i>
                <p class="mb-0"><%=list.getGender() %></p>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <!-- <i class="fab fa-instagram fa-lg" style="color: #ac2bac;"></i> -->
                <i class="fa-solid fa-city"></i>
                <p class="mb-0"><%=list.getCity() %></p>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <!-- <i class="fab fa-facebook-f fa-lg" style="color: #3b5998;"></i> -->
                <i class="fa-solid fa-building-user"></i>
                <p class="mb-0"><%=list.getZip() %></p>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <!-- <i class="fab fa-facebook-f fa-lg" style="color: #3b5998;"></i> -->
                <i class="fa-solid fa-user-doctor"></i>
                <p class="mb-0"><%=list.getOccupation() %></p>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <!-- <i class="fab fa-facebook-f fa-lg" style="color: #3b5998;"></i> -->
                <i class="fa-solid fa-note-sticky"></i>
                <p class="mb-0"><%=list.getNotes() %></p>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="card mb-4">
          <div class="card-body">
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Full Name</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%=list.getName()%></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Email</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%=list.getEmail_id()%></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Phone</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%=list.getPhone() %></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Gender</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%=list.getGender()%></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Address</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%=list.getAdress() %></p>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">MY ORDER </span> Status
                </p>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="view_customer_order?customer_id=<%=list.getUser_id()%>" class="btn btn-warning flex-grow-1" >Current orders</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <a href="view_deliverd_customer_order?customer_id=<%=list.getUser_id()%>" class="btn btn-primary flex-grow-1">Deliverd Order</a>
                 
               <hr>

<a href="view_customer_order_by_image?customer_id=<%=list.getUser_id()%>" style="text-decoration: none;" class="button-75" role="button"><span class="text">Orders By Image</span></a>

              </div>
            </div>
          </div>
          
          
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">Change</span> Password
                </p>
                
                <div class="card login-form">
	<div class="card-body">
		<h3 class="card-title text-center">Change password</h3>
		<form onsubmit ="return verifyPassword()"> 
		
		<div class="form-group">
					<label for="exampleInputEmail1">Enter your old password </label>
					<!-- <input id="password_check" type="text" class="form-control form-control-sm" placeholder="Enter your old password" ><br>
 -->				
 <input type = "password" id = "pswd" value = ""  placeholder="Enter your old password">   
<span id = "message" style="color:red"> </span> <br><br>       
				    <input type = "submit" class="btn btn-success" value = "Submit">  
				      <span role="alert" style="color: red;font-weight: 500" id="nameError" aria-hidden="true">
    Please enter old password *****
  </span>
  
				      
				</div>
				</form>
				
				
		<div class="card-text">
			<form action="otp_generator_for_update_password?user_id=<%=list.getUser_id()%>" method="post" >
				<div class="form-group">
					<label for="exampleInputEmail1">Enter your email address and we will send you a link to reset your password.</label>
					<input type="email" class="form-control form-control-sm" value="<%=aa.getEmail_id() %>" placeholder="Enter your email address" name="email_id" readonly="readonly" style="font-size: 1000;font-size: 0.5cm;">
				</div>

				<button type="submit" class="btn btn-success btn-block">Send password reset email</button>
			</form>
		</div>
	</div>
</div>
               
      </div>
    </div>
  </div>
</section>

<script>



function verifyPassword() {  
	  var pw = document.getElementById("pswd").value;  
	  //check empty password field  
	  if(pw == "") {  
	     document.getElementById("message").innerHTML = "**Fill the password please!";  
	     return false;  
	  }  
	   
	 //minimum password length validation  
	  if(pw !=<%=list.getPassword()%> ) {  
	     document.getElementById("message").innerHTML = "**Password is not correecet please correct it";  
	     return false;  
	  }  
	  
	//maximum length of password validation  
	else if(pw==<%=list.getPassword()%>) {  
	     document.getElementById("message").innerHTML = "**Password correct";  
	     return false;  
	  } 
	}  




/* const submit = document.getElementById("submit");

submit.addEventListener("click", validate); */

<%-- function validate(e) {
  e.preventDefault();

  const firstNameField = document.getElementById("password_check");
  let valid = true;

  if (firstNameField.value==<%=list.getPassword()%>) {
    const nameError = document.getElementById("nameError");
    nameError.classList.add("visible");
    firstNameField.classList.add("invalid");
    nameError.setAttribute("aria-hidden", false);
    nameError.setAttribute("aria-invalid", true);
  }
  return valid;
}
 --%>
</script>
</body>
</html>