<%@page import="DTO.new_customer_add"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DTO.customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<link rel="stylesheet" href="index.css">
<!-- Font Awesome -->
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

<style>
.img-box {
	border: 1px solid red;
	width: 100%;
	/*  height: 100vh; */
	position: relative;
	overflow: hidden;
	z-index: 2;
}

.img-box .img {
	/* border: 1px solid pink; */
	position: fixed;
	right: -115px;
	bottom: 0;
	transition: 2s;
}

.img-box .img.active {
	right: 10px;
	bottom: 20px;
}

.img-box .img .box-img {
	height: 110px;
}

.img-box .sms {
	/* border: 2px solid black; */
	position: fixed;
	right: -400px;
	bottom: 140px;
	width: auto;
	height: auto;
	/* color: red; */
	display: flex;
	justify-content: center;
	padding: 10px;
	/*  font-size:150%; */
	align-items: center;
	background: #E9ECEF;
	box-shadow: 0px 0px 5px gray;
	border-radius: 10px;
	transition: 5s;
}

.img-box .sms.active {
	right: 10px;
}

.img-box .sms p {
	font-size: 13px;
	letter-spacing: 3px;
	padding: 5xp;
	font-weight: 400;
	color: black;
}

.img-box .sms #disableButton {
	/*  border: 1px solid black; */
	/* border-radius: 50%;
        color: red; */
	cursor: pointer;
}
</style>
</head>
<body>

	<%
	String ok = (String) request.getAttribute("kk");
	%>
	<%
	if (ok != null) {
	%>
	<h1 style="color: red"><%=ok%></h1>
	<%
	}
	%>
	<%
	new_customer_add aa = (new_customer_add) session.getAttribute("msg");
	%>
	<%
	if (aa != null) {
	%>

	<%
	response.setHeader("cache-control", "no-store");
	response.setHeader("pragma", "no-cache");
	response.setHeader("expire", "0");
	%>















	<!-- Navbar-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light  "
		style="position: sticky; top: 2px; height: 10vh;
	/*  background-color: #ff5050; */ display: flex; justify-content: space-around; align-items: center; z-index: 2;">
		<div class="container-fluid justify-content-between">
			<!-- Left elements -->
			<div class="d-flex">
				<!-- Brand -->
				<a class="navbar-brand me-2 mb-1 d-flex align-items-center" href="#">
					<img src="./image/logobringit.png" height="30" alt="MDB Logo"
					loading="lazy" style="margin-top: 2px;" />
				</a>

				<!-- Search form -->

				<form class="input-group w-auto my-auto d-none d-sm-flex"
					action="searchingpart" method="post">
					<input autocomplete="off" type="search"
						class="form-control rounded" placeholder="Search here...."
						style="width: 10cm; height: 1.2cm; text-align: center;"
						name="inputsearch" /> &nbsp;&nbsp;&nbsp;<span
						class="input-group-text border-2 d-none d-lg-flex"
						style="height: 1.2cm;"><i
						class="fa-solid fa-magnifying-glass fa-xl"></i></i></span>
				</form>
			</div>
			<!-- Left elements -->

			<!-- Center elements -->
			<ul class="navbar-nav flex-row d-none d-md-flex" style="width: 20cm;">
				<li class="nav-item me-3 me-lg-1 active"><a class="nav-link"
					href="home.jsp"> <span><i class="fas fa-home fa-lg"></i></span>
						<span class="badge rounded-pill badge-notification bg-danger">1</span>
				</a></li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<!-- <li class="nav-item me-3 me-lg-1 active">
        <a class="nav-link" href="#">
          <span><i class="fa fa-list-alt" style="font-size:25px;"></i></i></span>
        </a>
      </li> -->
				<li class="nav-item dropdown me-3 me-lg-1 active"><a
					class="nav-link dropdown-toggle hidden-arrow" href="#"
					id="navbarDropdownMenuLink" role="button"
					data-mdb-toggle="dropdown" aria-expanded="false"> <i
						class="fa fa-list-alt" style="font-size: 25px;"></i>
				</a>

					<ul class="dropdown-menu dropdown-menu-end"
						aria-labelledby="navbarDropdownMenuLink"
						style="width: 9cm; overflow-y: scroll; height: 14cm;">

						<br>
						<li style="text-align: right; margin-right: 10px;"><i
							class="fa-solid fa-xmark fa-xl"></i></li>
						<li><a class="dropdown-item" href="oil&gheecustomser"><img
								src="./images/edible-oil-ghee.jpg" class="rounded-circle"
								height="70" width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>OIL & GHEE</b></a></li>
						<li><a class="dropdown-item" href="sugarjerrycustomer"><b><img
									src="./images/sugar.webp" class="rounded-circle" height="70"
									width="60" alt="Black and White Portrait of a Man"
									loading="lazy" /> &nbsp;&nbsp;SUGAR & JERRY</b></a></li>
						<li><a class="dropdown-item" href="soapdetergentcustomer"><img
								src="./images/soap detergent.jpg" class="rounded-circle"
								height="70" width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>SOAP & DETERGENT</b></a></li>
						<li><a class="dropdown-item" href="spicescustomer"><img
								src="./images/spices1.jpg" class="rounded-circle" height="70"
								width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>SPICES & MASALA</b></a></li>
						<li><a class="dropdown-item" href="attacustomer"><img
								src="./images/atta.webp" class="rounded-circle" height="70"
								width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>ATTA & PARMAL</b></a></li>
						<li><a class="dropdown-item" href="dalcustomer"><img
								src="./images/dal and grains.webp" class="rounded-circle"
								height="70" width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>DAL & GRAINS</b></a></li>
						<li><a class="dropdown-item" href="sevcustomer"><img
								src="./images/sev.webp" class="rounded-circle" height="70"
								width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>SEV & NAMKEEN</b></a></li>
						<li><a class="dropdown-item" href="biscuitcustomer"><img
								src="./images/biscuits.jpg" class="rounded-circle" height="70"
								width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>BISCUITS & CHOCLATE</b></a></li>
						<li><a class="dropdown-item" href="agarbatticustomer"><img
								src="./images/agarbatti.jpg" class="rounded-circle" height="70"
								width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>AGARBATTI & POJJA ITEMS</b></a></li>
						<li><a class="dropdown-item" href="dryfruitcustomer"><img
								src="./images/dryfruit'.jpg" class="rounded-circle" height="70"
								width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>DRY FRUITS</b></a></li>
						<li><a class="dropdown-item " href="dailyesscustomer"><img
								src="./images/daily-product.avif" class="rounded-circle"
								height="70" width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>DAILY ESSENTIALS</b></a></li>
						<li><a class="dropdown-item" href="dairycustomer"><img
								src="./images/dairy.jpg" class="rounded-circle" height="70"
								width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>DAIRY PRODUCTS</b></a></li>

					</ul></li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<li class="nav-item me-3 me-lg-1 active"><a class="nav-link"
					href="#categoris-section"> <span><i class="fa-brands fa-product-hunt"
							style="font-size: 25px;"></i></span>
				</a></li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<li class="nav-item me-3 me-lg-1 active"><a class="nav-link"
					href="get_final_cart?user_id=<%=aa.getUser_id()%>"> <span><i
							class="fa-solid fa-cart-shopping icon1" id="shopping-icon"
							style="font-size: 25px;"></i></span>
				</a></li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<li class="nav-item me-3 me-lg-1 active"><a class="nav-link"
					href="#"> <span><i class="fa-solid fa-comment-dots"
							style="font-size: 25px;"></i></span> <span
						class="badge rounded-pill badge-notification bg-danger">2</span>
				</a></li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<li class="nav-item me-3 me-lg-1 active"><a class="nav-link"
					href="profile_by_id?user_id=<%=aa.getUser_id()%>"> <span><i
							class="fa-solid fa-user" style="font-size: 25px;"></i></span> <span
						class="badge rounded-pill badge-notification bg-danger">2</span>
				</a></li>
			</ul>
			<!-- Center elements -->
			<%
			if (aa != null) {
			%>
			<!-- Right elements -->
			<ul class="navbar-nav flex-row" style="width: 7.5cm;">
				<li class="nav-item me-3 me-lg-1"><a
					class="nav-link d-sm-flex align-items-sm-center" href="#"> <img
						src="./get_admin_image_on_dashbord?user_id=<%=aa.getUser_id()%>"
						class="rounded-circle" height="50" width="45"
						alt="Black and White Portrait of a Man" loading="lazy" />
						&nbsp;&nbsp;&nbsp;<strong class="d-none d-sm-block ms-1"
						style="font-size: 20px; font-weight: 1000"><%=aa.getName()%></strong>
				</a></li>
				<%
				} else {
				%>

				<ul class="navbar-nav flex-row">
					<li class="nav-item me-3 me-lg-1"><a
						class="nav-link d-sm-flex align-items-sm-center" href="#"> <img
							src="./get_admin_image_on_dashbord?user_id=<%=aa.getUser_id()%>"
							class="rounded-circle" height="22"
							alt="Black and White Portrait of a Man" loading="lazy" /> <strong
							class="d-none d-sm-block ms-1"><%=aa.getName()%></strong>
					</a></li>
					<%
					}
					%>
					<li class="nav-item dropdown me-3 me-lg-1"><a
						class="nav-link dropdown-toggle hidden-arrow" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-mdb-toggle="dropdown" aria-expanded="false"> <i
							class="fas fa-chevron-circle-down fa-lg"></i>
					</a>
						<ul class="dropdown-menu dropdown-menu-end"
							aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="login.jsp">User Login</a>
							</li>
							<li><a class="dropdown-item" href="admin_login.jsp">Admin
									Login</a></li>
							<li><a class="dropdown-item" href="logoutctrl">Logout</a></li>

						</ul></li>
				</ul>
				<!-- Right elements -->
		</div>
	</nav>
	<!-- Navbar -->








	<!--############ Header start ############## -->

	<%-- <header class="header-main">
		<div class="header-logo">
			<i class="fa-solid fa-bag-shopping icon"></i>
			<h2>Jain Provision</h2>
		</div>
		<div class="header-nav">
			<nav>
				<li><a href="#home-page">Home</a></li>
				<li><a href="#features-section">Feature</a></li>
				<li><a href="#product-section">Product</a></li>
				<li><a href="#categoris-section">Catigoris</a></li>
				<li><a href="#review-section">Review</a></li>
				<li><a href="#blogs-section">Blogs</a></li>
				<li><a href="#blogs-section">Blogs</a></li>
			</nav>
		</div>

		<div class="header-menu">

			<!-- <i class="fa-solid fa-bars-staggered icon1" id="bars-icon"></i> <i
				class="fa-solid fa-magnifying-glass icon1" id="search-icon"></i> -->


			<%
			if (aa != null) {
			%>
			<a href="profile_by_id?user_id=<%=aa.getUser_id()%>"><i
				class="fa-solid fa-user icon1" id="logon-icon"></i></a> <a
				href="get_final_cart?user_id=<%=aa.getUser_id()%>"><i
				class="fa-solid fa-cart-shopping icon1" id="shopping-icon"></i></a>

			<%
			} else {
			%>

			<i class="fa-solid fa-user icon1" id="logon-icon"></i> <i
				class="fa-solid fa-cart-shopping icon1" id="shopping-icon"></i>

			<%
			}
			%>

		</div>


		<!-- <div class="search-bar" id="search-Bar" style="width: 9cm;"> -->
		<form action="searchingpart" method="post">
			<div class="input-group" style="width: 9cm; margin-top: 0.7cm;">
				<div class="form-outline">
					<input type="search" id="form1" class="form-control"
						name="inputsearch" placeholder="Search here....." /> <label
						class="form-label" for="form1"></label>
				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;

				<button type="submit" class="btn btn-primary"
					style="width: 20%; padding: 8px; background-color: #e9e9e9; border-radius: 10px; border: none; height: 1cm;">
					<i class="fas fa-search" style="color: black; font-weight: 700"></i>
				</button>
			</div>
		</form>




		<%
		if (aa == null) {
		%>
		<div class="login-page">
			<h2 class="log-he">login now</h2>
			<form action="loginctrl" method="post">
				<input type="text" name="user_id" id="" placeholder="Email"
					class="login-in"> <input type="password" name="password"
					id="" placeholder="Password" class="login-in">

				<p class="login-para">
					Don't Have An Account <a href="create_now.jsp" class="login-creat">Create
						Now</a>
				</p>
				<p class="login-para">
					Forgot Password ? <a href="" class="login-creat">Forgot
						Password ? </a>
				</p>

				<input type="submit" value="Login Now" class="Login-btn">
			</form>
		</div>
		<%
		} else {
		%>


		<%
		}
		%>
		<%
		if (aa != null) {
		%>

		<h2><%=aa.getName()%></h2>
		<%
		}
		%>
		<a href="admin_login.jsp" class="btn btn-primary" role="button"
			aria-pressed="true">Admin login</a> <a href="logoutctrl"
			class="btn btn-danger" role="button" aria-pressed="true">LOGOUT</a>
	</header> --%>













	<div class="img-box">

		<div class="sms">
			<p>
				Hello, <span style="color: red; font-weight: 900; font-size: 130%;"><%=aa.getName()%></span>
				How can I help You ?&nbsp;&nbsp;
			</p>
			<p id="disableButton">
				<i class="fa-solid fa-xmark fa-xl"></i>
			</p>
		</div>


		<div class="img">
			<img src="./image/virtual Assistant.png" alt="" class="box-img">
		</div>
	</div>






















	<%
	} else {
	%>




	<%
	response.setHeader("cache-control", "no-store");
	response.setHeader("pragma", "no-cache");
	response.setHeader("expire", "0");
	%>






	<!-- Navbar-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light  "
		style="position: sticky; top: 2px; height: 10vh;
	/*  background-color: #ff5050; */ display: flex; justify-content: space-around; align-items: center; z-index: 2;">
		<div class="container-fluid justify-content-between">
			<!-- Left elements -->
			<div class="d-flex">
				<!-- Brand -->
				<a class="navbar-brand me-2 mb-1 d-flex align-items-center" href="#">
					<img src="./image/logobringit.png" height="30" alt="MDB Logo"
					loading="lazy" style="margin-top: 2px;" />
				</a>

				<!-- Search form -->

				<form class="input-group w-auto my-auto d-none d-sm-flex"
					action="searchingpart" method="post">
					<input autocomplete="off" type="search"
						class="form-control rounded" placeholder="Search here...."
						style="width: 10cm; height: 1.2cm; text-align: center;"
						name="inputsearch" /> &nbsp;&nbsp;&nbsp;<span
						class="input-group-text border-2 d-none d-lg-flex"
						style="height: 1.2cm;"><i
						class="fa-solid fa-magnifying-glass fa-xl"></i></i></span>
				</form>
			</div>
			<!-- Left elements -->

			<!-- Center elements -->
			<ul class="navbar-nav flex-row d-none d-md-flex" style="width: 20cm;">
				<li class="nav-item me-3 me-lg-1 active"><a class="nav-link"
					href="home.jsp"> <span><i class="fas fa-home fa-lg"></i></span>
						<span class="badge rounded-pill badge-notification bg-danger">1</span>
				</a></li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<!-- <li class="nav-item me-3 me-lg-1 active">
        <a class="nav-link" href="#">
          <span><i class="fa fa-list-alt" style="font-size:25px;"></i></i></span>
        </a>
      </li> -->
				<li class="nav-item dropdown me-3 me-lg-1 active"><a
					class="nav-link dropdown-toggle hidden-arrow" href="#"
					id="navbarDropdownMenuLink" role="button"
					data-mdb-toggle="dropdown" aria-expanded="false"> <i
						class="fa fa-list-alt" style="font-size: 25px;"></i>
				</a>

					<ul class="dropdown-menu dropdown-menu-end"
						aria-labelledby="navbarDropdownMenuLink"
						style="width: 9cm; overflow-y: scroll; height: 14cm;">

						<br>
						<li style="text-align: right; margin-right: 10px;"><i
							class="fa-solid fa-xmark fa-xl"></i></li>
						<li><a class="dropdown-item" href="oil&gheecustomser"><img
								src="./images/edible-oil-ghee.jpg" class="rounded-circle"
								height="70" width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>OIL & GHEE</b></a></li>
						<li><a class="dropdown-item" href="sugarjerrycustomer"><b><img
									src="./images/sugar.webp" class="rounded-circle" height="70"
									width="60" alt="Black and White Portrait of a Man"
									loading="lazy" /> &nbsp;&nbsp;SUGAR & JERRY</b></a></li>
						<li><a class="dropdown-item" href="soapdetergentcustomer"><img
								src="./images/soap detergent.jpg" class="rounded-circle"
								height="70" width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>SOAP & DETERGENT</b></a></li>
						<li><a class="dropdown-item" href="spicescustomer"><img
								src="./images/spices1.jpg" class="rounded-circle" height="70"
								width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>SPICES & MASALA</b></a></li>
						<li><a class="dropdown-item" href="attacustomer"><img
								src="./images/atta.webp" class="rounded-circle" height="70"
								width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>ATTA & PARMAL</b></a></li>
						<li><a class="dropdown-item" href="dalcustomer"><img
								src="./images/dal and grains.webp" class="rounded-circle"
								height="70" width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>DAL & GRAINS</b></a></li>
						<li><a class="dropdown-item" href="sevcustomer"><img
								src="./images/sev.webp" class="rounded-circle" height="70"
								width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>SEV & NAMKEEN</b></a></li>
						<li><a class="dropdown-item" href="biscuitcustomer"><img
								src="./images/biscuits.jpg" class="rounded-circle" height="70"
								width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>BISCUITS & CHOCLATE</b></a></li>
						<li><a class="dropdown-item" href="agarbatticustomer"><img
								src="./images/agarbatti.jpg" class="rounded-circle" height="70"
								width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>AGARBATTI & POJJA ITEMS</b></a></li>
						<li><a class="dropdown-item" href="dryfruitcustomer"><img
								src="./images/dryfruit'.jpg" class="rounded-circle" height="70"
								width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>DRY FRUITS</b></a></li>
						<li><a class="dropdown-item " href="dailyesscustomer"><img
								src="./images/daily-product.avif" class="rounded-circle"
								height="70" width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>DAILY ESSENTIALS</b></a></li>
						<li><a class="dropdown-item" href="dairycustomer"><img
								src="./images/dairy.jpg" class="rounded-circle" height="70"
								width="60" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>DAIRY PRODUCTS</b></a></li>

					</ul></li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<li class="nav-item me-3 me-lg-1 active"><a class="nav-link"
					href="#categoris-section"> <span><i class="fa-brands fa-product-hunt"
							style="font-size: 25px;"></i></span>
				</a></li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<li class="nav-item me-3 me-lg-1 active"><a class="nav-link"
					href="cart_emty.jsp"> <span><i
							class="fa-solid fa-cart-shopping icon1" id="shopping-icon"
							style="font-size: 25px;"></i></span>
				</a></li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<li class="nav-item me-3 me-lg-1 active"><a class="nav-link"
					href="#"> <span><i class="fa-solid fa-comment-dots" 
							style="font-size: 25px;"></i></span> <span
						class="badge rounded-pill badge-notification bg-danger">2</span>
				</a></li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<li class="nav-item me-3 me-lg-1 active"><a class="nav-link"
					href="login.jsp"> <span><i class="fa-solid fa-user"
							style="font-size: 25px;"></i></span> <span
						class="badge rounded-pill badge-notification bg-danger">2</span>
				</a></li>
			</ul>
			<!-- Center elements -->
			<%
			if (aa != null) {
			%>
			<!-- Right elements -->
			<ul class="navbar-nav flex-row">
				<li class="nav-item me-3 me-lg-1"><a
					class="nav-link d-sm-flex align-items-sm-center" href="#"> <img
						src="./get_admin_image_on_dashbord?user_id=<%=aa.getUser_id()%>"
						class="rounded-circle" height="22"
						alt="Black and White Portrait of a Man" loading="lazy" /> <strong
						class="d-none d-sm-block ms-1"></strong>
				</a></li>
				<%
				} else {
				%>

				<ul class="navbar-nav flex-row">
					<li class="nav-item me-3 me-lg-1"><a
						class="nav-link d-sm-flex align-items-sm-center" href="#"> <img
							src="https://mdbcdn.b-cdn.net/img/new/avatars/1.webp"
							class="rounded-circle" height="22"
							alt="Black and White Portrait of a Man" loading="lazy" /> <strong
							class="d-none d-sm-block ms-1">User</strong>
					</a></li>
					<%
					}
					%>
					<li class="nav-item dropdown me-3 me-lg-1"><a
						class="nav-link dropdown-toggle hidden-arrow" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-mdb-toggle="dropdown" aria-expanded="false"> <i
							class="fas fa-chevron-circle-down fa-lg"></i>
					</a>
						<ul class="dropdown-menu dropdown-menu-end"
							aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="login.jsp">User Login</a>
							</li>
							<li><a class="dropdown-item" href="admin_login.jsp">Admin
									Login</a></li>
							<li><a class="dropdown-item" href="logoutctrl">Logout</a></li>


						</ul></li>
				</ul>
				<!-- Right elements -->
		</div>
	</nav>
	<!-- Navbar -->















	<!--############ Header start ############## -->

	<%-- <header class="header-main">
		<div class="header-logo">
			<i class="fa-solid fa-bag-shopping icon"></i>
			<h2>Jain Provision</h2>
		</div>
		<div class="header-nav">
			<nav>
				<li><a href="#home-page">Home</a></li>
				<li><a href="#features-section">Feature</a></li>
				<li><a href="#product-section">Product</a></li>
				<li><a href="#categoris-section">Catigoris</a></li>
				<li><a href="#review-section">Review</a></li>
				<li><a href="#blogs-section">Blogs</a></li>
				<li><a href="#blogs-section">Blogs</a></li>
			</nav>
		</div>

		<div class="header-menu">

			<i class="fa-solid fa-bars-staggered icon1" id="bars-icon"></i> <i
				class="fa-solid fa-magnifying-glass icon1" id="search-icon"></i>


			<%
			if (aa != null) {
			%>
			<a href="profile_by_id?user_id=<%=aa.getUser_id()%>"><i
				class="fa-solid fa-user icon1" id="logon-icon"></i></a> <a
				href="get_final_cart?user_id=<%=aa.getUser_id()%>"><i
				class="fa-solid fa-cart-shopping icon1" id="shopping-icon"></i></a>

			<%
			} else {
			%>

			<i class="fa-solid fa-user icon1" id="logon-icon"></i> <i
				class="fa-solid fa-cart-shopping icon1" id="shopping-icon"></i>

			<%
			}
			%>

		</div>


		<!-- <!-- <div class="search-bar" id="search-Bar" style="width: 9cm;"> -->
		<form action="searchingpart" method="post">
			<div class="input-group" style="width: 9cm; margin-top: 0.7cm;">
				<div class="form-outline">
					<input type="search" id="form1" class="form-control"
						name="inputsearch" placeholder="Search here....." /> <label
						class="form-label" for="form1"></label>
				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;

				<button type="submit" class="btn btn-primary"
					style="width: 20%; padding: 8px; background-color: #e9e9e9; border-radius: 10px; border: none; height: 1cm;">
					<i class="fas fa-search" style="color: black; font-weight: 700"></i>
				</button>
			</div>
		</form>
		</div>



		<%
		if (aa == null) {
		%>
		<div class="login-page">
			<h2 class="log-he">login now</h2>
			<form action="loginctrl" method="post">
				<input type="text" name="user_id" id="" placeholder="Email"
					class="login-in"> <input type="password" name="password"
					id="" placeholder="Password" class="login-in">

				<p class="login-para">
					Don't Have An Account <a href="create_now.jsp" class="login-creat">Create
						Now</a>
				</p>
				<p class="login-para">
					Forgot Password ? <a href="" class="login-creat">Forgot
						Password ? </a>
				</p>

				<input type="submit" value="Login Now" class="Login-btn">
			</form>
		</div>
		<%
		} else {
		%>


		<%
		}
		%>
		<%
		if (aa != null) {
		%>

		<h2><%=aa.getName()%></h2>
		<%
		}
		%>
		<a href="admin_login.jsp" class="btn btn-primary" role="button"
			aria-pressed="true">Admin login</a> <a href="logoutctrl"
			class="btn btn-danger" role="button" aria-pressed="true">LOGOUT</a>
	</header>
 --%>
	<div class="img-box">

		<div class="sms">
			<p><a href="customer_servise.jsp" style="text-decoration: none;">Hello,how can I help You</a>&nbsp;&nbsp;</p>
			<p id="disableButton">
				<i class="fa-solid fa-xmark fa-lg"></i>
			</p>
		</div>


		<div class="img">
			<img src="./image/virtual Assistant.png" alt="" class="box-img">
		</div>
	</div>

	<%
	}
	%>

	<script>
		document.addEventListener("mousemove", handleMousemove);

		let img = document.querySelector(".img");
		let sms = document.querySelector(".sms");
		let disableButton = document.getElementById("disableButton");
		let isMousemoveEnabled = true;

		function handleMousemove(event) {
			if (isMousemoveEnabled) {
				img.classList.add("active");
				sms.classList.add("active");
			}
		}

		document.addEventListener("mousemove", handleMousemove);

		disableButton.addEventListener("click", function() {
			if (isMousemoveEnabled) {
				document.removeEventListener("mousemove", handleMousemove);
				img.classList.remove("active");
				sms.classList.remove("active");
				isMousemoveEnabled = false;
				console.log("Mousemove disabled.");
			}
		});
	</script>

	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.1/mdb.min.js"></script>

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