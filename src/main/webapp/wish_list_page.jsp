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
	
	body{
    background:#eee;
    margin-top:40px;
}
.widget-author {
  margin-bottom: 58px;
}
.author-card {
  position: relative;
  padding-bottom: 48px;
  background-color: #fff;
  box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .09);
}
.author-card .author-card-cover {
  position: relative;
  width: 100%;
  height: 100px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.author-card .author-card-cover::after {
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  content: '';
  opacity: 0.5;
}
.author-card .author-card-cover > .btn {
  position: absolute;
  top: 12px;
  right: 12px;
  padding: 0 10px;
}
.author-card .author-card-profile {
  display: table;
  position: relative;
  margin-top: -22px;
  padding-right: 15px;
  padding-bottom: 16px;
  padding-left: 20px;
  z-index: 5;
}
.author-card .author-card-profile .author-card-avatar, .author-card .author-card-profile .author-card-details {
  display: table-cell;
  vertical-align: middle;
}
.author-card .author-card-profile .author-card-avatar {
  width: 85px;
  border-radius: 50%;
  box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
  overflow: hidden;
}
.author-card .author-card-profile .author-card-avatar > img {
  display: block;
  width: 100%;
}
.author-card .author-card-profile .author-card-details {
  padding-top: 20px;
  padding-left: 15px;
}
.author-card .author-card-profile .author-card-name {
  margin-bottom: 2px;
  font-size: 14px;
  font-weight: bold;
}
.author-card .author-card-profile .author-card-position {
  display: block;
  color: #8c8c8c;
  font-size: 12px;
  font-weight: 600;
}
.author-card .author-card-info {
  margin-bottom: 0;
  padding: 0 25px;
  font-size: 13px;
}
.author-card .author-card-social-bar-wrap {
  position: absolute;
  bottom: -18px;
  left: 0;
  width: 100%;
}
.author-card .author-card-social-bar-wrap .author-card-social-bar {
  display: table;
  margin: auto;
  background-color: #fff;
  box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .11);
}
.btn-style-1.btn-white {
    background-color: #fff;
}
.list-group-item i {
    display: inline-block;
    margin-top: -1px;
    margin-right: 8px;
    font-size: 1.2em;
    vertical-align: middle;
}
.mr-1, .mx-1 {
    margin-right: .25rem !important;
}

.list-group-item.active:not(.disabled) {
    border-color: #e7e7e7;
    background: #fff;
    color: #ac32e4;
    cursor: default;
    pointer-events: none;
}
.list-group-flush:last-child .list-group-item:last-child {
    border-bottom: 0;
}

.list-group-flush .list-group-item {
    border-right: 0 !important;
    border-left: 0 !important;
}

.list-group-flush .list-group-item {
    border-right: 0;
    border-left: 0;
    border-radius: 0;
}
.list-group-item.active {
    z-index: 2;
    color: #fff;
    background-color: #007bff;
    border-color: #007bff;
}
.list-group-item:last-child {
    margin-bottom: 0;
    border-bottom-right-radius: .25rem;
    border-bottom-left-radius: .25rem;
}
a.list-group-item, .list-group-item-action {
    color: #404040;
    font-weight: 600;
}
.list-group-item {
    padding-top: 16px;
    padding-bottom: 16px;
    -webkit-transition: all .3s;
    transition: all .3s;
    border: 1px solid #e7e7e7 !important;
    border-radius: 0 !important;
    color: #404040;
    font-size: 12px;
    font-weight: 600;
    letter-spacing: .08em;
    text-transform: uppercase;
    text-decoration: none;
}
.list-group-item {
    position: relative;
    display: block;
    padding: .75rem 1.25rem;
    margin-bottom: -1px;
    background-color: #fff;
    border: 1px solid rgba(0,0,0,0.125);
}

