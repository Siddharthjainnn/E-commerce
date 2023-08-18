<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	/* color: black; */
}

body {
	background-color: aliceblue;
}

.header {
	width: 100%;
	height: 5rem;
	background-color: rgb(236, 0, 0);
	display: flex;
	justify-content: space-around;
	align-items: center;
}

.logo {
	/* border: 2px solid black; */
	color: white;
}

.logo h2 {
	font-size: 2rem;
	font-weight: 600;
	font-family: sans-serif;
	letter-spacing: 3px;
	padding: 1rem 0.5rem;
}

.header .nav {
	/* border: 2px solid black; */
	width: 70%;
	display: flex;
	justify-content: flex-start;
	align-items: center;
}

.header .nav ul li {
	display: inline-block;
	padding: 1rem 2rem;
}

.header .nav ul li a {
	font-size: 1.5rem;
	font-family: sans-serif;
	font-weight: 500;
	color: white;
	letter-spacing: 3px;
	text-decoration: none;
	cursor: pointer;
}

.header .nav ul li a:hover {
	text-decoration: underline;
}

.home {
	width: 100%;
	height: auto;
	/* border: 2px solid black; */
	display: flex;
	justify-content: center;
	align-items: center;
}

.home .home-content {
	max-width: 1600px;
	width: 100%;
	height: auto;
	margin: 2.5rem 0 1rem 0;
	background-color: white;
	box-shadow: 0px 0px 7px 2px gray;
	border-radius: 0.3rem;

	/* border: 2px solid red; */
}

/* clocl start */
.container {
	/* border: 2px solid red; */
	position: relative;
	/* width: 100%;
   height: 100%; */
	/* display: flex;
   justify-content: center;
   align-items: center; */
	display: flex;
	justify-content: space-evenly;
}

.clock {
	/* border: 2px solid goldenrod; */
	box-shadow: 0px 0xp 10px 7px rgb(187, 138, 15);
	position: relative;
	/* left: 20px; */
	/* right: 0px; */
	float: right;
	clear: both;
	top: 30px;
	width: 200px;
	height: 200px;
	border-radius: 50%;
	margin-right: 9rem;
	margin-bottom: 2rem;
	/* background-color: rgb(26, 24, 24); */
	background-color: white;
	box-shadow: 0px 0px 4px 1px gray;
	display: flex;
	justify-content: center;
	align-items: center;

	/* animation: animationbos ease 18s infinite; */
}
/* @keyframes animationbos{
    0%{
        transform:  rotateX(0deg) rotateY(0deg) rotateZ(0deg);
    }
    50%{
        transform: rotateX(20deg) rotateY(20deg) rotateZ(10deg);

    }
    75%{
         transform: translateY(30px); 
    }
    100%{
        transform: translateX(30px);
    }
}  */
.clock span {
	position: absolute;
	/* position: relative; */
	transform: rotate(calc(30deg * var(- -i)));
	inset: 8px;
	text-align: center;

	/* animation: animation ease 12s infinite; */
}
/* @keyframes animation {
    0%{
        transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg);
    } 
     0%{
        transform: rotateX(0deg) rotateY(0deg) rotateZ(360deg);
    }
} */
.clock span b {
	transform: rotate(calc(-30deg * var(- -i)));
	display: inline-block;
	font-size: 16px;
	/* box-shadow: 0px 0px 2px 1px gray; */
	/* border: none; */
}

.clock span .sty-n {
	color: red;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	font-weight: 600;
}

.container .clock::before {
	content: "";
	position: absolute;
	width: 13px;
	height: 13px;
	border-radius: 50%;
	background-color: black;
}

.hend {
	position: absolute;
	display: flex;
	justify-content: center;
	align-items: flex-end;
}

.hend i {
	position: absolute;
	background-color: var(- -clr);
	width: 4px;
	height: 150px;
	border-radius: 8px;
}

.hend .w {
	height: 60px;
}

.hend  .p {
	width: 3px;
	height: 75px;
}

.hend  .b {
	width: 2px;
	height: 90px;
}

/* clocl end */
.hed-clock {
	width: 68%;
}

.home .home-content .hed {
	/*border:  2px solid black;*/
	font-size: 3rem;
	font-family: serif;
	font-weight: 600;
	margin: 1rem;
	word-spacing: 5px;
	letter-spacing: 3px;
	/* text-shadow: 0px 0px 5px 8px red ; */
}

.home .home-content h1 .animation {
	color: red;
}

.home .home-content h1 .animation::before {
	content: "";
	position: absolute;
	/* width: 150px; */
	/* height: 70px; */
	/* display: block; */
	/* background-color: red; */
	font-size: 3rem;
	font-weight: 400;
	color: red;
	padding: 0 1rem 0 1rem;
	/* box-shadow: 0px 0px 4px 1px gray; */
	animation: animationbox step-end 12s infinite;
}
@keyframes animationbox{
    0% {
        content: 'Vijay Nagar';
    } 
    20% {
        content: 'Rajwara';
    }
    40% {
        content: 'Bhawarkua';
    }
    60% {
        content: 'Gita Bawan';
    }
    80% {
        content: 'Palasia';
    }
    100% {
        content: 'Tin Emli';
    }
}
/* weather css */
.weather-content {
	width: 30%;
	margin: 1.5rem;
}

