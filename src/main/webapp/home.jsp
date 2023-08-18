<%@page import="java.util.ArrayList"%>
<%@page import="DTO.customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>KIRANA STORE</title>
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







<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- <link rel="stylesheet" href="Home.css"> -->



<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">





<!-- <link rel="stylesheet" href="index.css"> -->
<link rel="stylesheet" href="footer.css">
<style >

        
    </style>


</head>
<body>

	<%@include file="header.jsp"%>
	<%-- <%customer aab=(customer)session.getAttribute("msg"); %>  --%>


	<%
	String aaj = (String) request.getAttribute("msg");
	%>
	<%
	if (aaj != null) {
	%>
	<center>
		<h1 style="color: blue;"><%=aaj%></h1>
	</center>
	<%
	} else {
	%>
	<%
	}
	%>



	<!--################### home-page start ########################### -->

	<div class="home" id="home-page" style="background: url('./images/BringIt.gif'); background-repeat: no-repeat; background-size: cover;width: 100%;
    height: 90vh; ">
		<div class="home-content" >
			<h2 class="hed" >
				Looking For <span>Kirana</span> In Indore ?
			</h2>
			<p class="hed-para" >we have more than 1250+ items of kirana and
				daily needs.We also provide free delivery in vijay nagar and
				sukliya.</p>

			<input type="button" value="Shop Now" class="hed-btn" style="margin-bottom: 9cm;">
		</div>
	</div>

	<!--################### home-page end ########################### -->



	<!--################### home-page2 features start ########################### -->

	<div class="main-content" id="features-section">


		<div class="features-page">
			<h2 class="feature-hed">
				Our <span class="feature-sp">Features</span>
			</h2>

			<div class="features-box">
				<div class="box1">
					<img src="./images/fruit shop-cuate.png" class="food-img" alt="">

					<h2 class="food-h2">Fresh And Organic</h2>
					<p class="food-para">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Quo, neque.</p>
					<input type="button" value="Read More" class="food-btn">
				</div>
				<div class="box1">
					<img src="./images/Free shipping-rafiki.png" class="food-img"
						alt="">
					<h2 class="food-h2">Free Delivery</h2>
					<p class="food-para">Lorem ipsum dolor sit amet consectetur,
						adipisicing elit. Enim harum aliquid error optio?</p>
					<input type="button" value="Read More" class="food-btn">
				</div>
				<div class="box1">
					<img src="./images/Credit card-pana.png" class="food-img" alt="">
					<h2 class="food-h2">Easy Payments</h2>
					<p class="food-para">Lorem ipsum, dolor sit amet consectetur
						adipisicing elit. Et asperiores at earum tenetur.</p>
					<input type="button" value="Read More" class="food-btn">
				</div>
			</div>
		</div>
	</div>
	<!--################### home-page2 features end  ########################### -->




	<!--################### home-page2 Product start  ########################### -->

	<section class="product-section" id="product-section">

		<div class="product-page">
			<h2 class="product-he">
				Our <span class="product-sp">Products</span>
			</h2>

			<div class="swiper product-slider">

				<div class="swiper-wrapper">

					<div class="box2 swiper-slide">
						<img src="./images/fresh-orange.avif" class="pro-img" alt="">
						<h3 class="pro-he">Fresh Orenge</h3>
						<div class="price">$4.99/- - 10.99/-</div>

						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
						<input type="button" value="add to cart" class="pro-btn">
					</div>


					<div class="box2 swiper-slide">
						<img src="./images/red-onion.avif" class="pro-img" alt="">
						<h3 class="pro-he">Fresh Onion</h3>
						<div class="price">$4.99/- - 10.99/-</div>

						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
						<input type="button" value="add to cart" class="pro-btn">
					</div>

					<div class="box2 swiper-slide">
						<img src="./images/raw-meat.avif" class="pro-img" alt="">
						<h3 class="pro-he">Fresh Meat</h3>
						<div class="price">$4.99/- - 10.99/-</div>

						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
						<input type="button" value="add to cart" class="pro-btn">
					</div>

					<div class="box2 swiper-slide">
						<img src="./images/fresh-green-cabbage.avif" class="pro-img"
							alt="">
						<h3 class="pro-he">Fresh Cabbage</h3>
						<div class="price">$4.99/- - 10.99/-</div>

						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
						<input type="button" value="add to cart" class="pro-btn">
					</div>
				</div>
			</div>



			<div class="swiper product-slider">

				<div class="swiper-wrapper">

					<div class="box2 swiper-slide">
						<img src="./images/carrot.avif" class="pro-img" alt="">
						<h3 class="pro-he">Fresh Carrot</h3>
						<div class="price">$4.99/- - 10.99/-</div>

						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
						<input type="button" value="add to cart" class="pro-btn">
					</div>


					<div class="box2 swiper-slide">
						<img src="./images/lemon.avif" class="pro-img" alt="">
						<h3 class="pro-he">Fresh Lemon</h3>
						<div class="price">$4.99/- - 10.99/-</div>

						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
						<input type="button" value="add to cart" class="pro-btn">
					</div>

					<div class="box2 swiper-slide">
						<img src="./images/potatoes.avif" class="pro-img" alt="">
						<h3 class="pro-he">Fresh potato</h3>
						<div class="price">$4.99/- - 10.99/-</div>

						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
						<input type="button" value="add to cart" class="pro-btn">
					</div>

					<div class="box2 swiper-slide">
						<img src="./images/avocado.avif" class="pro-img" alt="">
						<h3 class="pro-he">Fresh Avocado</h3>
						<div class="price">$4.99/- - 10.99/-</div>

						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
						<input type="button" value="add to cart" class="pro-btn">
					</div>
				</div>
			</div>

		</div>

	</section>

	<!--################### home-page2 Proctuct end  ########################### -->



	<!--################### home-page2 Categoris start  ########################### -->

	<section class="categoris-section" id="categoris-section">

		<div class="categori-page">
			<h2 class="categori-he">
				Our <span class="categ-sp">Categories</span>
			</h2>





			<div class="categori-pro">
				<div class="box3">
					<img src="./images/edible-oil-ghee.jpg" class="categ-img" alt="">
					<h3 class="categ-he">OIL & GHEE</h3>
					<h4 class="price">Upto 45% Off</h4>
					<a href="oil&gheecustomser"><input type="button"
						value="Read More" class="categ-btn"></a>
				</div>
				<div class="box3">

					<img src="./images/sugar.webp" class="categ-img" alt="">
					<h3 class="categ-he">SUGAR & JERRY</h3>
					<h4 class="price">Upto 45% Off</h4>
					<a href="sugarjerrycustomer"><input type="button"
						value="Read More" class="categ-btn"></a>
				</div>
				<div class="box3">

					<img src="./images/soap detergent.jpg" class="categ-img" alt="">
					<h3 class="categ-he">SOAP & DETERGENT</h3>
					<h4 class="price">Upto 45% Off</h4>
					<a href="soapdetergentcustomer"><input type="button"
						value="Read More" class="categ-btn"></a>
				</div>
				<div class="box3">

					<img src="./images/spices1.jpg" class="categ-img" alt="">
					<h3 class="categ-he">SPICES & MASALA</h3>
					<h4 class="price">Upto 45% Off</h4>
					<a href="spicescustomer"><input type="button" value="Read More"
						class="categ-btn"></a>
				</div>
				<div class="box3">
					<img src="./images/atta.webp" class="categ-img" alt="">
					<h3 class="categ-he">ATTA & POHA</h3>
					<h4 class="price">Upto 45% Off</h4>
					<a href="attacustomer"><input type="button" value="Read More"
						class="categ-btn"></a>
				</div>
				<div class="box3">
					<img src="./images/dal and grains.webp" class="categ-img" alt="">
					<h3 class="categ-he">DAL & PULSE</h3>
					<h4 class="price">Upto 45% Off</h4>
					<a href="dalcustomer"><input type="button" value="Read More"
						class="categ-btn"></a>
				</div>

			</div>

			<div class="categori-pro">
				<div class="box3">
					<img src="./images/sev.webp" class="categ-img" alt="">
					<h3 class="categ-he">SEV & NAMKEEN</h3>
					<h4 class="price">Upto 45% Off</h4>
					<a href="sevcustomer"><input type="button" value="Read More"
						class="categ-btn"></a>
				</div>
				<div class="box3">

					<img src="./images/biscuits.jpg" class="categ-img" alt="">
					<h3 class="categ-he">BISCUITS & CHOCLATE</h3>
					<h4 class="price">Upto 45% Off</h4>
					<a href="biscuitcustomer"><input type="button"
						value="Read More" class="categ-btn"></a>
				</div>
				<div class="box3">

					<img src="./images/agarbatti.jpg" class="categ-img" alt="">
					<h3 class="categ-he">AGARBATTI & PUJJA</h3>
					<h4 class="price">Upto 45% Off</h4>
					<a href="agarbatticustomer"><input type="button"
						value="Read More" class="categ-btn"></a>
				</div>
				<div class="box3">

					<img src="./images/dryfruit'.jpg" class="categ-img" alt="">
					<h3 class="categ-he">DRYFRUIT product</h3>
					<h4 class="price">Upto 45% Off</h4>
					<a href="dryfruitcustomer"><input type="button"
						value="Read More" class="categ-btn"></a>
				</div>
				<div class="box3">
					<img src="./images/daily-product.avif" class="categ-img" alt="">
					<h3 class="categ-he">DAILY ESSENTIAL</h3>
					<h4 class="price">Upto 45% Off</h4>
					<a href="dailyesscustomer"><input type="button"
						value="Read More" class="categ-btn"></a>
				</div>
				<div class="box3">
					<img src="./images/dairy.jpg" class="categ-img" alt="">
					<h3 class="categ-he">DAIRY PRODUCTS</h3>
					<h4 class="price">Upto 45% Off</h4>
					<a href="dairycustomer"><input type="button" value="Read More"
						class="categ-btn"></a>
				</div>

			</div>



		</div>




	</section>


	<!--################### home-page2 Categoris end  ########################### -->



	<!--################### home-page2 customre start  ########################### -->
	<!-- product-page -->

	<section class="product-section" id="review-section">

		<div class="cus-page">
			<h2 class="product-he">
				Customer's<span class="product-sp">Review</span>
			</h2>

			<div class="swiper product-slider">

				<div class="swiper-wrapper">

					<div class="box2 box4 swiper-slide">
						<img src="./images/boy-office-1.png" class="pro-img" alt="">

						<div class="price para">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Aliquid vero vel possimus modi
							nihil autem laboriosam magnam doloribus amet. Repellat iste dolor
							unde sunt quod?</div>

						<h3 class="pro-he">John Deo</h3>

						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>

					</div>


					<div class="box2 box4 swiper-slide">
						<img src="./images/girl-office-1.png" class="pro-img" alt="">

						<div class="price para">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Aliquid vero vel possimus modi
							nihil autem laboriosam magnam doloribus amet. Repellat iste dolor
							unde sunt quod?</div>

						<h3 class="pro-he">John Deo</h3>

						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>

					</div>

					<div class="box2 box4 swiper-slide">
						<img src="./images/girl-office-2.png" class="pro-img" alt="">

						<div class="price para">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Aspernatur eos ea dolorum ex,
							sapiente velit repellendus quaerat obcaecati maxime sunt officia
							asperiores eum ut inventore!</div>

						<h3 class="pro-he">John Deo</h3>

						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>

					</div>

					<div class="box2 box4 swiper-slide">
						<img src="./images/girl-office-3.png" class="pro-img" alt="">

						<div class="price para">Lorem ipsum, dolor sit amet
							consectetur adipisicing elit. Tenetur delectus doloribus saepe,
							quaerat tempora dolore quasi voluptas qui blanditiis voluptatum
							cum natus reiciendis architecto expedita?</div>

						<h3 class="pro-he">John Deo</h3>

						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>

					</div>
				</div>
			</div>
	</section>
	<!--################### home-page2 customer end  ########################### -->


	<!--################### home-page2 blogs start  ########################### -->


	<section class="blog-section" id="blogs-section">


		<div class="blog-page">
			<h2 class="blog-hed">
				Our <span class="blog-sp">Blogs</span>
			</h2>

			<div class="blog-box">
				<div class="box5">
					<img src="./images/box-5-1.avif" class="cus-img" alt=""> <i
						class="fa-solid fa-user fa box5-icon1"><span class="box5-sp1">By
							Admin</span></i> <i class="fa-solid fa-box box5-icon2"><span
						class="box5-sp2">1st May, 2023</span></i>
					<hr>

					<h3 class="box5-hed">Fresh And Organic</h3>
					<h3 class="box5-hed">Vegitable And Fruits</h3>

					<p class="box5-para">Lorem ipsum dolor sit, amet consectetur
						adipisicing elit. Earum impedit aperiam debitis illum?</p>

					<input type="button" value="Read More" class="box5-btn">
				</div>
				<div class="box5">

					<img src="./images/box-5-2.avif" class="cus-img" alt=""> <i
						class="fa-solid fa-user fa box5-icon1"><span class="box5-sp1">By
							Admin</span></i> <i class="fa-solid fa-box box5-icon2"><span
						class="box5-sp2">1st May, 2023</span></i>
					<hr>

					<h3 class="box5-hed">Fresh And Organic</h3>
					<h3 class="box5-hed">Vegitable And Fruits</h3>

					<p class="box5-para">Lorem ipsum dolor sit, amet consectetur
						adipisicing elit. Earum impedit aperiam debitis illum?</p>

					<input type="button" value="Read More" class="box5-btn">

				</div>
				<div class="box5">

					<img src="./images/box-5-3.avif" class="cus-img" alt=""> <i
						class="fa-solid fa-user fa box5-icon1"><span class="box5-sp1">By
							Admin</span></i> <i class="fa-solid fa-box box5-icon2"><span
						class="box5-sp2">1st May, 2023</span></i>
					<hr>

					<h3 class="box5-hed">Fresh And Organic</h3>
					<h3 class="box5-hed">Vegitable And Fruits</h3>

					<p class="box5-para">Lorem ipsum dolor sit, amet consectetur
						adipisicing elit. Earum impedit aperiam debitis illum?</p>

					<input type="button" value="Read More" class="box5-btn">

				</div>
			</div>
		</div>
	</section>



	<!--################### home-page2 blogs end  ########################### -->


	<footer>
		<div class="content">
			<div class="top">
				<div class="logo-details">
					<i class="fa-solid fa-bag-shopping icon"></i> <span class="logo_name">Jain
						Provision</span>
				</div>
				<div class="media-icons">
					<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
						class="fab fa-twitter"></i></a> <a href="#"><i
						class="fab fa-instagram"></i></a> <a href="#"><i
						class="fab fa-linkedin-in"></i></a> <a href="#"><i
						class="fab fa-youtube"></i></a>
				</div>
			</div>
			<div class="link-boxes">
				<ul class="box">
					<li class="link_name">Location</li>
					<li><a href="#">Home</a></li>
					<li><a href="#">Home</a></li>
					<li><a href="#">Home</a></li>
					<li><a href="#">Home</a></li>

					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3679.2556794918914!2d75.87207187442333!3d22.75589082622925!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39630328b3e0c735%3A0x4648d971e7a41c08!2sJain%20Provision%20Store!5e0!3m2!1sen!2sin!4v1690112984742!5m2!1sen!2sin"
						width="600" height="250" style="border: 0;" allowfullscreen=""
						loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

				</ul>
				<ul class="box">
					<li class="link_name">Services</li>
					<li><a href="free_delivery.jsp">About Delivery</a></li>
					<li><a href="customer_service.jsp">Customer Service</a></li>
					<li><a href="#">24*7 Delivery</a></li>
					<li><a href="#">Contact-less Delivery </a></li>
				</ul>
				
					<%
					if (aa != null) {
					%>
					<ul class="box">
					<%-- <h1>WELCOME - <%=aa.getName() %></h1> --%>
					<li class="link_name">Account</li>
					<li><a href="profile_by_id?user_id=<%=aa.getUser_id() %>">Profile</a></li>
					<li><a href="profile_by_id?user_id=<%=aa.getUser_id() %>">My account</a></li>
					<li><a href="setting_page.jsp">Setting</a></li>
					<li><a href="get_final_cart">My Order</a></li>
					</ul>
					<%
					} else {
					%>
					<ul class="box">
					<li class="link_name">Account</li>
					<li><a href="#">Profile</a></li>
					<li><a href="#">My account</a></li>
					<li><a href="#">Setting</a></li>
					<li><a href="#">My Order</a></li>
				</ul>
				<%
				}
				%>
				<ul class="box">
					<li class="link_name">Category</li>
					<li><a href="oil&gheecustomser">OIL & GHEE</a></li>
					<li><a href="sugarjerrycustomer">SUGAR & JERRY</a></li>
					<li><a href="soapdetergentcustomer">SOAP & DETERGENT</a></li>
					<li><a href="spicescustomer">SPICES & MASALA</a></li>
					<li><a href="attacustomer">ATTA & PARMAL</a></li>
					<li><a href="dalcustomer">DAL & GRAINS</a></li>
					<li><a href="sevcustomer">SEV & NAMKEEN</a></li>
					<li><a href="biscuitcustomer">BISCUITS & CHOCLATE</a></li>
					<li><a href="agarbatticustomer">AGARBATTI & POJJA ITEMS</a></li>
					<li><a href="dryfruitcustomer">DRY FRUITS</a></li>
					<li><a href="dailyesscustomer">DAILY ESSENTIALS</a></li>
					<li><a href="dairycustomer">DAIRY PRODUCTS</a></li>

				</ul>
				<ul class="box input-box">
					<li class="link_name">Review us</li>
					<form action="review" method="post">
						<input type="text" placeholder="Enter your review here"
							style="height: 5cm;" name="review"><br> <br> <input
							type="text" placeholder="Enter yours email" name="email_id">

						<br> <br>
						<center>
							<button type="submit" class="btn btn-success">submit
								review</button>
						</center>
					</form>
				</ul>
			</div>
		</div>
		<div class="bottom-details">
			<div class="bottom_text">
				<span class="copyright_text">Copyright © 2023 <a href="#">Jain
						Provision</a>All rights reserved
				</span> <span class="policy_terms"> <a href="#">Privacy policy</a> <a
					href="#">Terms & condition</a>
				</span>
			</div>
		</div>
	</footer>






	<script
		src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
	<script src="indec.js"></script>


<script>
        let boydl = document.body
        // console.log( boydl)
        let img = document.querySelector('.img');
        let sms = document.querySelector('.sms');

        document.addEventListener('mousemove',() =>{
            img.classList.add('active')
        })
        document.addEventListener('mousemove',() =>{
            sms.classList.add('active')
        })
    </script>
    



</body>
</html>