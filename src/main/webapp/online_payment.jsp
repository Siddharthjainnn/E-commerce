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
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<style>
.column {
	float: left;
	width: 33.33%;
	padding: 5px;
	
}

/* Clear floats after image containers */
.row::after {
	content: "";
	clear: both;
	display: table;
}
</style>
</head>
<body>

	<div class="row">
		<div class="column">
			<!--  <img src="./images/Offline Merchant.png" alt="Snow" style="width: 10cm;height: 15cm;"> -->
			<div class="conntainer">
				<div class="jumbotron jumbotron-fluid">
					<div class="container">
						<center>
							<h1 style="color: olive;">JAIN PROVISION STORE</h1>
							<p style="color: black;">A Complete Kirana Shop With more
								than 1250+ Products</p>

							<h2 style="color: orange;">YOUR ORDER STATUS</h2>
							<h5>
								congratulation!! you have got an free delivery <i
									class="fa-solid fa-truck  fa-2xl"></i>
							</h5>

							<br>

							<div class="progress">
								<br> <br>
							</div>
							<h1>PAYMENT PENDING</h1>
							<br>
							<div class="progress">
								<div class="progress-bar" role="progressbar" style="width: 76%;"
									aria-valuenow="76" aria-valuemin="0" aria-valuemax="100">76%</div>
								<br>

								<hr>

								<!-- <i class="fa-solid fa-check fa-beat-fade fa-2xl" style="color: #09ec4d;"></i> -->
							</div>
					</div>
					<br>
					<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3679.2556794918914!2d75.87207187442333!3d22.75589082622925!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39630328b3e0c735%3A0x4648d971e7a41c08!2sJain%20Provision%20Store!5e0!3m2!1sen!2sin!4v1689988374847!5m2!1sen!2sin"
					width="500px" height="240px" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
				
			</div>
		</div>
		</center>
		<div class="column">
			<center>
				<h1 style="color: grey;">SCAN QR TO PAY</h1>
			</center>
			<BR>
			<HR>
			<BR> <BR>
			<center>
				<h3>Total Amount To Be Paid</h3>
			</center>
			<br>
			<hr>

			<center>
				<h2 style="color: red;">
					Rs.<span style="color: black;">7852/-</span>
				</h2>
			</center>

			<hr>

			<div class="jumbotron jumbotron-fluid">
				<div class="container">
					<form action="" method="post">
						<H5 style="color: red;">***note: please submit screen shot of
							your payment</H5>
						<div class="form-group">
							<input type="file" class="form-control"
								id="exampleInputPassword1"
								placeholder=" Enter your payment screenshot" name="image">
						</div>
						<center>
							<button type="submit" class="btn btn-primary">SUBMIT</button>
						</center>
					</form>
				</div>
			</div>
		</div>
		<div class="column">
		<div class="jumbotron jumbotron-fluid">
					<div class="container">
			<img src="./images/Offline Merchant.png" alt="Mountains"
				style="width: 10cm; height: 15cm;">
				</div>
		</div>
	</div>



</body>
</html>