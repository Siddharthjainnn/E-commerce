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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif
}

body {
	background-color: #f4f4f4
}

.container {
	margin: 40px auto
}

#header {
	width: 100%;
	height: 60px;
	box-shadow: 5px 5px 15px #e8e8e8
}

.col-lg-4, .col-md-6 {
	padding-right: 0
}

button.btn.btn-hide {
	height: inherit;
	background-color: #ff935d;
	color: #fff;
	font-size: 0.82rem;
	padding-left: 40px;
	padding-right: 40px;
	border-top-right-radius: 0px;
	border-bottom-right-radius: 0px
}

.btn:focus {
	box-shadow: none
}

.box-label .btn {
	background-color: #fff;
	padding: 0;
	font-size: 0.8rem
}

.btn-red {
	background-color: #e00000ce
}

.btn-orange {
	background-color: #ffa500
}

.btn-pink {
	background-color: #e0009dce
}

.btn-green {
	background-color: #00811c
}

.btn-blue {
	background-color: #026bc2
}

.btn-brown {
	background-color: #994a00
}

.navbar {
	display: inline-flex
}

.pagination .page-item .page-link {
	color: #333;
	border: none;
	width: 40px;
	text-align: center
}

.pagination .page-item.active .page-link {
	background-color: #fff;
	border: 1px solid #333
}

select {
	outline: none;
	padding: 6px 12px;
	margin: 0px 4px;
	color: #999;
	font-size: 0.85rem;
	width: 140px
}

#select2 {
	border: 1px solid #777;
	color: #999
}

#pro {
	border: none;
	color: #333;
	font-weight: 700;
	padding-left: 0px;
	width: initial
}

#filterbar {
	width: 30%;
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 15px;
	float: left
}

#filterbar input[type="radio"] {
	visibility: hidden
}

#filterbar input[type='radio']:checked {
	background-color: #16c79a;
	border: none
}

#filterbar .btn.btn-success {
	background-color: #ddd;
	color: #333;
	border: none;
	width: 115px
}

#filterbar .btn.btn-success:hover {
	background-color: #aff1e1;
	color: #444
}

#filterbar .btn-success:not(:disabled):not(.disabled).active, #filterbar .btn-success:not(:disabled):not(.disabled):active
	{
	background-color: #16c79a;
	color: #fff
}

label {
	cursor: pointer
}

.tick {
	display: block;
	position: relative;
	padding-left: 23px;
	cursor: pointer;
	font-size: 0.9rem;
	margin: 0
}

.tick input {
	position: absolute;
	opacity: 0;
	cursor: pointer;
	height: 0;
	width: 0
}

.check {
	position: absolute;
	top: 1px;
	left: 0;
	height: 18px;
	width: 18px;
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 3px
}

.tick:hover input ~.check {
	background-color: #f3f3f3
}

.tick input:checked ~.check {
	background-color: #ffffff
}

.check:after {
	content: "";
	position: absolute;
	display: none
}

.tick input:checked ~.check:after {
	display: block;
	transform: rotate(45deg) scale(1)
}

.tick .check:after {
	left: 6px;
	top: 2px;
	width: 5px;
	height: 10px;
	border: solid rgb(0, 0, 0);
	border-width: 0 3px 3px 0;
	transform: rotate(45deg) scale(2)
}

.box {
	padding: 10px
}

.box-label {
	color: #11698e;
	font-size: 0.9rem;
	font-weight: 800
}

#inner-box, #inner-box2 {
	height: 150px;
	overflow-y: scroll
}

#inner-box2 {
	height: 132px
}

#inner-box::-webkit-scrollbar, #inner-box2::-webkit-scrollbar {
	width: 6px
}

#inner-box::-webkit-scrollbar-track, #inner-box2::-webkit-scrollbar-track
	{
	background-color: #ddd;
	border-radius: 2px
}

#inner-box::-webkit-scrollbar-thumb, #inner-box2::-webkit-scrollbar-thumb
	{
	background-color: #333;
	border-radius: 2px
}

#price {
	height: 45px
}

#size input[type="checkbox"] {
	visibility: hidden
}

