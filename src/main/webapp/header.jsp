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





<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
   <!--  <link rel="stylesheet" href="style.css"> -->





<style>
.new-feature {
        background-color: #FFD700; /* Set a background color (e.g., yellow) */
        color: #000; /* Set text color (e.g., black) */
        font-weight: bold; /* Make the text bold */
    }
.img-box {
	/* border: 1px solid red; */
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

/* styles.css */


.modal_1 {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7);
    z-index: 1;
}

.modal-content_1 {
    background-color: #fff;
    margin: 15% auto;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    position: relative;
    width: 50%;
}

.close_1 {
    position: absolute;
    top: 0;
    right: 0;
    padding: 10px;
    cursor: pointer;
}
















 .container_0 {
            display: flex;
        }
        .form-container_0 {
            flex: 1;
            padding: 20px;
        }
        .search-container_0 {
            flex: 1;
            padding: 20px;
        }






.main-navbar{
    border-bottom: 1px solid white;
}
.main-navbar .top-navbar{
    background-color: white;
    padding-top: 10px;
    padding-bottom: 10px;
}
.main-navbar .top-navbar .brand-name{
    color: black;
}
.main-navbar .top-navbar .nav-link{
    color: black;
    font-size: 16px;
    font-weight: 500;
}
.main-navbar .top-navbar .dropdown-menu{
    padding: 0px 0px;
    border-radius: 0px;
}
.main-navbar .top-navbar .dropdown-menu .dropdown-item{
    padding: 8px 16px;
    border-bottom: 1px solid #ccc;
    font-size: 14px;
}
.main-navbar .top-navbar .dropdown-menu .dropdown-item i{
    width: 20px;
    text-align: center;
    color: #2874f0;
    font-size: 14px;
}
.main-navbar .navbar{
    padding: 0px;
    background-color: #ddd;
}
.main-navbar .navbar .nav-item .nav-link{
    padding: 8px 20px;
    color: #000;
    font-size: 15px;
}

