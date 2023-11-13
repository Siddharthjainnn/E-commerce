<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<marquee>
		<h1
			style="background: linear-gradient(to top, rgb(201, 240, 235), rgb(78, 77, 77), rgb(6, 240, 208)); -webkit-background-clip: text; -webkit-text-fill-color: transparent">hello
			to every one</h1>
	</marquee>
	<div
		style="box-shadow:0px 0px 5px grey; width: 40%; height: 2cm; margin: auto;">
		<h1 style="text-align: center;">BringIt Billing desktop</h1>
	</div>

	<div class="container"
		style="box-shadow:0px 0px 5px grey; width: 40%; height: auto; margin: auto; margin-top: 2rem;padding: 2rem;" >



<form action="dekstopbilling" method="post">

  <div class="form-group">
    <label for="exampleInputEmail1">Enter Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Name" style="border-radius: 8px ;" name="name">
  </div>
  
  <%
        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String digits = "0123456789";
        
        String randomUserId = "";
        
        for (int i = 0; i < 3; i++) {
            randomUserId += alphabet.charAt((int) (Math.random() * alphabet.length()));
        }
        
        for (int i = 0; i < 4; i++) {
            randomUserId += digits.charAt((int) (Math.random() * digits.length()));
        }
    %>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Billing Id</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="billing id" value="<%= randomUserId %>" readonly style="border-radius: 8px ;" name="billingid">
  </div>
  
   <div class="form-group">
    <label for="exampleInputEmail1">Email id</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" style="border-radius: 8px ;" name="email_id">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Mobile No</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="enter mobile no" style="border-radius: 8px ;" name="mobile_no">
  </div>
 
  <button type="submit" class="btn btn-primary" style="width:5cm;margin-left: 5.5cm;">Submit</button>
</form>

	</div>

</body>
</html>