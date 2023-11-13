<%@page import="DTO.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<link rel="stylesheet" href="index.css">
</head>
<body>
<%String ok=(String)request.getAttribute("kk"); %>
<% if(ok!=null)
{%>
<center><h1 style="color:black"><%=ok %></h1></center>
<%} %>
  <%Admin aa=(Admin)session.getAttribute("m"); %> 
<%if(aa!=null)
	{%>
<%-- <center>	<h1 style="color:black;">WELCOME ADMIN - <%=aa.getName() %></h1></center> --%>
	<%} %>
<%
response.setHeader("cache-control", "no-store");
response.setHeader("pragma", "no-cache");
response.setHeader("expire", "0");
%>

<header class="header-main" >
		<div class="header-logo">
			<i class="fa-solid fa-bag-shopping icon"></i>
			<h2>BringIt</h2>
		</div>
		<div class="header-nav">
			<nav>
				<li><a href="#home-page">Home</a></li>
				<li><a href="#features-section">Feature</a></li>
				<li><a href="#product-section">Product</a></li>
				<li><a href="#categoris-section" >Catigoris</a></li>
				<li><a href="#review-section">Review</a></li>
				<li><a href="#blogs-section">Blogs</a></li>
				
			</nav>
		</div>

		<div class="header-menu">

			<i class="fa-solid fa-bars-staggered icon1" id="bars-icon"></i> <i
				class="fa-solid fa-magnifying-glass icon1" id="search-icon"></i> <i
				class="fa-solid fa-cart-shopping icon1" id="shopping-icon"></i> <i
				class="fa-solid fa-user icon1" id="logon-icon"></i>
		</div>


		<h2 style="color:black;"><%=aa.getName() %></h2>


		<a href="adminlogourctrl" class="btn btn-danger"
					role="button" aria-pressed="true">LOGOUT</a>
	</header>
















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