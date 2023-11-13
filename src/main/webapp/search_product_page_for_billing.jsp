<%@page import="DTO.Product"%>
<%@page import="java.util.ArrayList"%>
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
	.main-container_2 {
	max-width: 1300px;
	width: 100%;
	height: 3cm
	;
	margin: auto;
	margin-top: 0.5rem;
	box-shadow: 0px 0px 5px gray;
	background-color: white;
}
.main-container_3{
max-width: 1300px;
	width: 100%;
	height: 1cm;
	margin: auto;
	margin-top: 0.5rem;
	box-shadow: 0px 0px 5px gray;
	background-color: white;

}
	</style>
	<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.1/mdb.min.css"
	rel="stylesheet" />
</head>
<body>
<%String aaa=(String)request.getAttribute("msg1"); %>
<h1><%=aaa %></h1>
<div class="main-container_2" style="padding:10px;margin-top: 2cm;">
<div class="container">
<form action="search_for_billing_product?billing_id=<%=aaa %>" method="post">
<div class="input-group">
  <div class="form-outline">
    <input id="search-input" type="search" id="form1" class="form-control" style="height: 2.5cm;box-shadow: 0px 0px 5px gray;font-size: 1.5cm;padding: 20px;" name="search" />
    
  </div>
  <button id="search-button" type="submit" class="btn btn-primary" style="width: 5cm; " > <i class="fas fa-search" style="font-size: 30px;"></i></button>
</div>
</div>
</form>
</div>
<%String aa=(String)request.getAttribute("msg1"); %>
<%String a=(String)request.getAttribute("msg"); %>
<%if(a!=null)
	{
	%>
	<h1><center><%=a %></center></h1>
	<%} %>
	
	<%ArrayList<Product> list2=(ArrayList<Product>)request.getAttribute("list2"); %>
	<%if(list2==null){ %>
<%ArrayList<Product> list=(ArrayList<Product>)request.getAttribute("list"); %>
<%if(list!=null)
	{%>

<div class="main-container_3">
<table class="table">	
	<thead class="thead-dark">
		<tr >
			<th scope="col">NAME</td>
			<th scope="col">PRODUCT_ID</th>
			<th scope="col">CATEGORY</th>
			<th scope="col">QUANTITY</th>
			<th scope="col">PRICE</th>
			 <th scope="col">IMAGE</th>
			<!-- <th scope="col">DELETE</th> -->
			<th scope="col">ADD PRODUCT</th> 
		</tr>
		 </thead>
		 <%for(Product lk:list){ %>
	
		 <tr>
		 <form action="add_product_to_bill" method="post">
		 <input type="hidden" value="<%=aa%>" name="bill_id">
		 <input type="hidden" value="<%=lk.getName()%>" name="name">
		 <input type="hidden" value="<%=lk.getPro_id()%>" name="id">
		 <input type="hidden" value="<%=lk.getCategory()%>" name="category">
		 <input type="hidden" value="<%=lk.getQuantity()%>" name="quantity">
		 <input type="hidden" value="<%=lk.getPrice()%>" name="price">
		 
			<td><%=lk.getName()%></td>
			<td><%=lk.getPro_id()%></td>
			<td><%=lk.getCategory()%></td>
			<td><%=lk.getQuantity()%></td>
			<td><%=lk.getPrice()%></td>
		     <td><img alt="image not found" src="./get_image_all_product?pro_id=<%=lk.getPro_id()%>"  height="200px" ,width="200px"></td>
		    <td> <button type="submit" class="btn btn-primary">ADD PRODUCT TO BILL</button></td>
		     <%-- <td><a href="./get_delete_product?user_id=<%=lk.getPro_id()%>" class="btn btn-danger" onclick=" return confirm('are you sure you whant to delete')">DELETE</a></td> --%>
		    <%-- <td><a href="./add_product_to_bill?billing_id=<%=aa%>" class="btn btn-primary">ADD PRODUCT TO BILL</a></td>    --%>
	</form>
	</tr>
	
</div>
<%} %>
<%}else{ %>
<h1><center>NO ITEMS ADDED ON BILL</center></h1>
<%} %>











<%}else{ %>
<%String aaaa=(String)request.getAttribute("msg1"); %>
<h1><%=aaaa %></h1>

<h1><%=aaaa %></h1>
<div class="main-container_3">
<table class="table">	
	<thead class="thead-dark">
		<tr >
			<th scope="col">NAME</td>
			<th scope="col">PRODUCT_ID</th>
			<th scope="col">CATEGORY</th>
			<th scope="col">QUANTITY</th>
			<th scope="col">PRICE</th>
			 <th scope="col">IMAGE</th>
			<!-- <th scope="col">DELETE</th> -->
			
		</tr>
		 </thead>
		 <%for(Product lk:list2){ %>
	
		 <tr>
		 <form action="add_product_to_bill" method="post">
		 <input type="hidden" value="<%=aa%>" name="bill_id">
		 <input type="hidden" value="<%=lk.getName()%>" name="name">
		 <input type="hidden" value="<%=lk.getPro_id()%>" name="id">
		 <input type="hidden" value="<%=lk.getCategory()%>" name="category">
		 <input type="hidden" value="<%=lk.getQuantity()%>" name="quantity">
		 <input type="hidden" value="<%=lk.getPrice()%>" name="price">
		 
			<td><%=lk.getName()%></td>
			<td><%=lk.getPro_id()%></td>
			<td><%=lk.getCategory()%></td>
			<td><%=lk.getQuantity()%></td>
			<td><%=lk.getPrice()%></td>
		     <td><img alt="image not found" src="./get_image_all_product?pro_id=<%=lk.getPro_id()%>"  height="200px" ,width="200px"></td>
		    <td> <button type="submit" class="btn btn-primary">ADD PRODUCT TO BILL</button></td>
		     <%-- <td><a href="./get_delete_product?user_id=<%=lk.getPro_id()%>" class="btn btn-danger" onclick=" return confirm('are you sure you whant to delete')">DELETE</a></td> --%>
		    <%-- <td><a href="./add_product_to_bill?billing_id=<%=aa%>" class="btn btn-primary">ADD PRODUCT TO BILL</a></td>    --%>
	</form>
	</tr>
	
</div>
<%} %>
<%} %>



<script >

const searchButton = document.getElementById('search-button');
const searchInput = document.getElementById('search-input');
searchButton.addEventListener('onclick', () => {
  const inputValue = searchInput.value;
  alert(inputValue);
});
</script>
<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.1/mdb.min.js">
		</script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>


</body>
</html>