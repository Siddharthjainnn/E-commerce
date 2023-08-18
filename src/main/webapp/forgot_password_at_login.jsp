<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
#highlighted {
	position: relative;
	background-color: #dc143c;
}

#highlighted .container-fluid h1, #highlighted .container-fluid p {
	color: #fff;
}

#highlighted .container-fluid h1 {
	font-size: 54px;
	font-family: Verlag, museo-sans, 'Helvetica Neue', Helvetica, Arial,
		sans-serif;
	color: #414141;
	font-weight: 300;
}

#content {
	background-position: right bottom;
	background-repeat: no-repeat;
}

.interior-page {
	background-color: #FFF;
	padding-bottom: 30px;
}

#highlighted+#content.interior-page .interior-page-nav {
	margin-top: -4em;
}

#highlighted+#content.interior-page .interior-page-nav, .interior-page .interior-page-nav
	{
	padding-left: 0;
}

.sidebar {
	margin-top: 2em;
}

.content-area-right {
	max-width: 1200px;
	padding-right: 15px;
	padding-left: 15px;
}

.container-fluid>.row h2.crumb-title {
	margin-bottom: 0;
}

.page-title {
	min-height: 50px;
}

.page-title, ul {
	margin: 0;
	list-style: none;
}

.content-crumb-div {
	margin: 5px 0 20px;
}

a {
	text-decoration: none;
}

.container-fluid .row .modal, .page .modal {
	position: fixed;
	top: 35%;
}

#highlighted+#content.interior-page .interior-page-nav, .interior-page .interior-page-nav
	{
	padding-left: 0;
}

#highlighted+#content.interior-page .interior-page-nav {
	margin-top: -4em;
}

.dynamicDiv.panel-group {
	border: 1px solid #E7E9E9;
	margin-left: 30px;
}

.panel-group {
	margin-bottom: 0;
	background-color: #fff;
}

.panel-group .panel {
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	border: none;
	box-shadow: none;
}

.panel-group .panel-heading {
	padding: 0;
	border: none;
}

.panel-default>.panel-heading {
	color: #333;
	background-color: #f5f5f5;
	border-color: #ddd;
}

.panel-group .panel-heading .panel-title {
	font-size: 1.1em;
	font-family: Verlag, museo-sans, 'Helvetica Neue', Helvetica, Arial,
		sans-serif;
}

.interior-page-nav .panel-group .panel-heading .panel-title a {
	background: 0 0;
}

.panel-group .panel-heading .panel-title a {
	display: block;
	padding: 15px 45px 15px 15px;
	background: url(/resources/images/misc/icon_accordion-open.png) 95%
		center no-repeat #f6f6f6;
}

span.subMenuHighlight, ul.panel-heading li.panel-title a:hover {
	color: #ed3c95;
}

.panel-group .panel-heading .panel-title {
	font-size: 1.1em;
	font-family: Verlag, museo-sans, 'Helvetica Neue', Helvetica, Arial,
		sans-serif;
}

ul.panel-heading {
	margin-bottom: 1px;
}

.panel-group .panel-heading .panel-title a {
	display: block;
	padding: 15px 45px 15px 15px;
	background: url(/resources/images/misc/icon_accordion-open.png) 95%
		center no-repeat #f6f6f6;
}

.panel-group {
	margin-bottom: 0;
	background-color: #fff;
}

.label-default {
	background-color: #fff;
	margin-top: 10px;
}

label {
	display: inline-block;
	margin-bottom: 5px;
	font-weight: 700;
}

.form-control {
	border-radius: 0;
}

.btn-primary {
	color: #fff;
	background-color: #dc143c;
	border-color: #ea3e10;
	width: 100%;
}

.btn-block {
	display: block;
}

.btn {
	padding: 8px 28px;
	font-weight: 400;
	-webkit-transition: background .3s ease-in;
	transition: background .3s ease-in;
	white-space: normal;
	border-width: 0 0 1px;
}

.content-area-right {
	margin-top: 10px;
}

@media ( min-width : 992px) #highlighted .container-fluid {
	margin-bottom
	:
	 
	2
	.5rem
	;
	
  
}
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body style="margin-left: 10cm;margin-top: 4cm; ">

	<div class="container-fluid">
		<div class="row">
			<div
				class="col-sm-9 col-sm-offset-3 col-md-9 col-md-offset-3 col-lg-10 col-lg-offset-2">
				<h1>Forgot Password</h1>
			</div>
		</div>
	</div>
	</div>
	<div id="content" class="interior-page">
		<div class="container-fluid">
			<div class="row">
				<!--Sidebar-->
				<div
					class="col-sm-3 col-md-3 col-lg-2 sidebar equal-height interior-page-nav hidden-xs">
					<div class="dynamicDiv panel-group" id="dd.0.1.0">
						<div id="subMenu" class="panel panel-default">
							<ul class="subMenuHighlight panel-heading">
								<li class="subMenuHighlight panel-title" id="subMenuHighlight">
									<a id="li_291" class="subMenuHighlight" href="create_now.jsp"><span>Register</span></a>
								</li>
							</ul>
							<ul class="panel-heading">
								<li class="panel-title"><a class="subMenu1" href="forgot_password_at_login.jsp"><span
										class="subMenuHighlight">Forgot Password</span></a></li>
							</ul>
							<ul class="panel-heading">
								<li class="panel-title"><a class="subMenu1" href="login.jsp"><span>Login</span></a>
								</li>
							</ul>
						</div>
						<div class="item item-nopad item-noborder item-gold">
							<a style="padding: 5% 0px;" href=""
								class="btn btn-primary btn-block" role="button">LEARN MORE</a>
						</div>
					</div>
				</div>

				<!--Content-->
				<div class="col-sm-9 col-md-9 col-lg-10 content equal-height">
					<div class="content-area-right">
						<div class="content-crumb-div">
							<a href="home.jsp">Home</a> | <a href="login.jsp">Your Account</a> | Forgot
							Password
						</div>
						<form action="otp_servelet_for_forgot_password" method="post">
						<div class="row">
							<div class="col-md-5 forgot-form">
								<p>Please enter your User Id below and we will send
									you information to change your password On Registed Email Id.</p>
								<label  for="un">BringIt User Id</label> <input
									id="email_addy" name="user_id" class="form-control"
									type="text"><br> 
									
									<button type="submit"  class="btn btn-primary" role="button" >I FORGOT</a>
							</div>
							</form>
							<div class="col-md-5 forgot-return" style="display: none;">
								<h2>Reset Password Sent</h2>
								<p>An email has been sent to your address with a reset
									password you can use to access your account.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>