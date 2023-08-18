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
  rel="stylesheet"
/>
<!-- Google Fonts -->
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.1/mdb.min.css"
  rel="stylesheet"
/>

<style>
.img-box {
	border: 1px solid red;
	width: 100%;
	/*  height: 100vh; */
	position: relative;
	overflow: hidden;
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
<body >
<%@include file="header.jsp" %>

<div class="row">
  <div class="col-12 col-md-8"><img alt="" src="./images/loginvideio.gif" style="border-bottom-left-radius: 10%;border-bottom-right-radius: 10%;margin-top: 1cm;margin-left: 1cm;border-top-left-radius: 10%;"></div>
  <div class="col-6 col-md-4">


<div class="login-page" style="margin-top: 4cm; width: 10cm;margin-left: 3.5cm;">
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
					Forgot Password ? <a href="forgot_password_at_login.jsp" class="login-creat">Forgot
						Password ? </a>
				</p>

				<input type="submit" value="Login Now" class="Login-btn">
			</form>
		</div>
		</div>
</div>

</body>
</html>