@media only screen and (max-width: 600px) {
    .main-navbar .top-navbar .nav-link{
        font-size: 12px;
        padding: 8px 10px;
    }
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










<div class="main-navbar shadow-sm sticky-top" style="background-color: white;">
        <div class="top-navbar">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-2 my-auto d-none d-sm-none d-md-block d-lg-block">
                      <a class="navbar-brand me-2 mb-1 d-flex align-items-center" href="#">
					<img src="./image/logobringit.png" height="30" alt="MDB Logo"
					loading="lazy" style="margin-top: 2px;" />
				</a>
                    </div>
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    <div class="col-md-5 my-auto">
                     <div class="container_10">
            <div class="form-container_10">
                <form role="search" action="searchingpart" method="post">
                            <div class="input-group">
                                <input type="search" placeholder="Search your product" class="form-control"  style="height: 1.5cm;font-size:large; width: 16cm;" name="inputsearch"/>
                                &nbsp;  &nbsp;  &nbsp;  &nbsp;  
                                
                                <button class="btn btn-outline-warning" type="submit" style="width:1.5cm;height: 1.5cm;border-radius: 50%; ">
                                    <i class="fa fa-search" style="font-size: x-large;color: black;"></i> 
                                </button> &nbsp;  &nbsp;  &nbsp;
                                
                              </div>
                         </form>
                                
            </div>
            <div class="search-container_10">
            
            
            
            
            
            
                  
                                 <button id="startButton" class="btn btn-outline-info"  style="width:1.5cm;border-radius: 50%;height: 1.5cm; ">
                                  <span
						class=""
						style="height: auto;border: none;"id="openModal_1">
						<i class="fa-solid fa-microphone" style="font-size: x-large;color: black;"></i></span>
						
						</button>
						
						
                                
            </div>
        </div>
                    </div>
                    
                    
                   <!--  <div class="col-md-5 my-auto">
                    <span>
                        <form role="search">
                            <div class="input-group">
                                <input type="search" placeholder="Search your product" class="form-control"  style="height: 1cm;font-size:large;"/>
                                &nbsp;  &nbsp;  &nbsp;  &nbsp;  
                                
                                <button class="btn btn-danger" type="submit" style="width:1cm; ">
                                    <i class="fa fa-search"></i> 
                                </button> &nbsp;  &nbsp;  &nbsp;
                                
                              </div>
                         </form>
                                
                                
                               
				
                                
                                
                               
                                
                                 <button id="startButton" class="btn btn-danger"  style="width:1cm;border-radius: 50%; ">
                                  <span
						class=""
						style="height: auto;border: none;"id="openModal_1">
						<i class="fa-solid fa-microphone  fa-2xl" style="color: white;"></i></span>
						</button>
                                
                            
                       
                          </span>
						 
                    </div>

 -->                    
                    <div class="col-md-5 my-auto">
                        <ul class="nav justify-content-end">
                            
                            <li class="nav-item">
                            
                                <a class="nav-link" href="get_final_cart?user_id=<%=aa.getUser_id()%>
                                ">
                                    <i class="fa fa-shopping-cart"></i> Cart 
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="your_like_page?user_id=<%=aa.getUser_id()%>">
                                    <i class="fa fa-heart"></i>Wishlist 
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fa fa-user"></i> Setting 
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="profile_by_id?user_id=<%=aa.getUser_id()%>
                                "><i class="fa fa-user"></i> Profile</a></li>
                                <li><a class="dropdown-item" href="view_customer_order?customer_id=<%=aa.getUser_id()%>"><i class="fa fa-list"></i> My Orders</a></li>
                                <li><a class="dropdown-item" href="your_like_page?user_id=<%=aa.getUser_id()%>"><i class="fa fa-heart"></i> My Wishlist</a></li>
                                <li><a class="dropdown-item" href="get_final_cart?user_id=<%=aa.getUser_id()%>"><i class="fa fa-shopping-cart"></i> My Cart</a></li>
                                <li><a class="dropdown-item" href="logoutctrl"><i class="fa fa-sign-out"></i> Logout</a></li>
                               <li><a class="dropdown-item" href="admin_login.jsp
                                "><i class="fa fa-user"></i> Admin Login</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <a class="navbar-brand d-block d-sm-block d-md-none d-lg-none" href="#">
                    
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="home.jsp">Home</a>
                        </li>
                       <!--  <li class="nav-item">
                            <a class="nav-link" href="#">All Categories</a>
                        </li> -->
                        
                        <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fa fa-user"></i> All Categories 
                                </a>
                                
                                
                                
                                
                                
                                
                                
                                <ul class="dropdown-menu"
						aria-labelledby="navbarDropdownMenuLink"
						style="width: 9cm; overflow-y: scroll; height: 14cm;margin-left: 5cm;">

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

					</ul>
                                
                                
                                
                                
                                
                                
                                
                                
                                
                               <!--  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#"><i class="fa fa-user"></i> Profile</a></li>
                                <li><a class="dropdown-item" href="#"><i class="fa fa-list"></i> My Orders</a></li>
                                <li><a class="dropdown-item" href="#"><i class="fa fa-heart"></i> My Wishlist</a></li>
                                <li><a class="dropdown-item" href="#"><i class="fa fa-shopping-cart"></i> My Cart</a></li>
                                <li><a class="dropdown-item" href="#"><i class="fa fa-sign-out"></i> Logout</a></li>
                                </ul> -->
                            </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="offer">Offers</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="combo">Combo(1+1)</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="deal_of_the_day">Deal Of The Week</a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="deal_of_the_week">Deal Of The Day</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view_customer_order?customer_id=<%=aa.getUser_id()%>">Current Orders</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view_deliverd_customer_order?customer_id=<%=aa.getUser_id()%>">Deliverd Orders</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link new-feature" href="view_customer_order_by_image?customer_id=<%=aa.getUser_id()%>">Order By Photo</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="review_page.jsp">Review us</a>
                        </li> 
                        
                        
                    </ul>
                    <ul class="navbar-nav flex-row" style="width: 7.5cm;">
				<li class="nav-item me-3 me-lg-1"><a
					class="nav-link d-sm-flex align-items-sm-center" href="#"> <img
						src="./get_admin_image_on_dashbord?user_id=<%=aa.getUser_id()%>"
						class="rounded-circle" height="50" width="45"
						alt="Black and White Portrait of a Man" loading="lazy" />
						&nbsp;&nbsp;&nbsp;<strong class="d-none d-sm-block ms-1"
						style="font-size: 20px; font-weight: 1000"><%=aa.getName()%></strong>
				</a></li>
                </div>
            </div>
        </nav>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>



































	<!-- Navbar-->
	<!-- <nav class="navbar navbar-expand-lg navbar-light bg-light  "
		style="position: sticky; top: 2px; height: 10vh;
	/*  background-color: #ff5050; */ display: flex; justify-content: space-around; align-items: center; z-index: 2;">
		<div class="container-fluid justify-content-between">
			Left elements
			<div class="d-flex">
				Brand
				<a class="navbar-brand me-2 mb-1 d-flex align-items-center" href="#">
					<img src="./image/logobringit.png" height="30" alt="MDB Logo"
					loading="lazy" style="margin-top: 2px;" />
				</a>

				Search form

				<form class="input-group w-auto my-auto d-none d-sm-flex"
					action="searchingpart" method="post">
					<input autocomplete="off" type="search"
						class="form-control rounded" placeholder="Search here...."
						style="width: 10cm; height: 1.2cm; text-align: center;"
						name="inputsearch" /> &nbsp;&nbsp;&nbsp;
						<span
						class="input-group-text border-2 d-none d-lg-flex"
						style="height: 1.2cm;"><i
						class="fa-solid fa-magnifying-glass fa-xl"></i></i></span>
						&nbsp;&nbsp;&nbsp;
						
				</form>
				 --> <span
						class="input-group-text border-2 d-none d-lg-flex"
						style="height: 1.2cm;"id="openModal_1"></span>
						 <div class="modal_1" id="myModal_1">
        <div class="modal-content_1" style="padding: 1cm;">
            <span class="close_1" id="closeModal_1"><i class="fa-solid fa-xmark fa-2xl"></i></span>
            <form class="input-group w-auto my-auto d-none d-sm-flex"
					action="searchingpart"  method="post">
					<input autocomplete="off" type="search" id="output"
						class="form-control rounded" placeholder="Search here...."
						style="width: 10cm; height: 2cm;font-size:x-large; text-align: center;"
						name="inputsearch" /> &nbsp;&nbsp;&nbsp;
						<button type="submit" style="border: none;background-color: white;" >
						<span
						class="input-group-text border-2 d-none d-lg-flex"
						style="height: 2cm;">
						
						<i	class="fa-solid fa-magnifying-glass fa-xl"></i></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
						</button>
				</form> 
				
				<!-- <button id="startButton" style="margin-left: 14cm;border-radius: 50%;background: red;">
				<span
						class="input-group-text border-2 d-none d-lg-flex"
						style="height: auto;border: none;"id="openModal_1"><i class="fa-solid fa-microphone  fa-2xly"style=" font-size: 80px;"></i></span></button>
					 -->	 
      <!--  </div>
    </div>  -->
			
			</div>
			<!-- Left elements -->

			<!-- Center elements -->
			<ul class="navbar-nav flex-row d-none d-md-flex" style="width: 20cm;">
				<li class="nav-item me-3 me-lg-1 active" ><a class="nav-link"
					href="home.jsp"> <span><i class="fas fa-home fa-lg" ></i></span>
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
					href="your_like_page?user_id=<%=aa.getUser_id()%>"> <span><i class="fa-solid fa-heart fa-xl"
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
				<a href="customer_servise_2.jsp">Hello, <span style="color: red; font-weight: 900; font-size: 130%;"><%=aa.getName()%></span>
				How can I help You ?</a>&nbsp;&nbsp;
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
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light"
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
						style="width: 10cm; height: 1.2cm;font-size:x-large; text-align: center;"
						name="inputsearch" /> &nbsp;&nbsp;&nbsp;
						<span
						class="input-group-text border-2 d-none d-lg-flex"
						style="height: 1.2cm;"><i
						class="fa-solid fa-magnifying-glass fa-xl"></i></i></span>
						&nbsp;&nbsp;&nbsp;
						
				</form>
				
				 <span
						class="input-group-text border-2 d-none d-lg-flex"
						style="height: 1.2cm;"id="openModal_1"><i class="fa-solid fa-microphone  fa-2xl"></i></span>
						 <div class="modal_1" id="myModal_1">
        <div class="modal-content_1" style="padding: 1cm;">
            <span class="close_1" id="closeModal_1"><i class="fa-solid fa-xmark fa-2xl"></i></span>
            <form class="input-group w-auto my-auto d-none d-sm-flex"
					action="searchingpart"  method="post">
					<input autocomplete="off" type="search" id="output"
						class="form-control rounded" placeholder="Search here...."
						style="width: 10cm; height: 2cm;font-size:x-large; text-align: center;"
						name="inputsearch" /> &nbsp;&nbsp;&nbsp;
						<button type="submit" style="border: none;background-color: white;" >
						<span
						class="input-group-text border-2 d-none d-lg-flex"
						style="height: 2cm;">
						
						<i	class="fa-solid fa-magnifying-glass fa-xl"></i></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
						</button>
				</form> 
				
				<button id="startButton" style="margin-left: 14cm;border-radius: 50%;background: red;">
				<span
						class="input-group-text border-2 d-none d-lg-flex"
						style="height: auto;border: none;"id="openModal_1"><i class="fa-solid fa-microphone  fa-2xly"style=" font-size: 80px;"></i></span></button>
						 
        </div>
    </div> 
			
			</div>
			
			
			<!-- Left elements -->

			<!-- Center elements -->
			<ul class="navbar-nav flex-row d-none d-md-flex" style="width: 20cm;">
			
			
			<!-- <li class="nav-item me-3 me-lg-1 active"><a class="nav-link"
					href="home.jsp"> <span><i class="fas fa-home fa-lg" style="font-size: 25px;"></i></span>
				</a></li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
			
			
			
				 <li class="nav-item me-3 me-lg-1 active"><a class="nav-link"
					href="home.jsp"> <span><i class="fas fa-home fa-lg" style="font-size: 25px;"></i></span>
						<span class="badge rounded-pill badge-notification bg-danger">1</span>
				</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
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
					href="login.jsp"> <span><i class="fa-solid fa-heart fa-xl"
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

				<ul class="navbar-nav flex-row"style="margin-left: 10cm;">
					<li class="nav-item me-3 me-lg-1"><a
						class="nav-link d-sm-flex align-items-sm-center" href="#"> <img
							src="https://mdbcdn.b-cdn.net/img/new/avatars/1.webp" 
							class="rounded-circle" height="35"
							alt="Black and White Portrait of a Man" loading="lazy" /> <strong
							class="d-none d-sm-block ms-1" style="font-size: x-large;">User</strong>
					</a></li>
					<%
					}
					%>
					<li class="nav-item dropdown me-3 me-lg-1"><a
						class="nav-link dropdown-toggle hidden-arrow" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-mdb-toggle="dropdown" aria-expanded="false"> <i
							class="fas fa-chevron-circle-down fa-lg" style="font-size: x-large;margin-top: 0.2cm;"></i>
					</a>
						<ul class="dropdown-menu dropdown-menu-end"
							aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="login.jsp" style="font-size: large;">User Login</a>
							</li>
							<li><a class="dropdown-item" href="admin_login.jsp" style="font-size: large;">Admin
									Login</a></li>
							<li><a class="dropdown-item" href="logoutctrl" style="font-size: large;">Logout</a></li>


						</ul></li>
						</div>
				</ul>
				<!-- Right elements -->
		<!-- </div> -->
		
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
			<p><a href="customer_servise_2.jsp" style="text-decoration: none;">Hello,how can I help You</a>&nbsp;&nbsp;</p>
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
	<script>
	// script.js
	document.getElementById('openModal_1').addEventListener('click', function() {
	    document.getElementById('myModal_1').style.display = 'block';
	});

	document.getElementById('closeModal_1').addEventListener('click', function() {
	    document.getElementById('myModal_1').style.display = 'none';
	});

	window.addEventListener('click', function(event) {
	    if (event.target === document.getElementById('myModal_1')) {
	        document.getElementById('myModal_1').style.display = 'none';
	    }
	});

	</script>
 <script>
        // Check if the browser supports the Web Speech API
        if ('SpeechRecognition' in window || 'webkitSpeechRecognition' in window) {
            const recognition = new (window.SpeechRecognition || window.webkitSpeechRecognition)();

            // Define a function to handle recognition results
            recognition.onresult = function (event) {
                const result = event.results[0][0].transcript;
                const output = document.getElementById('output');
                output.value = result;
            };

            const startButton = document.getElementById('startButton');
            startButton.addEventListener('click', function () {
                recognition.start();
                startButton.textContent = 'Listening...';
            });

            recognition.onend = function () {
                startButton.textContent = 'Start Listening';
            };
        } else {
            alert('Speech recognition is not supported in this browser.');
        }
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