#size input[type='checkbox']:checked {
	background-color: #16c79a;
	border: none
}

#size .btn.btn-success {
	background-color: #ddd;
	color: #333;
	border: none;
	width: 40px;
	font-size: 0.8rem;
	border-radius: 0
}

#size .btn.btn-success:hover {
	background-color: #aff1e1;
	color: #444
}

#size .btn-success:not(:disabled):not(.disabled).active, #size .btn-success:not(:disabled):not(.disabled):active
	{
	background-color: #16c79a;
	color: #fff
}

#size label {
	margin: 10px;
	margin-left: 0px
}

.card {
	padding: 10px;
	cursor: pointer;
	transition: .3s all ease-in-out;
	height: 350px
}

.card:hover {
	box-shadow: 2px 2px 15px #fd9a6ce5;
	transform: scale(1.02)
}

.card .product-name {
	font-weight: 600
}

.card-body {
	padding-bottom: 0
}

.card .text-muted {
	font-size: 0.82rem
}

.card-img img {
	padding-top: 10px;
	width: inherit;
	height: 180px;
	object-fit: contain;
	display: block
}

.card-body .btn-group .btn {
	padding: 0;
	width: 20px;
	height: 20px;
	margin-right: 5px;
	border-radius: 50%;
	position: relative
}

.card-body .btn-group>.btn-group:not(:last-child)>.btn, .card-body .btn-group>.btn:not(:last-child):not(.dropdown-toggle)
	{
	border-radius: 50%;
	transition: ease-in all .4s
}

.card-body input[type="radio"] {
	visibility: hidden
}

.card-body .btn:not(:disabled):not(.disabled).active::after, .card-body .btn:not(:disabled):not(.disabled):active::after
	{
	content: "";
	width: 10px;
	height: 10px;
	border-radius: 50%;
	top: 4px;
	left: 4.2px;
	background-color: #fff;
	position: absolute;
	transition: ease-in all .4s
}

.card-body .btn.btn-light:not(:disabled):not(.disabled).active::after,
	.card-body .btn.btn-light:not(:disabled):not(.disabled):active::after {
	background-color: #000
}

#avail-size input[type="checkbox"] {
	visibility: hidden
}

#avail-size input[type='checkbox']:checked {
	background-color: #16c79a;
	border: none
}

#avail-size .btn.btn-success {
	background-color: #ddd;
	color: #333;
	border: none;
	width: 20px;
	font-size: 0.7rem;
	border-radius: 0;
	padding: 0
}

#avail-size .btn.btn-success:hover {
	background-color: #aff1e1;
	color: #444
}

#avail-size .btn-success:not(:disabled):not(.disabled).active,
	#avail-size .btn-success:not(:disabled):not(.disabled):active {
	background-color: #16c79a;
	color: #fff
}

#avail-size label {
	margin: 10px;
	margin-left: 0px
}

#shirt {
	height: 170px
}

.middle {
	position: relative;
	width: 100%;
	margin-top: 25px
}

.slider {
	position: relative;
	z-index: 1;
	height: 5px;
	margin: 0 15px
}

.slider>.track {
	position: absolute;
	z-index: 1;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	border-radius: 5px;
	background-color: #ddd
}

.slider>.range {
	position: absolute;
	z-index: 2;
	left: 25%;
	right: 25%;
	top: 0;
	bottom: 0;
	border-radius: 5px;
	background-color: #36a31b
}

.slider>.thumb {
	position: absolute;
	top: 2px;
	z-index: 3;
	width: 20px;
	height: 20px;
	background-color: #36a31b;
	border-radius: 50%;
	box-shadow: 0 0 0 0 rgba(63, 204, 75, 0.705);
	transition: box-shadow .3s ease-in-out
}

.slider>.thumb::after {
	position: absolute;
	width: 8px;
	height: 8px;
	left: 28%;
	top: 30%;
	border-radius: 50%;
	content: '';
	background-color: #fff
}

.slider>.thumb.left {
	left: 25%;
	transform: translate(-15px, -10px)
}