.card {
	/* max-width: 470px; */
	background: linear-gradient(135deg, #00feba, #5b548a);
	color: #fff;
	/* margin: 100px auto 0; */
	border-radius: 20px;
	padding: 40px 35px;
	/* border: 2px solid black; */
	padding: 1rem;
	/* text-align:  center; */
}

.weather {
	display: none;
	/* color: black; */
	text-align: center;
}

.weather .temp {
	/* font-size: ; */
	/* color: aqua; */
	text-align: center;
}

.search {
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
	/* border: 2px solid red; */
}

.search input {
	border: 0;
	outline: 0;
	background: #ebfffc;
	/* color: #555; */
	padding: 10px 25px;
	height: 60px;
	border-radius: 30px;
	flex: 1;
	margin-right: 16px;
	font-size: 18px;
	box-shadow: 0px 0px 5px 3px gray;
}

.search button {
	border: 0;
	outline: 0;
	background: #ebfffc;
	border-radius: 50%;
	width: 60px;
	height: 60px;
	box-shadow: 0px 0px 5px 3px gray;
	cursor: pointer;
}

.search button img {
	width: 30px;
}

.weather-icon {
	width: 120px;
	margin-top: 30px;
}

.weather h1 {
	font-size: 80px;
	font-weight: 500;
}

.weather h2 {
	font-size: 45px;
	font-weight: 400;
	margin-top: -10px;
}

.details {
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 20px;
	margin-top: 50px;
}

.col {
	display: flex;
	align-items: center;
	text-align: left;
}

.col img {
	width: 20px;
	margin-right: 10px;
}

.humidity, .wind {
	font-size: 28px;
	margin-top: -6px;
}

.error {
	text-align: center;
	margin-left: 10px;
	font-size: 14px;
	margin-top: 10px;
	display: none;
}

.commentandreview {
	/* border: 2px solid goldenrod; */
	/* box-shadow: 0px 0xp 10px 7px rgb(187, 138, 15); */
	position: relative;
	/* left: 20px; */
	/* right: 0px; */
	float: right;
	clear: both;
	top: 30px;
	width: 200px;
	height: 200px;
	margin-right: 9rem;
	margin-bottom: 2rem;
	/* background-color: rgb(26, 24, 24); */
	background-color: white;
	/* box-shadow: 0px 0px 4px 1px gray; */
	display: flex;
	justify-content: center;
	align-items: center;
}

.anyquestion {
	/* border: 2px solid goldenrod; */
	/* box-shadow: 0px 0xp 10px 7px rgb(187, 138, 15); */
	position: relative;
	/* left: 20px; */
	/* right: 0px; */
	float: right;
	clear: both;
	width: 200px;
	height: 200px;
	margin-right: 9rem;
	/* background-color: rgb(26, 24, 24); */
	background-color: white;
	/* box-shadow: 0px 0px 4px 1px gray; */
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>
</head>
<body>
	<%-- <%@include file="header.jsp" %> --%>

	<div class="header">
		<div class="logo">
			<h2>Servises</h2>
		</div>
		<div class="nav">
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">contect</a></li>
				<li><a href="#">shyam</a></li>
			</ul>
		</div>
	</div>


	<div class="home">
		<div class="home-content">

			<!-- clock start -->



			<div class="container">


				<div class="hed-clock">

					<h1 class="hed">
						WE DELIVER IN , <span class="animation"></span>
					</h1>






					<h3 style="font-weight: 500">
						<h1>Welcome to our Jain Provision Store Kirana Project's
							Delivery Services Page!</h1>
						<br>
						<center>
							<br>
							<h3>At Jain Provision Store, we take great pride in
								providing seamless and efficient delivery services to our valued
								customers. We understand that getting your essential groceries
								and daily necessities delivered to your doorstep in a timely and
								reliable manner is of utmost importance. That's why we have
								designed our delivery services to ensure convenience, speed, and
								safety for all your orders.</h3>
							<br> <br>
							<h2>Here's what sets our delivery services apart:</h2>
							<br> <br>
							<h2>1. Express Delivery:</h2>
							<br> Time is precious, and we value yours. With our express
							delivery option, you can get your Kirana essentials delivered
							within a few hours of placing your order. Now, never worry about
							running out of supplies or waiting for days for your groceries to
							arrive. <br> <br>
							<h2>2. Wide Coverage:</h2>
							<br> We are committed to reaching every corner of the city.
							Our extensive delivery network covers a large area, ensuring that
							no matter where you reside, we'll get your order to you. Just sit
							back and relax while we bring your Kirana goodies right to your
							doorstep. <br> <br>
							<h2>3. Contactless Delivery:</h2>
							<br> Your safety and well-being are paramount to us. In
							light of the ongoing global situation, we offer contactless
							delivery options. Our delivery personnel will drop off your
							package at your doorstep, minimizing any physical contact. <br>
							<br>
							<h2>4. Real-Time Order Tracking:</h2>
							<br> Stay in the loop at all times with our real-time order
							tracking feature. Once your order is placed, you can track its
							journey from our store to your home. No more guessing games—know
							exactly when your groceries will arrive. <br> <br>
							<h2>5. Customer Support:</h2>
							<br> Have a question or need assistance? Our dedicated
							customer support team is always here to help. Whether you need
							help with placing an order, tracking a delivery, or have any
							concerns, we are just a call or message away. <br> <br>
							<h2>6.Flexible Delivery Slots:</h2>
							<br> We understand that everyone has a busy schedule. That's
							why we offer flexible delivery slots throughout the day. Choose a
							time that works best for you, and we'll ensure your Kirana
							products arrive right on time. <br> <br>
							<h2>7. Quality Packaging:</h2>
							<br> Your satisfaction is our top priority. We ensure that
							all your items are carefully packaged to maintain their freshness
							and quality during transit. Our team takes extra care to handle
							perishable items with the utmost diligence. <br> <br>
							<h2>8. Hassle-Free Returns:</h2>
							<br> While we strive to provide you with the best products,
							we understand that returns may be necessary on rare occasions.
							Our hassle-free return process ensures that if you are not
							satisfied with any product, we'll take it back without any
							inconvenience to you. <br> <br>
							<hr>
							<h1>
						</center>
						Jain provision Store's Kirana delivery services are designed with
						you in mind. We want to make your shopping experience enjoyable,
						stress-free, and convenient. Whether you need to stock up on daily
						essentials or surprise a loved one with a thoughtful gift, we've
						got you covered. <br> <br> Place your order today and
						experience the joy of receiving your Kirana essentials right at
						your doorstep. Thank you for choosing [Project Name] - Your
						trusted partner in grocery shopping and beyond!

						</h1>

					</h3>


					<img src="./image/Online_Shoping_29.jpg" alt="" width="100%"
						height="500px">

				</div>

				<div class="weather-content">

					<div class="card">


						<div class="search">
							<input type="text" placeholder="Enter City Name"
								class="search input">
							<button class="search button">
								<img src="./WeatherImages/search.png" />
							</button>
						</div>


						<div class="error">
							<p>Invalid City Name</p>
						</div>


						<div class="weather">
							<img src="./WeatherImages/rain.png" alt="rain"
								class="weather-icon">
							<h1 class="temp">22°C</h1>
							<h2 class="city">New York</h2>

							<div class="details">

								<div class="col">
									<img src="./WeatherImages/humidity.png" alt="">
									<div>
										<p class="humidity">50%</p>
										<p>Humidity</p>
									</div>
								</div>

								<div class="col">
									<img src="./WeatherImages/wind.png" alt="">
									<div>
										<p class="wind">15 km/h</p>
										<p>Wind Speed</p>
									</div>
								</div>

							</div>

						</div>
					</div>

					<div class="clock">

						<!-- <div class="dot1"></div> -->
						<div style="-clr: #ff3d58;" class="hend" id="hours">
							<i class="w"></i>
						</div>
						<div style="-clr: #00a6ff;" class="hend" id="min">
							<i class="p"></i>
						</div>
						<div style="-clr: #dbff0c;" class="hend" id="sec">
							<i class="b"></i>
						</div>


						<span style="-i: 1;"><b>1</b></span> <span style="-i: 2;"><b>2</b></span>
						<span style="-i: 3;"><b class="sty-n">3</b></span> <span
							style="-i: 4;"><b>4</b></span> <span style="-i: 5;"><b>5</b></span>
						<span style="-i: 6;"><b class="sty-n">6</b></span> <span
							style="-i: 7;"><b>7</b></span> <span style="-i: 8;"><b>8</b></span>
						<span style="-i: 9;"><b class="sty-n">9</b></span> <span
							style="-i: 10;"><b>10</b></span> <span style="-i: 11;"><b>11</b></span>
						<span style="-i: 12;"><b class="sty-n">12</b></span>

					</div>

					<!-- clock end -->


					<div class="commentandreview">

						<img src="./image/deliver1.jpeg" alt="" width="100%"
							height="200px"><br>

					</div>

					<div class="commentandreview">

						<img src="./image/homedelivery.png" alt="" width="100%"
							height="200px"><br>

					</div>

					<div class="commentandreview">

						<img src="./image/delivery3.png" alt="" width="100%"
							height="200px"><br>

					</div>
					<div class="commentandreview">

						<img src="./image/delivery_by_siddharth.jpeg" alt="" width="100%"
							height="200px"><br>

					</div>

				</div>



			</div>













		</div>

	</div>
















	<!-- weather end -->



	<script src="ok.js"></script>
	
	
</body>
</html>