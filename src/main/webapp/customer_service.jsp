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
}

body {
	width: 100vw;
	height: 100vh;
	font-family: sans-serif;
	padding: 10em 10em;
	background-color:blue;
	opacity: 0.5;
	background-position: center;
	background-repeat: no-repeat;
	background-position: 100% 20%;
	background-size: cover;
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.glass {
	width: 1100px;
	height: auto;
	/* background-color: rgba(255, 255, 255, 0.1); */
	background-color: rgba(255, 255, 255, 0.5);
	
	padding: 50px;
	color: #000;
	border-radius: 9px;
	backdrop-filter: blur(50px);
	border: 2px solid transparent;
	background-clip: padding-box;
	box-shadow: 10px 10px 10px rgba(45, 55, 68, 0.3);
	line-height: 1.5;
	transform: translatey(-5%);
	transition: transform 0.5s;
}
.glass_2{
width: 1100px;
	height: auto;
	/* background-color: rgba(255, 255, 255, 0.1); */
	background-color: rgba(255, 255, 255, 0.5);
	
	padding: 50px;
	color: #000;
	border-radius: 9px;
	backdrop-filter: blur(50px);
	border: 2px solid transparent;
	background-clip: padding-box;
	box-shadow: 10px 10px 10px rgba(45, 55, 68, 0.3);
	line-height: 1.5;
	transform: translatey(-5%);
	transition: transform 0.5s;
}

.glass_2 h1 {
	font-size: 3rem;
	text-align: center;
	font-weight: 1000;
}

.glass_2 h2 {
	font-size: 1.5rem;
	margin-top: 20px;
	text-align: center;
}


.glass-1 {
	width: 500px;
	height: 400px;
	background-color: rgba(255, 255, 255, 0.1);
	padding: 50px;
	color: rgb(122, 82, 82);
	border-radius: 9px;
	backdrop-filter: blur(50px);
	border: 2px solid transparent;
	background-clip: padding-box;
	box-shadow: 10px 10px 10px rgba(45, 55, 68, 0.3);
	line-height: 1.5;
	transform: translatey(-5%);
	transition: transform 0.5s;
	font-size: 1.7rem;
}

.glass h1 {
	font-size: 3rem;
	text-align: center;
	font-weight: 1000;
}

.glass h2 {
	font-size: 1.5rem;
	margin-top: 20px;
	text-align: center;
}
.col-sm h2{
font-size: 1.5rem;
	margin-top: 20px;
	text-align: center;
	border-radius: 20px;
	 border: 2px groove red;
	 box-shadow: 10px 10px 10px rgba(45, 55, 68, 0.3);
}

.input {
	width: 100%;
	height: 70px;
	overflow: hidden;
	margin-top: 40px;
	text-align: center;
	align-items: center;
}

.input input {
	width: 100%;
	height: 70px;
	border: 5px solid red;
	padding-left: 30px;
	padding-top: 0;
	outline: none;
	font-size: 2rem;
	border-radius: 20px;
	text-align: center;
	align-items: center;
	
}

.glass p {
	font-size: 1.6rem;
	margin-top: 30px;
	font-weight: 700;
	text-align: center;
	color: blue;
}
</style>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
<div class="container">
	<div class="glass">
		<h1>Ask Your Question??</h1>
		<h2>Yeah,ask Some Question</h2>
		<div class="input">
			<input type="text" id="userBox"
				onkeydown="if(event.keyCode == 13){ talk()}"
				placeholder="Type your Question" />
		</div>
		<p id="chatLog">Answer Appering Hear......</p>
		
	</div>
	<br>
	<br>
	<br>
	<br>
	 <div class="glass_2">
		<h1>Question you may ask</h1>
		
		<div class="container">
  <div class="row">
    <div class="col-sm">
     <h2>About us ?</h2>
    </div>
    <div class="col-sm">
     <h2>About Delivery ?</h2>
    </div>
    <div class="col-sm">
     <h2>About Customer Service ?</h2>
    </div>
  </div>
  <div class="row">
    <div class="col-sm">
     <h2>About Catigoris ?</h2>
    </div>
    <div class="col-sm">
     <h2>About Adress ?</h2>
    </div>
    <div class="col-sm">
     <h2>About Timming & days ?</h2>
    </div>
  </div>
</div>
		
		
	</div> 
	
	
	
	<script src="app.js"></script>
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