.container_10 {
	display: flex; /* Use flexbox to create parallel divs */
}

.box_10 {
	flex: 1; /* Distribute the available space equally among the divs */
	padding: 20px;
	margin: 10px;
	text-align: center;
}

.slider>.thumb.right {
	right: 25%;
	transform: translate(15px, -10px)
}

.slider>.thumb.hover {
	box-shadow: 0 0 0 10px rgba(125, 230, 134, 0.507)
}

.slider>.thumb.active {
	box-shadow: 0 0 0 10px rgba(63, 204, 75, 0.623)
}

input[type=range] {
	position: absolute;
	pointer-events: none;
	-webkit-appearance: none;
	z-index: 2;
	height: 10px;
	width: 100%;
	opacity: 0
}

input[type=range]::-webkit-slider-thumb {
	pointer-events: all;
	width: 30px;
	height: 30px;
	border-radius: 0;
	border: 0 none;
	background-color: red;
	-webkit-appearance: none
}

.del {
	text-decoration: line-through;
	color: red
}

@media ( min-width :1199.6px) {
	#filterbar {
		width: 25%
	}
}

@media ( max-width :1199.5px) {
	#filterbar {
		width: 28%
	}
	.card {
		height: 350px
	}
	.price {
		font-size: 0.9rem
	}
	.product-name {
		font-size: 0.8rem
	}
}

@media ( max-width : 991.5px) {
	.navbar-nav {
		min-width: 290px;
		position: absolute;
		left: -168px;
		bottom: -146px;
		padding: 20px 10px;
		display: block;
		background-image: none;
		z-index: 2;
		background-color: #1d1c1cb2
	}
	#filterbar {
		width: 36%
	}
	#sort {
		background-color: inherit;
		color: #fff;
		margin: 0;
		margin-bottom: 20px;
		width: 100%
	}
	#sort option, #pro option {
		color: #000
	}
	#pro, #select2, .result {
		background-color: inherit;
		color: #fff
	}
	.card {
		height: 345px
	}
	.price {
		font-size: 0.85rem
	}
}

@media ( max-width : 767.5px) {
	#filterbar {
		width: 50%
	}
}

@media ( max-width : 525.5px) {
	#filterbar {
		float: none;
		width: 100%;
		margin-bottom: 20px;
		border-radius: 5px
	}
	#content.my-5 {
		margin-top: 20px !important;
		margin-bottom: 20px !important
	}
	.col-lg-4, .col-md-6 {
		padding-left: 0
	}
}