.product-card {
  position: relative;
  max-width: 380px;
  padding-top: 12px;
  padding-bottom: 43px;
  transition: all 0.35s;
  border: 1px solid #e7e7e7;
}
.product-card .product-head {
  padding: 0 15px 8px;
}
.product-card .product-head .badge {
  margin: 0;
}
.product-card .product-thumb {
  display: block;
}
.product-card .product-thumb > img {
  display: block;
  width: 100%;
}
.product-card .product-card-body {
  padding: 0 20px;
  text-align: center;
}
.product-card .product-meta {
  display: block;
  padding: 12px 0 2px;
  transition: color 0.25s;
  color: rgba(140, 140, 140, .75);
  font-size: 12px;
  font-weight: 600;
  text-decoration: none;
}
.product-card .product-meta:hover {
  color: #8c8c8c;
}
.product-card .product-title {
  margin-bottom: 8px;
  font-size: 16px;
  font-weight: bold;
}
.product-card .product-title > a {
  transition: color 0.3s;
  color: #343b43;
  text-decoration: none;
}
.product-card .product-title > a:hover {
  color: #ac32e4;
}
.product-card .product-price {
  display: block;
  color: #404040;
  font-family: 'Montserrat', sans-serif;
  font-weight: normal;
}
.product-card .product-price > del {
  margin-right: 6px;
  color: rgba(140, 140, 140, .75);
}
.product-card .product-buttons-wrap {
  position: absolute;
  bottom: -20px;
  left: 0;
  width: 100%;
}
.product-card .product-buttons {
  display: table;
  margin: auto;
  background-color: #fff;
  box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .11);
}
.product-card .product-button {
  display: table-cell;
  position: relative;
  width: 50px;
  height: 40px;
  border-right: 1px solid rgba(231, 231, 231, .6);
}
.product-card .product-button:last-child {
  border-right: 0;
}
.product-card .product-button > a {
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  transition: all 0.3s;
  color: #404040;
  font-size: 16px;
  line-height: 40px;
  text-align: center;
  text-decoration: none;
}
.product-card .product-button > a:hover {
  background-color: #ac32e4;
  color: #fff;
}
.product-card:hover {
  border-color: transparent;
  box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .09);
}
.product-category-card {
  display: block;
  max-width: 400px;
  text-align: center;
  text-decoration: none !important;
}
.product-category-card .product-category-card-thumb {
  display: table;
  width: 100%;
  box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .09);
}
.product-category-card .product-category-card-body {
  padding: 20px;
  padding-bottom: 28px;
}
.product-category-card .main-img, .product-category-card .thumblist {
  display: table-cell;
  padding: 15px;
  vertical-align: middle;
}
.product-category-card .main-img > img, .product-category-card .thumblist > img {
  display: block;
  width: 100%;
}
.product-category-card .main-img {
  width: 65%;
  padding-right: 10px;
}
.product-category-card .thumblist {
  width: 35%;
  padding-left: 10px;
}
.product-category-card .thumblist > img:first-child {
  margin-bottom: 6px;
}
.product-category-card .product-category-card-meta {
  display: block;
  padding-bottom: 9px;
  color: rgba(140, 140, 140, .75);
  font-size: 11px;
  font-weight: 600;
}
.product-category-card .product-category-card-title {
  margin-bottom: 0;
  transition: color 0.3s;
  color: #343b43;
  font-size: 18px;
}
.product-category-card:hover .product-category-card-title {
  color: #ac32e4;
}
.product-gallery {
  position: relative;
  padding: 45px 15px 0;
  box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .09);
}
.product-gallery .gallery-item::before {
  display: none !important;
}
.product-gallery .gallery-item::after {
  box-shadow: 0 8px 24px 0 rgba(0, 0, 0, .26);
}
.product-gallery .video-player-button, .product-gallery .badge {
  position: absolute;
  z-index: 5;
}
.product-gallery .badge {
  top: 15px;
  left: 15px;
  margin-left: 0;
}
.product-gallery .video-player-button {
  top: 0;
  right: 15px;
  width: 60px;
  height: 60px;
  line-height: 60px;
}
.product-gallery .product-thumbnails {
  display: block;
  margin: 0 -15px;
  padding: 12px;
  border-top: 1px solid #e7e7e7;
  list-style: none;
  text-align: center;
}
.product-gallery .product-thumbnails > li {
  display: inline-block;
  margin: 10px 3px;
}
.product-gallery .product-thumbnails > li > a {
  display: block;
  width: 94px;
  transition: all 0.25s;
  border: 1px solid transparent;
  background-color: #fff;
  opacity: 0.75;
}
.product-gallery .product-thumbnails > li:hover > a {
  opacity: 1;
}
.product-gallery .product-thumbnails > li.active > a {
  border-color: #ac32e4;
  cursor: default;
  opacity: 1;
}
.product-meta {
  padding-bottom: 10px;
}
.product-meta > a, .product-meta > i {
  display: inline-block;
  margin-right: 5px;
  color: rgba(140, 140, 140, .75);
  vertical-align: middle;
}
.product-meta > i {
  margin-top: 2px;
}
.product-meta > a {
  transition: color 0.25s;
  font-size: 13px;
  font-weight: 600;
  text-decoration: none;
}
.product-meta > a:hover {
  color: #8c8c8c;
}
.cart-item {
  position: relative;
  margin-bottom: 30px;
  padding: 0 50px 0 10px;
  background-color: #fff;
  box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .09);
}
.cart-item .cart-item-label {
  display: block;
  margin-bottom: 15px;
  color: #8c8c8c;
  font-size: 13px;
  font-weight: 600;
  text-transform: uppercase;
}
.cart-item .cart-item-product {
  display: table;
  width: 420px;
  text-decoration: none;
}
.cart-item .cart-item-product-thumb, .cart-item .cart-item-product-info {
  display: table-cell;
  vertical-align: top;
}
.cart-item .cart-item-product-thumb {
  width: 110px;
}
.cart-item .cart-item-product-thumb > img {
  display: block;
  width: 100%;
}
.cart-item .cart-item-product-info {
  padding-top: 5px;
  padding-left: 15px;
}
.cart-item .cart-item-product-info > span {
  display: block;
  margin-bottom: 2px;
  color: #404040;
  font-size: 12px;
}
.cart-item .cart-item-product-title {
  margin-bottom: 8px;
  transition: color, 0.3s;
  color: #343b43;
  font-size: 16px;
  font-weight: bold;
}
.cart-item .cart-item-product:hover .cart-item-product-title {
  color: #ac32e4;
}
.cart-item .count-input {
  display: inline-block;
  width: 85px;
}
.cart-item .remove-item {
  right: -10px !important;
}
@media (max-width: 991px) {
  .cart-item {
    padding-right: 30px;
  }
  .cart-item .cart-item-product {
    width: auto;
  }
}
@media (max-width: 768px) {
  .cart-item {
    padding-right: 10px;
    padding-bottom: 15px;
  }
  .cart-item .cart-item-product {
    display: block;
    width: 100%;
    text-align: center;
  }
  .cart-item .cart-item-product-thumb, .cart-item .cart-item-product-info {
    display: block;
  }
  .cart-item .cart-item-product-thumb {
    margin: 0 auto 10px;
  }
  .cart-item .cart-item-product-info {
    padding-left: 0;
  }
  .cart-item .cart-item-label {
    margin-bottom: 8px;
  }
}
.comparison-table {
  width: 100%;
  overflow-x: auto;
  -webkit-overflow-scrolling: touch;
  -ms-overflow-style: -ms-autohiding-scrollbar;
}
.comparison-table table {
  min-width: 750px;
  table-layout: fixed;
}
.comparison-table .comparison-item {
  position: relative;
  margin-bottom: 10px;
  padding: 13px 12px 18px;
  background-color: #fff;
  text-align: center;
  box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .09);
}
.comparison-table .comparison-item .comparison-item-thumb {
  display: block;
  width: 80px;
  margin-right: auto;
  margin-bottom: 12px;
  margin-left: auto;
}
.comparison-table .comparison-item .comparison-item-thumb > img {
  display: block;
  width: 100%;
}
.comparison-table .comparison-item .comparison-item-title {
  display: block;
  margin-bottom: 14px;
  transition: color 0.25s;
  color: #404040;
  font-size: 14px;
  font-weight: 600;
  text-decoration: none;
}
.comparison-table .comparison-item .comparison-item-title:hover {
  color: #ac32e4;
}
.remove-item {
  display: block;
  position: absolute;
  top: -5px;
  right: -5px;
  width: 22px;
  height: 22px;
  padding-left: 1px;
  border-radius: 50%;
  background-color: #ff5252;
  color: #fff;
  line-height: 23px;
  text-align: center;
  box-shadow: 0 3px 12px 0 rgba(255, 82, 82, .5);
  cursor: pointer;
}
.card-wrapper {
  margin: 30px -15px;
}
@media (max-width: 576px) {
  .card-wrapper .jp-card-container {
    width: 260px !important;
  }
  .card-wrapper .jp-card {
    min-width: 250px !important;
  }
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

	<%if(aa!=null)
		{%>
		

				
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<br>
		
		
		
		


        <!-- Wishlist-->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class=" " style="margin-left: 10cm;margin-right: 10cm;">
    <div class="row">
        <div class="col-lg-4 pb-5">
            <!-- Account Sidebar-->
            <div class="author-card pb-3">
                <div class="author-card-cover" style="background-image: url(image/BringIt.gif);"><a class="btn btn-style-1 btn-white btn-sm"  href="#" data-toggle="tooltip" title="" data-original-title="You currently have 290 Reward points to spend"><i class="fa fa-award text-md"></i>&nbsp;290 points</a></div>
                <div class="author-card-profile">
                    <div class="author-card-avatar"><img src="./get_admin_image_on_dashbord?user_id=<%=aa.getUser_id()%>" alt="Daniel Adams">
                    </div>
                    <div class="author-card-details">
                        <h5 class="author-card-name text-lg"><%=aa.getName() %></h5><span class="author-card-position"><%=aa.getUser_id() %> Joined <%=aa.getDob() %></span>
                    </div>
                </div>
            </div>
            <div class="wizard">
                <nav class="list-group list-group-flush">
                    <a class="list-group-item active" href="#">
                        <div class="d-flex justify-content-between align-items-center">
                            <div><i class="fa fa-shopping-bag mr-1 text-muted"></i>
                                <div class="d-inline-block font-weight-medium text-uppercase">Orders Update</div>
                            </div><span class="badge badge-secondary"><%=aa.getOffer() %></span>
                        </div>
                    </a><a class="list-group-item" href="edit_by_customer?user_id=<%=aa.getUser_id()%>" target="__blank">
<i class="fa fa-user text-muted"></i>Profile Settings</a><a class="list-group-item" href=""><i class="fa fa-map-marker text-muted"></i>Addresses : <span style="font-size: 0.3 ;color: red;"> <%=aa.getAdress() %> </span></a>

                    <a class="list-group-item" href="#">
                        <div class="d-flex justify-content-between align-items-center">
                            <div><i class="fa fa-heart mr-1 text-muted"></i>
                                <div class="d-inline-block font-weight-medium text-uppercase">My Wishlist</div>
                            </div><span class="badge badge-secondary" id="wish_no_1" style="background-color: yellow;color: black;"></span>
                        </div>
                    </a>
                    <a class="list-group-item" href="https://www.bootdey.com/snippets/view/bs4-account-tickets" target="__blank">
                        <div class="d-flex justify-content-between align-items-center">
                            <div><i class="fa fa-tag mr-1 text-muted"></i>
                                <div class="d-inline-block font-weight-medium text-uppercase">My Tickets</div>
                            </div><span class="badge badge-secondary">0</span>
                        </div>
                    </a>
                </nav>
            </div>
        </div>
        <div class="col-lg-8 pb-5">
        <%int count=0; %>
        <%
					for (Product mm : list) {
					%>
					<%count++; %>
            <!-- Item-->
            <div class="cart-item d-md-flex justify-content-between"><span class="remove-item"><a href="delete_from_wishlist?user_id=<%=aa.getUser_id()%>&pro_id=<%=mm.getPro_id()%>" style="text-decoration: none;color: black;"><i class="fa fa-times"></i></span></a>
                <div class="px-3 my-3">
                    <a class="cart-item-product" href="#">
                        <div class="cart-item-product-thumb"><img src="./get_image_all_product?pro_id=<%=mm.getPro_id()%>" alt="Product"></div>
                        <div class="cart-item-product-info">
                            <h3 class="cart-item-product-title" style="font-weight: 1000"><%=mm.getName()%></h3>
                            <h6 class="cart-item-product-title"><%=mm.getPro_id()%></h5>
                            <div class="text-lg text-body font-weight-medium pb-1"><%=mm.getPrice() %></div><span>category: <span class="text-success font-weight-medium"><%=mm.getCategory() %></span></span>
                        </div>
                    </a>
                </div>
                <a href="./add_to_cart_wish_list?pro_id=<%=mm.getPro_id()%>" style="margin-top: 1.5cm;"><input type="button"
									value="Add To Cart" class="categ-btn"></a>
            </div>
            <%} %>
        </div>
    </div>
</div>
<input type="hidden" value=<%=count %> id="wish_no">

<%}else{ %>
		

					

<!-- Item-->
           <div class="col-lg-8 pb-5">
            <!-- Item-->
            <div class="cart-item d-md-flex justify-content-between"><span class="remove-item"><i class="fa fa-times"></i></span>
                <div class="px-3 my-3">
                    <a class="cart-item-product" href="#">
                        <div class="cart-item-product-thumb"><img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="Product"></div>
                        <div class="cart-item-product-info">
                            <h4 class="cart-item-product-title">Canon EOS M50 Mirrorless Camera</h4>
                            <div class="text-lg text-body font-weight-medium pb-1">$910.00</div><span>Availability: <span class="text-success font-weight-medium">In Stock</span></span>
                        </div>
                    </a>
                </div>
            </div>
            
				
		<%} %>
		
		<script>
		
		
		var element = document.getElementById("wish_no").value;
	console.log(element);
	 
	
var b=	document.getElementById("wish_no_1").innerHTML=element;
	console.log(b); 
		</script>
		
</body>
</html>