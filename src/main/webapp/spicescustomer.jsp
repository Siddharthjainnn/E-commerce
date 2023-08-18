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

	<section class="product-section" id="product-section">

		<div class="product-page">
			<h2 class="product-he">
				Our <span class="product-sp"> Spices & Masala Products</span>
			</h2>
			<br>
			<hr style="width: 29cm">
			<div class="container">
				<div class="row">

					<%
					for (Product mm : list) {
					%>


					<div class="col-4">
						<div class="categori-pro">
							<div class="box3">
								<img src="./get_image_admin_spices?pro_id=<%=mm.getPro_id()%>"
									class="categ-img" alt="" >
								<div>
									<h3 class="categ-he"  ><span style="color: red;">PRO ID : <%=mm.getPro_id()%></span></h3>
									<h1 ><span style="color:black;"><%=mm.getName()%></span></h1>
									<h5 ><span style="color:olive;"><%=mm.getCategory()%></span></h5>
									<h3 ><span style="color:red;">RS.<%=mm.getPrice()%>/-</span></h3>
								</div>
								
								<a href="./add_to_cart_3?pro_id=<%=mm.getPro_id()%>"><input type="button"
									value="Add To Cart" class="categ-btn"></a>
							</div>
</div>
					</div>
							<%
							}
							%>
				</div>
</body>
</html>