@media ( max-width : 500.5px) {
	.pagination {
		display: none
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
<%-- 
	<%if(aa!=null)
		{%>
		<section class="product-section" id="product-section">

		<div class="product-page">
			<h2 class="product-he">
				Our <span class="product-sp"> Soap & Detergent Products</span>
			</h2>
			<br>
			<hr style="width: 29cm">
			<div class="container">
				<div class="row">

					<%
					for (Product mm : list) {
					%>


					<div class="col-4">
						<div class="categori-pro"  style="height: 600px;width: 100px;">
							<div class="box3">
							
							
							
							
							
							<!-- <i class="fa-regular fa-heart fa-xl" style="margin-left: 220px;"></i> -->
							<form action="like_category_4" method="post">
							<input type="hidden" value="<%=aa.getUser_id()%>" name="customer_id">
							<input type="hidden" value="<%=mm.getName()%>" name="name">
							<input type="hidden" value="<%=mm.getPro_id()%>" name="pro_id">
							<input type="hidden" value="<%=mm.getCategory()%>" name="category">
							<input type="hidden" value="<%=mm.getPrice()%>" name="price">
							<div class="heart" id="heartIcon">
							 <button type="submit" style="border: white; background: white;" ><i class="fas fa-heart fa-xl" style="margin-left: 220px;color:red;"></i></a>
        
    </div>
</form>
    <script>
        document.getElementById("heartIcon").addEventListener("click", function() {
            this.classList.toggle("clicked");
        });
    </script>
							
								<img src="./get_image_admin_detergent?pro_id=<%=mm.getPro_id()%>"
									class="categ-img" alt="" style="height: 270px;width: 270px;padding: 20px;">
								<div>
									<h3 class="categ-he"  ><span style="color: red;">PRO ID : <%=mm.getPro_id()%></span></h3>
									<h1 ><span style="color:black;"><%=mm.getName()%></span></h1>
									<h5 ><span style="color:olive;"><%=mm.getCategory()%></span></h5>
									<h3 ><span style="color:red;">RS.<%=mm.getPrice()%>/-</span></h3>
								</div>
								
								<a href="./add_to_cart_2?pro_id=<%=mm.getPro_id()%>"><input type="button"
									value="Add To Cart" class="categ-btn"></a>
							</div>
</div>
					</div>
							<%
							}
							%>
				</div>
		<%}else{ %>
		<section class="product-section" id="product-section">

		<div class="product-page">
			<h2 class="product-he">
				Our <span class="product-sp"> Soap & Detergent Products</span>
			</h2>
			<br>
			<hr style="width: 29cm">
			<div class="container">
				<div class="row">

					<%
					for (Product mm : list) {
					%>


					<div class="col-4">
						<div class="categori-pro"  style="height: 600px;width: 100px;">
							<div class="box3">
								<img src="./get_image_admin_detergent?pro_id=<%=mm.getPro_id()%>"
									class="categ-img" alt="" style="height: 270px;width: 270px;padding: 20px;">
								<div>
									<h3 class="categ-he"  ><span style="color: red;">PRO ID : <%=mm.getPro_id()%></span></h3>
									<h1 ><span style="color:black;"><%=mm.getName()%></span></h1>
									<h5 ><span style="color:olive;"><%=mm.getCategory()%></span></h5>
									<h3 ><span style="color:red;">RS.<%=mm.getPrice()%>/-</span></h3>
								</div>
								
								<a href="./add_to_cart_2?pro_id=<%=mm.getPro_id()%>"><input type="button"
									value="Add To Cart" class="categ-btn"></a>
							</div>
</div>
					</div>
							<%
							}
							%>
				</div>
		<%} %>
</body>
</html> --%>


	
<div
		class="bg-white rounded d-flex align-items-center justify-content-between"
		id="header">
		<button class="btn btn-hide text-uppercase" type="button"
			data-toggle="collapse" data-target="#filterbar" aria-expanded="false"
			aria-controls="filterbar" id="filter-btn" onclick="changeBtnTxt()">
			<span class="fas fa-angle-left" id="filter-angle"></span> <span
				id="btn-txt">Hide filters</span>
		</button>
		<nav class="navbar navbar-expand-lg navbar-light pl-lg-0 pl-auto">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#mynav" aria-controls="mynav" aria-expanded="false"
				aria-label="Toggle navigation" onclick="chnageIcon()" id="icon">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="mynav">
				<ul class="navbar-nav d-lg-flex align-items-lg-center">
					<li class="nav-item active"><select name="sort" id="sort">
							<option value="" hidden selected>Sort by</option>
							<option value="price">Price</option>
							<option value="popularity">Popularity</option>
							<option value="rating">Rating</option>
					</select></li>
					<li
						class="nav-item d-inline-flex align-items-center justify-content-between mb-lg-0 mb-3">
						<div class="d-inline-flex align-items-center mx-lg-2" id="select2">
							<div class="pl-2">Products:</div>
							<select name="pro" id="pro">
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
							</select>
						</div>
						<div class="font-weight-bold mx-2 result">18 from 200</div>
					</li>
					<li class="nav-item d-lg-none d-inline-flex"></li>
				</ul>
			</div>
		</nav>
		<div class="ml-auto mt-3 mr-2">
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true"
							class="font-weight-bold">&lt;</span> <span class="sr-only">Previous</span>
					</a></li>
					<li class="page-item active"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">..</a></li>
					<li class="page-item"><a class="page-link" href="#">24</a></li>
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Next"> <span aria-hidden="true"
							class="font-weight-bold">&gt;</span> <span class="sr-only">Next</span>
					</a></li>
				</ul>
			</nav>
		</div>
	</div>
	<div id="content" class="my-5">
		<div id="filterbar" class="collapse">
			<div class="box border-bottom">
				<div class="form-group text-center">
					<div class="btn-group" data-toggle="buttons">
						<label class="btn btn-success form-check-label"> <input
							class="form-check-input" type="radio"> Reset
						</label> <label class="btn btn-success form-check-label active"> <input
							class="form-check-input" type="radio" checked> Apply
						</label>
					</div>
				</div>
				<div>
					<label class="tick">New <input type="checkbox"
						checked="checked"> <span class="check"></span>
					</label>
				</div>
				<div>
					<label class="tick">On Sale <input type="checkbox"> <span
						class="check"></span>
					</label>
				</div>
			</div>
			<div class="box border-bottom">
				<div class="box-label text-uppercase d-flex align-items-center">
					Price
					<button class="btn ml-auto" type="button" data-toggle="collapse"
						data-target="#inner-box" aria-expanded="false"
						aria-controls="inner-box" id="out" onclick="outerFilter()">
						<span class="fas fa-plus"></span>
					</button>
				</div>
				<div id="inner-box" class="collapse mt-2 mr-1">
				<div class="my-1">
						<label class="tick">All <input type="checkbox"
							checked="checked"> <span class="check"></span>
						</label>
					</div>
					<div class="my-1">
						<label class="tick">Up to rs 90 <input type="checkbox"> <span
							class="check"></span>
						</label>
					</div>
					
					<div class="my-1">
						<label class="tick">Rs 90 - Rs 200 <input type="checkbox">
							<span class="check"></span>
						</label>
					</div>
					<div class="my-1">
						<label class="tick">Rs 200 - Rs 500 <input type="checkbox">
							<span class="check"></span>
						</label>
					</div>
					<div class="my-1">
						<label class="tick">Rs 500 - Rs 1500 <input type="checkbox"> <span
							class="check"></span>
						</label>
					</div>
					<div class="my-1">
						<label class="tick">Rs 1500 - Rs 2000 <input type="checkbox">
							<span class="check"></span>
						</label>
					</div>
					<div class="my-1">
						<label class="tick">Over rs 2000 <input type="checkbox">
							<span class="check"></span>
						</label>
					</div>
					
					
				</div>
			</div>
			<div class="box border-bottom">
				<div class="box-label text-uppercase d-flex align-items-center">
					Brand
					<button class="btn ml-auto" type="button" data-toggle="collapse"
						data-target="#inner-box2" aria-expanded="false"
						aria-controls="inner-box2">
						<span class="fas fa-plus"></span>
					</button>
				</div>
				<div id="inner-box2" class="collapse mt-2 mr-1">
				<div class="my-1">
						<label class="tick">All <input type="checkbox"
							checked="checked"> <span class="check"></span>
						</label>
					</div>
					
					<div class="my-1">
						<label class="tick">Cello <input type="checkbox">
							<span class="check"></span>
						</label>
					</div>
					<div class="my-1">
						<label class="tick">Milton <input type="checkbox">
							<span class="check"></span>
						</label>
					</div>
					<div class="my-1">
						<label class="tick">Jain <input type="checkbox">
							<span class="check"></span>
						</label>
					</div>
					
					
					<div class="my-1">
						<label class="tick">Hello <input type="checkbox">
							<span class="check"></span>
						</label>
					</div>
					<div class="my-1">
						<label class="tick">Hii <input type="checkbox">
							<span class="check"></span>
						</label>
					</div>
				</div>
			</div>
				</div>
		</div>
		
		
			<%
		if (aa != null) {
		%>

		<div id="products">
			<div class="row mx-0">
				<%
				for (Product mm : list) {
				%>
				<div class="col-lg-4 col-md-6" style="margin-bottom: 1cm;">

					<div class="card d-flex flex-column align-items-center">
						<form action="like_category_4" method="post">
							<input type="hidden" value="<%=aa.getUser_id()%>"
								name="customer_id"> <input type="hidden"
								value="<%=mm.getName()%>" name="name"> <input
								type="hidden" value="<%=mm.getPro_id()%>" name="pro_id">
							<input type="hidden" value="<%=mm.getCategory()%>"
								name="category"> <input type="hidden"
								value="<%=mm.getPrice()%>" name="price">
							<div class="heart" id="heartIcon">
								<button type="submit" style="border: white; background: white;">
									<i class="fas fa-heart fa-xl"
										style="margin-left: 470px; color: red; size: 1cm;"></i></a>
							</div>
						</form>
						<script>
							document.getElementById("heartIcon")
									.addEventListener("click", function() {
										this.classList.toggle("clicked");
									});
						</script>


						<div class="product-name" style="font-size: 0.5cm;font-weight: 700"><%=mm.getName() %></div>
						<div >( <%=mm.getCategory() %> )</div>
						<div class="card-img">
							<img src="./get_image_admin_detergent?pro_id=<%=mm.getPro_id()%>"
								alt="">
						</div>
						
						<div class="card-body pt-5">
						
							<div class="text-muted text-center mt-auto" style="font-size: 0.4cm;">Quantity : <%=mm.getQuantity() %>
								<div style="font-size: 0.5cm;color: red;font-weight: 700"><%=mm.getPro_id() %></div>
								</div>
								
								<%-- <div  style="font-size: 0.6cm;color: red;"><%=mm.getPro_id() %> --%>
							
							<div class="d-flex align-items-center price" style="margin-left: 1.3cm;">
								<div class="del mr-2">
									<span class="text-dark" style="font-size: 0.4cm;"><%=mm.getPrice() %></span>
								</div>
								<div class="font-weight-bold"><%=mm.getPrice() %></div>
							</div>

							<div >
								<%-- <a href="./add_to_cart_7?pro_id=<%=mm.getPro_id()%>"><input
									type="button" value="Add To Cart" class="categ-btn"></a> --%>
									<a href="./add_to_cart_2?pro_id=<%=mm.getPro_id()%>"><label class="btn btn-success form-check-label active" style="width: 5cm;"> <input
							class="form-check-input"  type="hidden" > BUY NOW
						</label></a>
							</div>
						</div>
					</div>
				</div>
				<%
				}
				%>

				<%
				} else {
				%>
				<div id="products">
					<div class="row mx-0">
						<%
						for (Product mm : list) {
						%>

						<div class="col-lg-4 col-md-6" style="margin-bottom: 1cm;">



							<div class="card d-flex flex-column align-items-center">

								<div class="product-name" style="font-size: 0.5cm;font-weight: 700"><%=mm.getName() %></div>
						<div >( <%=mm.getCategory() %> )</div>
						<div class="card-img">
							<img src="./get_image_admin_detergent?pro_id=<%=mm.getPro_id()%>"
								alt="">
						</div>
						
						<div class="card-body pt-5">
						
							<div class="text-muted text-center mt-auto" style="font-size: 0.4cm;">Quantity : <%=mm.getQuantity() %>
								<div style="font-size: 0.5cm;color: red;font-weight: 700"><%=mm.getPro_id() %></div>
								</div>
								
								<%-- <div  style="font-size: 0.6cm;color: red;"><%=mm.getPro_id() %> --%>
							
							<div class="d-flex align-items-center price" style="margin-left: 1.3cm;">
								<div class="del mr-2">
									<span class="text-dark" style="font-size: 0.4cm;"><%=mm.getPrice() %></span>
								</div>
								<div class="font-weight-bold"><%=mm.getPrice() %></div>
							</div>
									<div>
										<a href="login.jsp"><label class="btn btn-success form-check-label active" style="width: 5cm;"> <input
							class="form-check-input"  type="hidden" > BUY NOW
						</label></a>
									</div>
								</div>
							</div>
						</div>

						<%
						}
						%>


						<%
						}
						%>


					</div>

					<script>
						// For Filters
						document
								.addEventListener(
										"DOMContentLoaded",
										function() {
											var filterBtn = document
													.getElementById('filter-btn');
											var btnTxt = document
													.getElementById('btn-txt');
											var filterAngle = document
													.getElementById('filter-angle');

											$('#filterbar').collapse(false);
											var count = 0, count2 = 0;
											function changeBtnTxt() {
												$('#filterbar').collapse(true);
												count++;
												if (count % 2 != 0) {
													filterAngle.classList
															.add("fa-angle-right");
													btnTxt.innerText = "show filters"
													filterBtn.style.backgroundColor = "#36a31b";
												} else {
													filterAngle.classList
															.remove("fa-angle-right")
													btnTxt.innerText = "hide filters"
													filterBtn.style.backgroundColor = "#ff935d";
												}

											}

											// For Applying Filters
											$('#inner-box').collapse(false);
											$('#inner-box2').collapse(false);

											// For changing NavBar-Toggler-Icon
											var icon = document
													.getElementById('icon');

											function chnageIcon() {
												count2++;
												if (count2 % 2 != 0) {
													icon.innerText = "";
													icon.innerHTML = '<span class="far fa-times-circle" style="width:100%"></span>';
													icon.style.paddingTop = "5px";
													icon.style.paddingBottom = "5px";
													icon.style.fontSize = "1.8rem";

												} else {
													icon.innerText = "";
													icon.innerHTML = '<span class="navbar-toggler-icon"></span>';
													icon.style.paddingTop = "5px";
													icon.style.paddingBottom = "5px";
													icon.style.fontSize = "1.2rem";
												}
											}

											// Showing tooltip for AVAILABLE COLORS
											$(function() {
												$('[data-tooltip="tooltip"]')
														.tooltip()
											})

											// For Range Sliders
											var inputLeft = document
													.getElementById("input-left");
											var inputRight = document
													.getElementById("input-right");

											var thumbLeft = document
													.querySelector(".slider > .thumb.left");
											var thumbRight = document
													.querySelector(".slider > .thumb.right");
											var range = document
													.querySelector(".slider > .range");

											var amountLeft = document
													.getElementById('amount-left')
											var amountRight = document
													.getElementById('amount-right')

											function setLeftValue() {
												var _this = inputLeft, min = parseInt(_this.min), max = parseInt(_this.max);

												_this.value = Math
														.min(
																parseInt(_this.value),
																parseInt(inputRight.value) - 1);

												var percent = ((_this.value - min) / (max - min)) * 100;

												thumbLeft.style.left = percent
														+ "%";
												range.style.left = percent
														+ "%";
												amountLeft.innerText = parseInt(percent * 100);
											}
											setLeftValue();

											function setRightValue() {
												var _this = inputRight, min = parseInt(_this.min), max = parseInt(_this.max);

												_this.value = Math
														.max(
																parseInt(_this.value),
																parseInt(inputLeft.value) + 1);

												var percent = ((_this.value - min) / (max - min)) * 100;

												amountRight.innerText = parseInt(percent * 100);
												thumbRight.style.right = (100 - percent)
														+ "%";
												range.style.right = (100 - percent)
														+ "%";
											}
											setRightValue();

											inputLeft.addEventListener("input",
													setLeftValue);
											inputRight.addEventListener(
													"input", setRightValue);

											inputLeft.addEventListener(
													"mouseover", function() {
														thumbLeft.classList
																.add("hover");
													});
											inputLeft
													.addEventListener(
															"mouseout",
															function() {
																thumbLeft.classList
																		.remove("hover");
															});
											inputLeft.addEventListener(
													"mousedown", function() {
														thumbLeft.classList
																.add("active");
													});
											inputLeft
													.addEventListener(
															"mouseup",
															function() {
																thumbLeft.classList
																		.remove("active");
															});

											inputRight.addEventListener(
													"mouseover", function() {
														thumbRight.classList
																.add("hover");
													});
											inputRight
													.addEventListener(
															"mouseout",
															function() {
																thumbRight.classList
																		.remove("hover");
															});
											inputRight.addEventListener(
													"mousedown", function() {
														thumbRight.classList
																.add("active");
													});
											inputRight
													.addEventListener(
															"mouseup",
															function() {
																thumbRight.classList
																		.remove("active");
															});
										});
					</script>
</body>
</html>