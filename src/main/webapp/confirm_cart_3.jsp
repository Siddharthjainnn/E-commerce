<%@page import="DTO.Product"%>
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
<style>
.photo_div {
	float: left;
	border: 2px dotted;
	
	margin-left: 3cm;
	padding: 20px; 

	height: 16cm;
	
}
.photo_div img{
margin-top: 3cm;
}

.div_form{
float: right;
width: 15cm;
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<%
	String dd = (String) request.getAttribute("msg");
	%>
	<%
	if (dd != null) {
	%>
	<center>
		<h1 style="color: green;"><%=dd%></h1>
	</center>
	<%
	}
	%>


	<%
	ArrayList<Product> list = (ArrayList<Product>) request.getAttribute("LIST");
	%>

	<%
	for (Product mm : list) {
	%>

	<div class="container" >
		<div >
			<hr>
			<center><U><h1 style="color: red; ">ADD TO CART</h1></U></center>
			<hr>

			<div class="photo_div">
			
			<center><u><h1 style="margin-top: 1cm;color: blue;">PRODUCT IMAGE</h1></u></center>
				<img src="./get_image_admin_spices?pro_id=<%=mm.getPro_id()%>"
					class="categ-img" alt="" height="250px" width="300px">
				
			</div>

			<div class="div_form">
				<div class="jumbotron jumbotron-fluid">
					<div class="container">

						<form action="add_to_cart_3" method="post"
							enctype="multipart/form-data">
							<div class="form-group">
								<label for="exampleInputEmail1">CUSTOMER NO</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter name"
									name="cust_id" value="<%=aa.getUser_id()%>" readonly>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">NAME OF PRODUCT</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter name"
									name="name" value="<%=mm.getName()%>" readonly>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">PRODUCT ID</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									placeholder=" Enter user id" name="pro_id"
									value="<%=mm.getPro_id()%>" readonly>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">CATEGORY</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter password"
									name="category" value="<%=mm.getCategory()%>" readonly>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">QUANTITY</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									placeholder=" Enter gender" name="quantity"
									value="<%=mm.getQuantity()%>" >
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">PRICE</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									placeholder=" Enter gender" name="price"
									value="<%=mm.getPrice()%>" readonly>
							</div>
							
							


							<center><button type="submit" class="btn btn-primary">ADD
								PRODUCT</button></center>

						</form>
					</div>
				</div>


			</div>



			<%
			}
			%>


		</div>
		
</body>
</html>