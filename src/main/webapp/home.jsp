<%@page import="DTO.Product"%>
<%@page import="java.util.UUID"%>
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





<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- <link rel="stylesheet" href="Home.css"> -->



<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">





<!-- <link rel="stylesheet" href="index.css"> -->
<link rel="stylesheet" href="footer.css">
<style>

/*********footer*******************/
.
kilimanjaro_area {
	position: relative;
	z-index: 1;
}

.foo_top_header_one {
	background-color: #F0F0F0;
	color: #fff;
}

.section_padding_100_70 {
	padding-top: 100px;
	padding-bottom: 70px;
}

.foo_top_header_one {
	color: #fff;
}

.kilimanjaro_part {
	margin-bottom: 30px;
}

.foo_top_header_one .kilimanjaro_part>h5 {
	color: #fff;
}

.kilimanjaro_part h4, .kilimanjaro_part h5 {
	margin-bottom: 30px;
}

.kilimanjaro_single_contact_info>p, .kilimanjaro_single_contact_info>h5,
	.kilimanjaro_blog_area>a, .foo_top_header_one .kilimanjaro_part>p {
	color: rgba(255, 255, 255, .5);
}

p, ul li, ol li {
	font-weight: 300;
}

ul {
	margin: 0;
	padding: 0;
}

.kilimanjaro_bottom_header_one {
	background-color: #111;
}

.section_padding_50 {
	padding: 50px 0;
}

.kilimanjaro_bottom_header_one p {
	color: #fff;
	margin: 0;
}

p, ul li, ol li {
	font-weight: 300;
}

.kilimanjaro_bottom_header_one a {
	color: inherit;
	font-size: 14px;
}

a, h1, h2, h3, h4, h5, h6 {
	font-weight: 400;
}

.m-top-15 {
	margin-top: 15px;
}

ul {
	margin: 0;
	padding: 0;
}

.kilimanjaro_widget>li {
	display: inline-block;
}

p, ul li, ol li {
	font-weight: 300;
}

ol li, ul li {
	list-style: outside none none;
}

.kilimanjaro_widget a {
	border: 1px solid #333;
	border-radius: 6px;
	color: #888;
	display: inline-block;
	font-size: 13px;
	margin-bottom: 4px;
	padding: 7px 12px;
}

ul {
	margin: 0;
	padding: 0;
}

.kilimanjaro_links a {
	border-bottom: 1px solid #333;
	color: rgba(255, 255, 255, .5);
	display: block;
	font-size: 13px;
	margin-bottom: 5px;
	padding-bottom: 10px;
}

.kilimanjaro_links a {
	color: rgba(255, 255, 255, .5);
	font-size: 13px;
}

top-15 {
	margin-top: 15px;
}

.foo_top_header_one .kilimanjaro_part>h5 {
	color: #fff;
}

.kilimanjaro_part h4, .kilimanjaro_part h5 {
	margin-bottom: 30px;
}

.kilimanjaro_social_links>li {
	display: inline-block;
}

p, ul li, ol li {
	font-weight: 300;
}

.kilimanjaro_social_links a {
	border: 1px solid #333;
	border-radius: 6px;
	color: #888;
	display: inline-block;
	font-size: 13px;
	margin-bottom: 3px;
	padding: 7px 12px;
}

.kilimanjaro_blog_area .kilimanjaro_date {
	color: #27ae60;
	font-size: 13px;
	margin-bottom: 5px;
}

.kilimanjaro_blog_area>p {
	color: rgba(255, 255, 255, .5);
	line-height: 1.3;
	margin-bottom: 0;
}

.kilimanjaro_works>a {
	display: inline-block;
	float: left;
	position: relative;
	width: 33.33333333%;
	z-index: 1;
}

.kilimanjaro_thumb {
	left: 0;
	position: absolute;
	top: 0;
	width: 75px;
}

.kilimanjaro_links a i {
	padding-right: 10px;
}
/* :: 18.0 Footer Area CSS */
.footer_area {
	position: relative;
	z-index: 1;
}

.footer_bottom p>i, .footer_bottom p>a:hover {
	color: #27ae60;
}

.social_links_area {
	border-bottom: 1px solid rgba(255, 255, 255, 0.2);
	padding: 50px 0 30px 0;
	text-align: center;
	position: relative;
	z-index: 1;
}

.social_links_area>a:hover {
	color: #27ae60;
}

.inline-style .social_links_area>a:hover {
	background-color: transparent;
	color: #27ae60;
	border: 0px solid transparent;
}

.single_feature:hover .feature_text h4 {
	color: #27ae60;
}

.kilimanjaro_blog_area {
	border-bottom: 1px solid #333;
	margin-bottom: 15px;
	padding: 0 0 15px 90px;
	position: relative;
	z-index: 1;
}

.kilimanjaro_links a {
	border-bottom: 1px solid #333;
	color: rgba(255, 255, 255, .5);
	display: block;
	font-size: 13px;
	margin-bottom: 5px;
	padding-bottom: 10px;
}

* {
	box-sizing: border-box;
}

/* .container {
  background-image: url("https://www.toptal.com/designers/subtlepatterns/patterns/concrete-texture.png");
  display: flex;
  flex-wrap: wrap;
  height: 100vh;
  align-items: center;
  justify-content: center;
  padding: 0 20px;
}
 */
.rating {
	display: flex;
	width: 100%;
	justify-content: center;
	overflow: hidden;
	flex-direction: row-reverse;
	height: 150px;
	position: relative;
}

.rating-0 {
	filter: grayscale(100%);
}

.rating>input {
	display: none;
}

.rating>label {
	cursor: pointer;
	width: 40px;
	height: 40px;
	margin-top: auto;
	background-image:
		url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='126.729' height='126.73'%3e%3cpath fill='%23e3e3e3' d='M121.215 44.212l-34.899-3.3c-2.2-.2-4.101-1.6-5-3.7l-12.5-30.3c-2-5-9.101-5-11.101 0l-12.4 30.3c-.8 2.1-2.8 3.5-5 3.7l-34.9 3.3c-5.2.5-7.3 7-3.4 10.5l26.3 23.1c1.7 1.5 2.4 3.7 1.9 5.9l-7.9 32.399c-1.2 5.101 4.3 9.3 8.9 6.601l29.1-17.101c1.9-1.1 4.2-1.1 6.1 0l29.101 17.101c4.6 2.699 10.1-1.4 8.899-6.601l-7.8-32.399c-.5-2.2.2-4.4 1.9-5.9l26.3-23.1c3.8-3.5 1.6-10-3.6-10.5z'/%3e%3c/svg%3e");
	background-repeat: no-repeat;
	background-position: center;
	background-size: 76%;
	transition: .3s;
}

.rating>input:checked ~ label, .rating>input:checked ~ label ~ label {
	background-image:
		url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='126.729' height='126.73'%3e%3cpath fill='%23fcd93a' d='M121.215 44.212l-34.899-3.3c-2.2-.2-4.101-1.6-5-3.7l-12.5-30.3c-2-5-9.101-5-11.101 0l-12.4 30.3c-.8 2.1-2.8 3.5-5 3.7l-34.9 3.3c-5.2.5-7.3 7-3.4 10.5l26.3 23.1c1.7 1.5 2.4 3.7 1.9 5.9l-7.9 32.399c-1.2 5.101 4.3 9.3 8.9 6.601l29.1-17.101c1.9-1.1 4.2-1.1 6.1 0l29.101 17.101c4.6 2.699 10.1-1.4 8.899-6.601l-7.8-32.399c-.5-2.2.2-4.4 1.9-5.9l26.3-23.1c3.8-3.5 1.6-10-3.6-10.5z'/%3e%3c/svg%3e");
}

.rating>input:not(:checked) ~ label:hover, .rating>input:not(:checked) 
	~ label:hover ~ label {
	background-image:
		url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='126.729' height='126.73'%3e%3cpath fill='%23d8b11e' d='M121.215 44.212l-34.899-3.3c-2.2-.2-4.101-1.6-5-3.7l-12.5-30.3c-2-5-9.101-5-11.101 0l-12.4 30.3c-.8 2.1-2.8 3.5-5 3.7l-34.9 3.3c-5.2.5-7.3 7-3.4 10.5l26.3 23.1c1.7 1.5 2.4 3.7 1.9 5.9l-7.9 32.399c-1.2 5.101 4.3 9.3 8.9 6.601l29.1-17.101c1.9-1.1 4.2-1.1 6.1 0l29.101 17.101c4.6 2.699 10.1-1.4 8.899-6.601l-7.8-32.399c-.5-2.2.2-4.4 1.9-5.9l26.3-23.1c3.8-3.5 1.6-10-3.6-10.5z'/%3e%3c/svg%3e");
}

.emoji-wrapper {
	width: 100%;
	text-align: center;
	height: 100px;
	overflow: hidden;
	position: absolute;
	top: 0;
	left: 0;
}

.emoji-wrapper:before, .emoji-wrapper:after {
	content: "";
	height: 15px;
	width: 100%;
	position: absolute;
	left: 0;
	z-index: 1;
}

.emoji-wrapper:before {
	top: 0;
	background: linear-gradient(to bottom, rgba(255, 255, 255, 1) 0%,
		rgba(255, 255, 255, 1) 35%, rgba(255, 255, 255, 0) 100%);
}

.emoji-wrapper:after {
	bottom: 0;
	background: linear-gradient(to top, rgba(255, 255, 255, 1) 0%,
		rgba(255, 255, 255, 1) 35%, rgba(255, 255, 255, 0) 100%);
}

.emoji {
	display: flex;
	flex-direction: column;
	align-items: center;
	transition: .3s;
}

.emoji>svg {
	margin: 15px 0;
	width: 70px;
	height: 70px;
	flex-shrink: 0;
}

#rating-1:checked ~ .emoji-wrapper>.emoji {
	transform: translateY(-100px);
}

#rating-2:checked ~ .emoji-wrapper>.emoji {
	transform: translateY(-200px);
}

#rating-3:checked ~ .emoji-wrapper>.emoji {
	transform: translateY(-300px);
}

#rating-4:checked ~ .emoji-wrapper>.emoji {
	transform: translateY(-400px);
}

#rating-5:checked ~ .emoji-wrapper>.emoji {
	transform: translateY(-500px);
}

/* .feedback {
  max-width: 360px;
  background-color: #fff;
  width: 100%;
  padding: 30px;
  border-radius: 8px;
  display: flex;
  flex-direction: column;
  flex-wrap: wrap;
  align-items: center;
  box-shadow: 0 4px 30px rgba(0,0,0,.05);
} */
.card:hover {
	transform: scale(1.05); /* Increase the size on hover */
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
	/* Change box-shadow on hover */
	background-color: #f0f0f0; /* Change background color on hover */
}

.button-24 {
	background: #FF4742;
	border: 1px solid #FF4742;
	border-radius: 6px;
	box-shadow: rgba(0, 0, 0, 0.1) 1px 2px 4px;
	box-sizing: border-box;
	color: #FFFFFF;
	cursor: pointer;
	display: inline-block;
	font-family: nunito, roboto, proxima-nova, "proxima nova", sans-serif;
	font-size: 16px;
	font-weight: 800;
	line-height: 16px;
	min-height: 60px;
	outline: 0;
	padding: 12px 14px;
	text-align: center;
	text-rendering: geometricprecision;
	text-transform: none;
	user-select: none;
	-webkit-user-select: none;
	touch-action: manipulation;
	vertical-align: middle;
}

.button-24:hover, .button-24:active {
	background-color: initial;
	background-position: 0 0;
	color: #FF4742;
}

.button-24:active {
	opacity: .5;
}

html {
	scroll-behavior: smooth;
}

.testimonial-card .card-up {
	height: 120px;
	overflow: hidden;
	border-top-left-radius: 0.25rem;
	border-top-right-radius: 0.25rem;
}

.testimonial-card .avatar {
	width: 110px;
	margin-top: -60px;
	overflow: hidden;
	border: 3px solid #fff;
	border-radius: 50%;
}
/* The flip card container - set the width and height to whatever you want. We have added the border property to demonstrate that the flip itself goes out of the box on hover (remove perspective if you don't want the 3D effect */
.flip-card {
	background-color: transparent;
	width: 300px;
	height: 200px;
	border: 1px solid #f1f1f1;
	perspective: 1000px; /* Remove this if you don't want the 3D effect */
}

/* This container is needed to position the front and back side */
.flip-card-inner {
	position: relative;
	width: 100%;
	height: 100%;
	text-align: center;
	transition: transform 0.8s;
	transform-style: preserve-3d;
}

/* Do an horizontal flip when you move the mouse over the flip box container */
.flip-card:hover .flip-card-inner {
	transform: rotateY(180deg);
}

/* Position the front and back side */
.flip-card-front, .flip-card-back {
	position: absolute;
	width: 100%;
	height: 100%;
	-webkit-backface-visibility: hidden; /* Safari */
	backface-visibility: hidden;
}

/* Style the front side (fallback if image is missing) */
.flip-card-front {
	background-color: #bbb;
	color: black;
}

/* Style the back side */
.flip-card-back {
	background-color: dodgerblue;
	color: white;
	transform: rotateY(180deg);
}

.modal {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.7);
}

.modal-content {
	background-color: #fff;
	margin: 10% auto;
	padding: 20px;
	width: 10cm;
	height: auto;
	text-align: center;
}

.close {
	position: absolute;
	top: 0;
	right: 0;
	padding: 10px;
	cursor: pointer;
}

@import url(https://fonts.googleapis.com/css?family=Open+Sans:700,300);

.frame {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 400px;
	height: 400px;
	margin-top: -200px;
	margin-left: -200px;
	border-radius: 2px;
	box-shadow: 4px 8px 16px 0 rgba(0, 0, 0, 0.1);
	overflow: hidden;
	background: linear-gradient(to top right, darkmagenta 0%, hotpink 100%);
	color: #333;
	font-family: "Open Sans", Helvetica, sans-serif;
}

.center {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 300px;
	height: 260px;
	border-radius: 3px;
	box-shadow: 8px 10px 15px 0 rgba(0, 0, 0, 0.2);
	background: #fff;
	display: flex;
	align-items: center;
	justify-content: space-evenly;
	flex-direction: column;
}

.title {
	width: 100%;
	height: 50px;
	border-bottom: 1px solid #999;
	text-align: center;
}

h1 {
	font-size: 16px;
	font-weight: 300;
	color: #666;
}

.dropzone {
	width: 100px;
	height: 80px;
	border: 1px dashed #999;
	border-radius: 3px;
	text-align: center;
}

.upload-icon {
	margin: 25px 2px 2px 2px;
}

.upload-input {
	position: relative;
	top: -62px;
	left: 0;
	width: 100%;
	height: 100%;
	opacity: 0;
}

.btn {
	display: block;
	width: 140px;
	height: 40px;
	background: darkmagenta;
	color: #fff;
	border-radius: 3px;
	border: 0;
	box-shadow: 0 3px 0 0 hotpink;
	transition: all 0.3s ease-in-out;
	font-size: 14px;
}

.btn:hover {
	background: rebeccapurple;
	box-shadow: 0 3px 0 0 deeppink;
}

.section_our_solution .row {
	align-items: center;
}

.our_solution_category {
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
}

.our_solution_category .solution_cards_box {
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.solution_cards_box .solution_card {
	flex: 0 50%;
	background: #fff;
	box-shadow: 0 2px 4px 0 rgba(136, 144, 195, 0.2), 0 5px 15px 0
		rgba(37, 44, 97, 0.15);
	border-radius: 15px;
	margin: 8px;
	padding: 10px 15px;
	position: relative;
	z-index: 1;
	overflow: hidden;
	min-height: 265px;
	transition: 0.7s;
}

.solution_cards_box .solution_card:hover {
	background: #309df0;
	color: #fff;
	transform: scale(1.1);
	z-index: 9;
}

.solution_cards_box .solution_card:hover::before {
	background: rgb(85 108 214/ 10%);
}

.solution_cards_box .solution_card:hover .solu_title h3,
	.solution_cards_box .solution_card:hover .solu_description p {
	color: #fff;
}

.solution_cards_box .solution_card:before {
	content: "";
	position: absolute;
	background: rgb(85 108 214/ 5%);
	width: 170px;
	height: 400px;
	z-index: -1;
	transform: rotate(42deg);
	right: -56px;
	top: -23px;
	border-radius: 35px;
}

.solution_cards_box .solution_card:hover .solu_description button {
	background: #fff !important;
	color: #309df0;
}

.solution_card .so_top_icon {
	
}

.solution_card .solu_title h3 {
	color: #212121;
	font-size: 1.3rem;
	margin-top: 13px;
	margin-bottom: 13px;
}

.solution_card .solu_description p {
	font-size: 15px;
	margin-bottom: 15px;
}

.solution_card .solu_description button {
	border: 0;
	border-radius: 15px;
	background: linear-gradient(140deg, #42c3ca 0%, #42c3ca 50%, #42c3cac7 75%)
		!important;
	color: #fff;
	font-weight: 500;
	font-size: 1rem;
	padding: 5px 16px;
}

.our_solution_content h1 {
	text-transform: capitalize;
	margin-bottom: 1rem;
	font-size: 2.5rem;
}

.our_solution_content p {
	
}

.hover_color_bubble {
	position: absolute;
	background: rgb(54 81 207/ 15%);
	width: 100rem;
	height: 100rem;
	left: 0;
	right: 0;
	z-index: -1;
	top: 16rem;
	border-radius: 50%;
	transform: rotate(-36deg);
	left: -18rem;
	transition: 0.7s;
}

.solution_cards_box .solution_card:hover .hover_color_bubble {
	top: 0rem;
}

.solution_cards_box .solution_card .so_top_icon {
	width: 60px;
	height: 60px;
	border-radius: 50%;
	background: #fff;
	overflow: hidden;
	display: flex;
	align-items: center;
	justify-content: center;
}

.solution_cards_box .solution_card .so_top_icon img {
	width: 40px;
	height: 50px;
	object-fit: contain;
}

/*start media query*/
@media screen and (min-width: 320px) {
	.sol_card_top_3 {
		position: relative;
		top: 0;
	}
	.our_solution_category {
		width: 100%;
		margin: 0 auto;
	}
	.our_solution_category .solution_cards_box {
		flex: auto;
	}
}

@media only screen and (min-width: 768px) {
	.our_solution_category .solution_cards_box {
		flex: 1;
	}
}

@media only screen and (min-width: 1024px) {
	.sol_card_top_3 {
		position: relative;
		top: -3rem;
	}
	.our_solution_category {
		width: 50%;
		margin: 0 auto;
	}
}
</style>

<link rel="stylesheet" href="css/swiper-bundle.min.css">

<!-- CSS -->
<link rel="stylesheet" href="css/style.css">
<style>
/* Google Fonts - Poppins */
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap')
	;

html {
	scroll-behavior: smooth;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

.slide-container {
	max-width: 1120px;
	width: 100%;
	padding: 40px 0;
}

.slide-content {
	margin: 0 40px;
	overflow: hidden;
	border-radius: 25px;
}

.card {
	border-radius: 25px;
	background-color: #FFF;
}

.image-content, .card-content {
	display: flex;
	flex-direction: column;
	align-items: center;
	padding: 10px 14px;
}

.image-content {
	position: relative;
	row-gap: 5px;
	padding: 25px 0;
}

.overlay {
	position: absolute;
	left: 0;
	top: 0;
	height: 100%;
	width: 100%;
	background-color: #4070F4;
	border-radius: 25px 25px 0 25px;
}

.overlay::before, .overlay::after {
	content: '';
	position: absolute;
	right: 0;
	bottom: -40px;
	height: 40px;
	width: 40px;
	background-color: #4070F4;
}

.overlay::after {
	border-radius: 0 25px 0 0;
	background-color: #FFF;
}

.card-image {
	position: relative;
	height: 150px;
	width: 150px;
	border-radius: 50%;
	background: #FFF;
	padding: 3px;
}

.card-image .card-img {
	height: 100%;
	width: 100%;
	object-fit: cover;
	border-radius: 50%;
	border: 4px solid #4070F4;
}

.name {
	font-size: 18px;
	font-weight: 500;
	color: #333;
}

.description {
	font-size: 14px;
	color: #707070;
	text-align: center;
}

.button {
	border: none;
	font-size: 16px;
	color: #FFF;
	padding: 8px 16px;
	background-color: #4070F4;
	border-radius: 6px;
	margin: 14px;
	cursor: pointer;
	transition: all 0.3s ease;
}

.button:hover {
	background: #265DF2;
}

.swiper-navBtn {
	color: #6E93f7;
	transition: color 0.3s ease;
}

.swiper-navBtn:hover {
	color: #4070F4;
}

.swiper-navBtn::before, .swiper-navBtn::after {
	font-size: 35px;
}

.swiper-button-next {
	right: 0;
}

.swiper-button-prev {
	left: 0;
}

.swiper-pagination-bullet {
	background-color: #6E93f7;
	opacity: 1;
}

.swiper-pagination-bullet-active {
	background-color: #4070F4;
}

@media screen and (max-width: 768px) {
	.slide-content {
		margin: 0 10px;
	}
	.swiper-navBtn {
		display: none;
	}
}

.marquee {
	white-space: nowrap;
	overflow: hidden;
	width: 100%;
	animation: marquee 10s linear infinite;
	/* Adjust the animation duration as needed */
}

@
keyframes marquee { 0% {
	transform: translateX(100%);
}

100








%
{
transform








:








translateX






(








-100






%
)






;
}
}
.container_10 {
	display: flex; /* Use flexbox to create parallel divs */
}

.box_10 {
	flex: 1; /* Distribute the available space equally among the divs */
	padding: 20px;
	border: 1px solid #000;
	margin: 10px;
	text-align: center;
}

.box_11 {
	flex: 1; /* Distribute the available space equally among the divs */
	padding: 20px;
	margin: 10px;
	text-align: center;
}

#footer-sub {
	background-color: #f3f7f8;
	border-top: 1px solid #dbdbdb;
}

#footer-main {
	background-color: #012b72;
}

#footer-sub h5 {
	color: #565656;
	margin-top: 25px;
}

#footer-sub ul {
	list-style: none;
	margin-top: 20px;
}

#footer-sub hr {
	margin: 5px;
}

#footer-sub ul li {
	margin-left: -38px;
}

#footer-sub a:link {
	text-decoration: none;
	color: #565656;
	font-size: 12px;
}

#footer-sub a:visited {
	text-decoration: none;
	color: #565656;
}

#footer-sub a:hover {
	text-decoration: none;
	color: blue;
}

#footer-sub a:active {
	text-decoration: none;
	color: #565656;
}

.vertical-line {
	border-right: 1px solid #dbdbdb;
	margin: 8px;
	padding: 0px;
}

.glyphicon {
	font-size: 35px;
	color: #6d6c6c;
}

#sub-two {
	margin: 0px;
	padding: 0px;
}

#sub-two .vertical-line h4 {
	color: #6d6c6c;
}

#footer-main ul {
	list-style: none;
}

#footer-main ul li {
	float: left;
	text-decoration: none;
	padding-left: 15px;
	margin-top: 17px;
}

#footer-main a:link {
	color: white;
	font-size: 12px;
}

#footer-main a:visited {
	color: white;
}

#footer-main a:hover {
	text-decoration: none;
	color: #00b9f5;
}

#footer-main a:active {
	color: white;
}

.glyphicon-search {
	font-size: 20px;
}

#social-menu {
	float: right;
	margin-right: 60px;
}

#side-padding {
	padding: 0px;
	margin: 0px;
}
</style>

</head>
<body>

	<%@include file="header.jsp"%>
	
	<%-- <%customer aab=(customer)session.getAttribute("msg"); %>  --%>

	<%
	ArrayList<Product> list = (ArrayList<Product>) session.getAttribute("LIST");
	%>
	<%
	String aaj_1 = (String) request.getAttribute("msg_1");
	%>
	<%
	if (aaj_1 != null) {
	%>
	<center>
		<h1 style="color: blue;"><%=aaj_1%></h1>
	</center>
	<%
	} else {
	%>
	<%
	}
	%>
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

	<%
	if (aa != null) {
	%>

	<div id="myModal" class="modal">
		<div class="modal-content" style="height: 15cm; width: 15cm;">
			<button class="close">
				<i class="fa-solid fa-x fa"
					style="margin-right: 5px; margin-top: 3px;"></i>
			</button>
			<div class="title">
				<h3 style="font-weight: 700; color: black;">
					Customize list to upload
					<%=aa.getName()%></h3>
			</div>
			<div class="frame">
				<div class="center">
					<form action="new_feature_photo_uplod"
						enctype="multipart/form-data" method="post">
						<%
						final String randomCode = UUID.randomUUID().toString();
						// or you can play with the len...
						final String randomCode2 = UUID.randomUUID().toString().substring(0, 5);
						%>
						<input type="hidden" value="<%=aa.getUser_id()%>" name="user_id">
						<input type="hidden" value=<%=randomCode2%> name="order_id">
						<div class="title">
							<h2>Drop list to upload</h2>
						</div>


						<div class="dropzone">
							<img src="http://100dayscss.com/codepen/upload.svg"
								class="upload-icon" disabled /> <input type="file"
								class="upload-input" name="image" />
						</div>

						<!-- <button type="submit" class="btn" name="uploadbutton">Upload file</button> -->
						<a href="conforim_order_image_by_list.jsp">Upload file</a>
				</div>
			</div>
			</form>
			<!-- original pen: https://codepen.io/roydigerhund/pen/ZQdbeN  -->

			<!-- NO JS ADDED YET -->
		</div>
	</div>


	<%
	} else {
	%>
	<div id="myModal" class="modal">
		<div class="modal-content" style="height: 15cm; width: 15cm;">
			<button class="close">
				<i class="fa-solid fa-x fa"
					style="margin-right: 5px; margin-top: 3px;"></i>
			</button>
			<div class="title">
				<h1 style="font-weight: 700; color: black;">Customize list to
					upload</h1>
			</div>
			<div class="frame">
				<div class="center">

					<div class="title">
						<h2>Drop list to upload</h2>
					</div>

					<div class="dropzone">
						<img src="http://100dayscss.com/codepen/upload.svg"
							class="upload-icon" /> <input type="file" disabled="disabled"
							class="upload-input" href="login.jsp" />
					</div>

					<a href="login.jsp" type="button" class="btn" name="uploadbutton">Upload
						file</a>

				</div>
			</div>
			<!-- original pen: https://codepen.io/roydigerhund/pen/ZQdbeN  -->

			<!-- NO JS ADDED YET -->
		</div>
	</div>


	<%
	}
	%>
	<!--################### home-page start ########################### -->

	<div class="home" id="home-page"
		style="background: url('./images/BringIt.gif'); background-repeat: no-repeat; background-size: cover; width: 100%; height: 90vh;">
		<div class="home-content" style="border: 5px solid white;">
			<h2 class="hed">
				Looking For <span>Kirana</span> In Indore ?
			</h2>
			<p class="hed-para">we have more than 1250+ items of kirana and
				daily needs.We also provide free delivery in vijay nagar and
				sukliya.</p>

			<input type="button" value="Shop Now" class="hed-btn"
				style="margin-bottom: 9cm;">
		</div>
	</div>

	<!--################### home-page end ########################### -->



	<!--################### home-page2 features start ########################### -->

	<!--  <div class="main-content" id="features-section">  -->
	<!-- 

	<div style="background-color: #e7e5e5;">
		<div class="features-page">
			<h2 class="feature-hed">
				Our <span class="feature-sp">Features</span>
			</h2>

		<br><br><br><br><br>
		359 × 539 px
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

		<div class="section_our_solution" style="width: 100%;">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12" style="width: 100%;">
					Gallery
					<div class="row">
						<div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
													<img
								
								src="image/lklklk.gif" style="width:708px;height:472px;border-radius: 50px;"
								class="w-100 shadow-1-strong rounded mb-4"
								alt="Boat on Calm Water" />
								
								 <img
								src="image/ok_bye.gif"
								class="w-100 shadow-1-strong rounded mb-4"
								alt="Wintry Mountain Landscape" />
						</div>

						<div class="col-lg-4 mb-4 mb-lg-0">
							<img
								src="image/Yellow Purple and Red Modern Sale Promo Your Story.png"
								class="w-100 shadow-1-strong rounded mb-4"
								alt="Mountains in the Clouds" height="1100px" width="471px" />
								 <img
								src="image/BringIt.gif" style="width:708px;height:472px;border-radius: 50px;"
								class="w-100 shadow-1-strong rounded mb-4"
								alt="Boat on Calm Water" />
						</div>

						<div class="col-lg-4 mb-4 mb-lg-0">
							<img
								src="image/BringIt.gif" style="width:708px;height:472px;border-radius: 50
								class="w-100 shadow-1-strong rounded mb-4" alt="Waves at Sea" />

							<img
								src="image/ok_get_out.gif"
								class="w-100 shadow-1-strong rounded mb-4"
								alt="Yosemite National Park" sty />
						</div>
					</div>
					Gallery
				</div>
			</div>
		</div>
 -->


	<div class="container_10">
		<div class="box_11">
			<img src="image/ok_bye.gif"
				class="w-100 shadow-1-strong rounded mb-4"
				alt="Wintry Mountain Landscape" />
		</div>
		<div class="box_11">
			<img src="image/ok_get_out.gif"
				class="w-100 shadow-1-strong rounded mb-4"
				alt="Yosemite National Park" sty />
		</div>
		<div class="box_11">
			<img src="image/okokokokok.gif"
				class="w-100 shadow-1-strong rounded mb-4" alt="Waves at Sea" />

		</div>
	</div>



	<!-- <div class="row"
			style="position: sticky; top: 2.4cm; padding: 10px 0; text-align: center; z-index: 100;">
			<div class="col-md-12" style="border: 5px solid; width: 100%;">

				<div class="container_10">
					<div class="box_10">Div 1</div>
					<div class="box_10">Div 2</div>
					<div class="box_10">Div 3</div>
					<div class="box_10">Div 1</div>
					<div class="box_10">Div 2</div>
					<div class="box_10">Div 3</div>
					<div class="box_10">Div 1</div>
					<div class="box_10">Div 2</div>
					<div class="box_10">Div 3</div>
					<div class="box_10">Div 1</div>
					<div class="box_10">Div 2</div>
					<div class="box_10">Div 3</div>
				</div>

			</div>

		</div> -->


	<div class="row">
		<div class="col-md-12" style="width: 100%;">

			<div class="container_10">

				<div class="box_11">
					<section ng-if="sectionModel.type === 'Linear' "
						class="row section-pad ng-scope">
						<!-- ngRepeat: data in ::sectionData -->
						<!-- ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
						<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col ng-scope"
							ng-repeat="data in ::sectionData"
							ng-if="sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined">
							<a></a>
							<div class="img-txt">
								<a></a>
								<div class="img-placeholder">
									<a> <!-- ngIf: data['Link'] !== '#' --> <span
										ng-if="data['Link'] !== '#'" class="ng-scope"></span> <!-- end ngIf: data['Link'] !== '#' -->
									</a>
									<!-- ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
									<a data-expand="-110"
										ng-if="(data['Link'].split(':')[0] != 'bigbasket' &amp;&amp; data['Link'] !== '#')"
										ng-href="https://www.bigbasket.com/sp/2309411-deals-week/?nc=Top Offers&amp;t_pg=/Oct-homepage-t2/&amp;t_p=Oct_T2_2023&amp;t_s=Top Offers&amp;t_pos_sec=4&amp;t_pos_item=1&amp;t_ch=desktop"
										ng-click="pushToGoogleAnalytics('_trackEvent','item-clicked','custom-page',sectionModel.display_pos+' | '+sectionModel.pageinternalName+' | LNIO | '+sectionModel.internalName+' | '+ ($index+1),1)"
										data-sectioninteractionplower="{&quot;EventName&quot;:&quot;ItemClicked&quot;, &quot;ScreenType&quot; : &quot;cp&quot;, &quot;CustomPageGroup&quot; : &quot;/Oct-homepage-t2/&quot;, &quot;CustomPage&quot;:&quot;Oct_T2_2023&quot;, &quot;ScreenInPageContext&quot; : &quot;Top Offers&quot;, &quot;ScreenInPagePosition&quot;:&quot;4&quot;,&quot;SectionItemName&quot;:&quot;&quot;, &quot;SectionItemPosition&quot;:&quot;1&quot;}"
										class="ng-scope"
										
										
										href="deal_of_the_day.jsp">
										
										
										
										<!-- ngIf: !useStaticImages --> <img ng-if="!useStaticImages"
										class="img-responsive ng-scope lazyautosizes lazyloaded"
										src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/4ed9c062-4a1c-468e-b4f8-129add81026e/hp_dow-topoffersStorefront_m_480_250823_01.jpg"
										data-sizes="auto"
										ng-src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/4ed9c062-4a1c-468e-b4f8-129add81026e/hp_dow-topoffersStorefront_m_480_250823_01.jpg"
										fallback-src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAAC0CAMAAACdQlHaAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAASUExURQAAAO7u7u7u7u7u7u7u7u7u7vJvfjgAAAAGdFJOUwD9ORJuv+wju3wAAAGnSURBVHja7drbcoMgFAXQCIf//+UWNV7SpqMP6cSTtZ6w0plsAQWG2w0AAAAAAAAAAAAAAAAAAIC/1APyhC1xUEkRuvQgh/SaGfKWF1V+0/4c9Vz1qyc+G6DERzVwf0L14iN4zt26WB7Dd/lJ05dr9+n559c2dG1uvfFSYIEFFlhggQUW+F8CR/ugwLWM+tRyKtbUgUubi1HHdh6LJW3gEsOilbYUI2vgNmy0WC8jZ+AHbRrM+8TpAvd18VKe6ozXJWfg1jc06jJ6p7uxhk8XuNx213NH3jZxrsDLSJ3f1vNMpGzuJfss3f9+fwKb2y1j4PXGzz59b+1MgTfzi9gFHq8EFjhX4IxjuNXfX1o160tr+LTP0rOJR2SdeKypnvbodKulGM82/LJ4iE9YHo4ha+xmnak3ACK+1/8t8QbA4xbPkHyLp62Dd5835ybeuBvbDztMbR21ZNymrcvXdTlaWNfN99rLD2cO4+qB64v/4e369MlzV9c/incuQYnLny+tcTzDmbpv3aujHJLl/PD0Mj4izxlxAAAAAAAAAAAAAAAAAACAF/gCzksLUf/7uC8AAAAASUVORK5CYII="
										alt="carousel-img" sizes="228px"> <!-- end ngIf: !useStaticImages -->
									</a>
									<!-- end ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
									<!-- ngIf: (data['Link'].split(':')[0] == 'bigbasket' && data['Link'] !== '#') -->
									<!-- ngIf: data['Link'] === '#' -->
								</div>
							</div>
						</div>
						<!-- end ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
						<!-- end ngRepeat: data in ::sectionData -->
						<!-- ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
						<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col ng-scope"
							ng-repeat="data in ::sectionData"
							ng-if="sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined">
							<a></a>
							<div class="img-txt">
								<a></a>
								<div class="img-placeholder">
									<a> <!-- ngIf: data['Link'] !== '#' --> <span
										ng-if="data['Link'] !== '#'" class="ng-scope"></span> <!-- end ngIf: data['Link'] !== '#' -->
									</a>
									<!-- ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
									<a data-expand="-110"
										ng-if="(data['Link'].split(':')[0] != 'bigbasket' &amp;&amp; data['Link'] !== '#')"
										ng-href="https://www.bigbasket.com/sp/2310048-big-pack-discount/?nc=Top Offers&amp;t_pg=/Oct-homepage-t2/&amp;t_p=Oct_T2_2023&amp;t_s=Top Offers&amp;t_pos_sec=4&amp;t_pos_item=2&amp;t_ch=desktop"
										ng-click="pushToGoogleAnalytics('_trackEvent','item-clicked','custom-page',sectionModel.display_pos+' | '+sectionModel.pageinternalName+' | LNIO | '+sectionModel.internalName+' | '+ ($index+1),1)"
										data-sectioninteractionplower="{&quot;EventName&quot;:&quot;ItemClicked&quot;, &quot;ScreenType&quot; : &quot;cp&quot;, &quot;CustomPageGroup&quot; : &quot;/Oct-homepage-t2/&quot;, &quot;CustomPage&quot;:&quot;Oct_T2_2023&quot;, &quot;ScreenInPageContext&quot; : &quot;Top Offers&quot;, &quot;ScreenInPagePosition&quot;:&quot;4&quot;,&quot;SectionItemName&quot;:&quot;&quot;, &quot;SectionItemPosition&quot;:&quot;2&quot;}"
										class="ng-scope"
										
										
										
										
										href="big_pack.jsp">
										
										
										
										
										
										
										
										
										<!-- ngIf: !useStaticImages --> <img ng-if="!useStaticImages"
										class="img-responsive ng-scope lazyautosizes lazyloaded"
										src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/4ed9c062-4a1c-468e-b4f8-129add81026e/hp_big-packs-topoffersStorefront_m_480_250823_02.jpg"
										data-sizes="auto"
										ng-src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/4ed9c062-4a1c-468e-b4f8-129add81026e/hp_big-packs-topoffersStorefront_m_480_250823_02.jpg"
										fallback-src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAAC0CAMAAACdQlHaAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAASUExURQAAAO7u7u7u7u7u7u7u7u7u7vJvfjgAAAAGdFJOUwD9ORJuv+wju3wAAAGnSURBVHja7drbcoMgFAXQCIf//+UWNV7SpqMP6cSTtZ6w0plsAQWG2w0AAAAAAAAAAAAAAAAAAIC/1APyhC1xUEkRuvQgh/SaGfKWF1V+0/4c9Vz1qyc+G6DERzVwf0L14iN4zt26WB7Dd/lJ05dr9+n559c2dG1uvfFSYIEFFlhggQUW+F8CR/ugwLWM+tRyKtbUgUubi1HHdh6LJW3gEsOilbYUI2vgNmy0WC8jZ+AHbRrM+8TpAvd18VKe6ozXJWfg1jc06jJ6p7uxhk8XuNx213NH3jZxrsDLSJ3f1vNMpGzuJfss3f9+fwKb2y1j4PXGzz59b+1MgTfzi9gFHq8EFjhX4IxjuNXfX1o160tr+LTP0rOJR2SdeKypnvbodKulGM82/LJ4iE9YHo4ha+xmnak3ACK+1/8t8QbA4xbPkHyLp62Dd5835ybeuBvbDztMbR21ZNymrcvXdTlaWNfN99rLD2cO4+qB64v/4e369MlzV9c/incuQYnLny+tcTzDmbpv3aujHJLl/PD0Mj4izxlxAAAAAAAAAAAAAAAAAACAF/gCzksLUf/7uC8AAAAASUVORK5CYII="
										alt="carousel-img" sizes="228px"> <!-- end ngIf: !useStaticImages -->
									</a>
									<!-- end ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
									<!-- ngIf: (data['Link'].split(':')[0] == 'bigbasket' && data['Link'] !== '#') -->
									<!-- ngIf: data['Link'] === '#' -->
								</div>
							</div>
						</div>
						<!-- end ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
						<!-- end ngRepeat: data in ::sectionData -->
						<!-- ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
						<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col ng-scope"
							ng-repeat="data in ::sectionData"
							ng-if="sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined">
							<a></a>
							<div class="img-txt">
								<a></a>
								<div class="img-placeholder">
									<a> <!-- ngIf: data['Link'] !== '#' --> <span
										ng-if="data['Link'] !== '#'" class="ng-scope"></span> <!-- end ngIf: data['Link'] !== '#' -->
									</a>
									<!-- ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
									<a data-expand="-110"
										ng-if="(data['Link'].split(':')[0] != 'bigbasket' &amp;&amp; data['Link'] !== '#')"
										ng-href="https://www.bigbasket.com/sp/2310049-combos/?nc=Top Offers&amp;t_pg=/Oct-homepage-t2/&amp;t_p=Oct_T2_2023&amp;t_s=Top Offers&amp;t_pos_sec=4&amp;t_pos_item=3&amp;t_ch=desktop"
										ng-click="pushToGoogleAnalytics('_trackEvent','item-clicked','custom-page',sectionModel.display_pos+' | '+sectionModel.pageinternalName+' | LNIO | '+sectionModel.internalName+' | '+ ($index+1),1)"
										data-sectioninteractionplower="{&quot;EventName&quot;:&quot;ItemClicked&quot;, &quot;ScreenType&quot; : &quot;cp&quot;, &quot;CustomPageGroup&quot; : &quot;/Oct-homepage-t2/&quot;, &quot;CustomPage&quot;:&quot;Oct_T2_2023&quot;, &quot;ScreenInPageContext&quot; : &quot;Top Offers&quot;, &quot;ScreenInPagePosition&quot;:&quot;4&quot;,&quot;SectionItemName&quot;:&quot;&quot;, &quot;SectionItemPosition&quot;:&quot;3&quot;}"
										class="ng-scope"
										
										
										
										
										
										
										
										href="combo.jsp">
										
										
										
										
										
										
										
										
										
										<!-- ngIf: !useStaticImages --> <img ng-if="!useStaticImages"
										class="img-responsive ng-scope lazyautosizes lazyloaded"
										src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/4ed9c062-4a1c-468e-b4f8-129add81026e/hp_combos-topoffersStorefront_m_480_250823_03.jpg"
										data-sizes="auto"
										ng-src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/4ed9c062-4a1c-468e-b4f8-129add81026e/hp_combos-topoffersStorefront_m_480_250823_03.jpg"
										fallback-src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAAC0CAMAAACdQlHaAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAASUExURQAAAO7u7u7u7u7u7u7u7u7u7vJvfjgAAAAGdFJOUwD9ORJuv+wju3wAAAGnSURBVHja7drbcoMgFAXQCIf//+UWNV7SpqMP6cSTtZ6w0plsAQWG2w0AAAAAAAAAAAAAAAAAAIC/1APyhC1xUEkRuvQgh/SaGfKWF1V+0/4c9Vz1qyc+G6DERzVwf0L14iN4zt26WB7Dd/lJ05dr9+n559c2dG1uvfFSYIEFFlhggQUW+F8CR/ugwLWM+tRyKtbUgUubi1HHdh6LJW3gEsOilbYUI2vgNmy0WC8jZ+AHbRrM+8TpAvd18VKe6ozXJWfg1jc06jJ6p7uxhk8XuNx213NH3jZxrsDLSJ3f1vNMpGzuJfss3f9+fwKb2y1j4PXGzz59b+1MgTfzi9gFHq8EFjhX4IxjuNXfX1o160tr+LTP0rOJR2SdeKypnvbodKulGM82/LJ4iE9YHo4ha+xmnak3ACK+1/8t8QbA4xbPkHyLp62Dd5835ybeuBvbDztMbR21ZNymrcvXdTlaWNfN99rLD2cO4+qB64v/4e369MlzV9c/incuQYnLny+tcTzDmbpv3aujHJLl/PD0Mj4izxlxAAAAAAAAAAAAAAAAAACAF/gCzksLUf/7uC8AAAAASUVORK5CYII="
										alt="carousel-img" sizes="228px"> <!-- end ngIf: !useStaticImages -->
									</a>
									<!-- end ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
									<!-- ngIf: (data['Link'].split(':')[0] == 'bigbasket' && data['Link'] !== '#') -->
									<!-- ngIf: data['Link'] === '#' -->
								</div>
							</div>
						</div>
						<!-- end ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
						<!-- end ngRepeat: data in ::sectionData -->
						<!-- ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
						<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col ng-scope"
							ng-repeat="data in ::sectionData"
							ng-if="sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined">
							<a></a>
							<div class="img-txt">
								<a></a>
								<div class="img-placeholder">
									<a> <!-- ngIf: data['Link'] !== '#' --> <span
										ng-if="data['Link'] !== '#'" class="ng-scope"></span> <!-- end ngIf: data['Link'] !== '#' -->
									</a>
									<!-- ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
									<a data-expand="-110"
										ng-if="(data['Link'].split(':')[0] != 'bigbasket' &amp;&amp; data['Link'] !== '#')"
										ng-href="https://www.bigbasket.com/sp/2310049-combos/?nc=Top Offers&amp;t_pg=/Oct-homepage-t2/&amp;t_p=Oct_T2_2023&amp;t_s=Top Offers&amp;t_pos_sec=4&amp;t_pos_item=3&amp;t_ch=desktop"
										ng-click="pushToGoogleAnalytics('_trackEvent','item-clicked','custom-page',sectionModel.display_pos+' | '+sectionModel.pageinternalName+' | LNIO | '+sectionModel.internalName+' | '+ ($index+1),1)"
										data-sectioninteractionplower="{&quot;EventName&quot;:&quot;ItemClicked&quot;, &quot;ScreenType&quot; : &quot;cp&quot;, &quot;CustomPageGroup&quot; : &quot;/Oct-homepage-t2/&quot;, &quot;CustomPage&quot;:&quot;Oct_T2_2023&quot;, &quot;ScreenInPageContext&quot; : &quot;Top Offers&quot;, &quot;ScreenInPagePosition&quot;:&quot;4&quot;,&quot;SectionItemName&quot;:&quot;&quot;, &quot;SectionItemPosition&quot;:&quot;3&quot;}"
										class="ng-scope"
										
										
										
										
										
										
										
										href="combo.jsp">
										
										
										
										
										
										
										
										
										
										<!-- ngIf: !useStaticImages --> <img ng-if="!useStaticImages"
										class="img-responsive ng-scope lazyautosizes lazyloaded"
										src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/4ed9c062-4a1c-468e-b4f8-129add81026e/hp_combos-topoffersStorefront_m_480_250823_03.jpg"
										data-sizes="auto"
										ng-src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/4ed9c062-4a1c-468e-b4f8-129add81026e/hp_combos-topoffersStorefront_m_480_250823_03.jpg"
										fallback-src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAAC0CAMAAACdQlHaAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAASUExURQAAAO7u7u7u7u7u7u7u7u7u7vJvfjgAAAAGdFJOUwD9ORJuv+wju3wAAAGnSURBVHja7drbcoMgFAXQCIf//+UWNV7SpqMP6cSTtZ6w0plsAQWG2w0AAAAAAAAAAAAAAAAAAIC/1APyhC1xUEkRuvQgh/SaGfKWF1V+0/4c9Vz1qyc+G6DERzVwf0L14iN4zt26WB7Dd/lJ05dr9+n559c2dG1uvfFSYIEFFlhggQUW+F8CR/ugwLWM+tRyKtbUgUubi1HHdh6LJW3gEsOilbYUI2vgNmy0WC8jZ+AHbRrM+8TpAvd18VKe6ozXJWfg1jc06jJ6p7uxhk8XuNx213NH3jZxrsDLSJ3f1vNMpGzuJfss3f9+fwKb2y1j4PXGzz59b+1MgTfzi9gFHq8EFjhX4IxjuNXfX1o160tr+LTP0rOJR2SdeKypnvbodKulGM82/LJ4iE9YHo4ha+xmnak3ACK+1/8t8QbA4xbPkHyLp62Dd5835ybeuBvbDztMbR21ZNymrcvXdTlaWNfN99rLD2cO4+qB64v/4e369MlzV9c/incuQYnLny+tcTzDmbpv3aujHJLl/PD0Mj4izxlxAAAAAAAAAAAAAAAAAACAF/gCzksLUf/7uC8AAAAASUVORK5CYII="
										alt="carousel-img" sizes="228px"> <!-- end ngIf: !useStaticImages -->
									</a>
									<!-- end ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
									<!-- ngIf: (data['Link'].split(':')[0] == 'bigbasket' && data['Link'] !== '#') -->
									<!-- ngIf: data['Link'] === '#' -->
								</div>
							</div>
						</div>
						<!-- end ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
						<!-- end ngRepeat: data in ::sectionData -->
						<!-- ngRepeat: data in ::sectionData -->
						<!-- ngIf: sectionModel.ignoresectionupload=='1' -->
						<!-- end ngRepeat: data in ::sectionData -->
						<!-- ngIf: sectionModel.ignoresectionupload=='1' -->
						<!-- end ngRepeat: data in ::sectionData -->
						<!-- ngIf: sectionModel.ignoresectionupload=='1' -->
						<!-- end ngRepeat: data in ::sectionData -->
						<!-- ngIf: sectionModel.ignoresectionupload=='1' -->
						<!-- end ngRepeat: data in ::sectionData -->
					</section>
				</div>

			</div>

		</div>

	</div>
	<div style="padding-left: 5cm; padding-right: 5cm;">
		<img src="image/deal of the day.gif" alt="carousel-img" width="100%"
			height="700cm"
			style="border-radius: 50px; box-shadow: box-shadow: 5px 10px;">
	</div>
	<!-- <div class="row">
			<div class="col-6 col-md-4" style="border: 0px solid;">
				<div class="flip-card" style="margin-left: 8cm; height: 10cm;">
					<div class="flip-card-inner">
						<div class="flip-card-front"></div>
						<div class="flip-card-back">
							<h1>John Doe</h1>
							<p>Architect & Engineer</p>
							<p>We love that guy</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4" style="border: 0px solid; width: 100%;">
				<div class="flip-card">
					<div class="flip-card-inner"
						style="margin-left: 8cm; height: 10cm;">
						<div class="flip-card-front">
							<img src="img_avatar.png" alt="Avatar"
								style="width: 300px; height: 300px;">
						</div>
						<div class="flip-card-back">
							<h1>John Doe</h1>
							<p>Architect & Engineer</p>
							<p>We love that guy</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4" style="border: 0px solid; width: 100%;">
				<div class="flip-card">
					<div class="flip-card-inner"
						style="margin-left: 8cm; height: 10cm;">
						<div class="flip-card-front">
							<img src="img_avatar.png" alt="Avatar"
								style="width: 300px; height: 300px;">
						</div>
						<div class="flip-card-back">
							<h1>John Doe</h1>
							<p>Architect & Engineer</p>
							<p>We love that guy</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br> <br>

		<div class="row">
			<div class="col-6 col-md-4" style="border: 0px solid;">
				<div class="flip-card" style="margin-left: 2cm; height: 10cm;">
					<div class="flip-card-inner">
						<div class="flip-card-front">
							<img src="img_avatar.png" alt="Avatar"
								style="width: 300px; height: 300px;">
						</div>
						<div class="flip-card-back">
							<h1>John Doe</h1>
							<p>Architect & Engineer</p>
							<p>We love that guy</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4" style="border: 0px solid; width: 100%;">
				<div class="flip-card">
					<div class="flip-card-inner"
						style="margin-left: 2cm; height: 10cm;">
						<div class="flip-card-front">
							<img src="img_avatar.png" alt="Avatar"
								style="width: 300px; height: 300px;">
						</div>
						<div class="flip-card-back">
							<h1>John Doe</h1>
							<p>Architect & Engineer</p>
							<p>We love that guy</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4" style="border: 0px solid; width: 100%;">
				<div class="flip-card">
					<div class="flip-card-inner"
						style="margin-left: 2cm; height: 10cm;">
						<div class="flip-card-front">
							<img src="img_avatar.png" alt="Avatar"
								style="width: 300px; height: 300px;">
						</div>
						<div class="flip-card-back">
							<h1>John Doe</h1>
							<p>Architect & Engineer</p>
							<p>We love that guy</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<br> <br>
		<div class="row">
			<div class="col-6 col-md-4" style="border: 0px solid;">
				<div class="flip-card" style="margin-left: 8cm; height: 10cm;">
					<div class="flip-card-inner">
						<div class="flip-card-front">
							<img src="img_avatar.png" alt="Avatar"
								style="width: 300px; height: 300px;">
						</div>
						<div class="flip-card-back">
							<h1>John Doe</h1>
							<p>Architect & Engineer</p>
							<p>We love that guy</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4" style="border: 0px solid; width: 100%;">
				<div class="flip-card">
					<div class="flip-card-inner"
						style="margin-left: 8cm; height: 10cm;">
						<div class="flip-card-front">
							<img src="img_avatar.png" alt="Avatar"
								style="width: 300px; height: 300px;">
						</div>
						<div class="flip-card-back">
							<h1>John Doe</h1>
							<p>Architect & Engineer</p>
							<p>We love that guy</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4" style="border: 0px solid; width: 100%;">
				<div class="flip-card">
					<div class="flip-card-inner"
						style="margin-left: 8cm; height: 10cm;">
						<div class="flip-card-front">
							<img src="img_avatar.png" alt="Avatar"
								style="width: 300px; height: 300px;">
						</div>
						<div class="flip-card-back">
							<h1>John Doe</h1>
							<p>Architect & Engineer</p>
							<p>We love that guy</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<br> <br>
		<div class="row">
			<div class="col-6 col-md-4" style="border: 0px solid;">
				<div class="flip-card" style="margin-left: 2cm; height: 10cm;">
					<div class="flip-card-inner">
						<div class="flip-card-front">
							<img src="img_avatar.png" alt="Avatar"
								style="width: 300px; height: 300px;">
						</div>
						<div class="flip-card-back">
							<h1>John Doe</h1>
							<p>Architect & Engineer</p>
							<p>We love that guy</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4" style="border: 0px solid; width: 100%;">
				<div class="flip-card">
					<div class="flip-card-inner"
						style="margin-left: 2cm; height: 10cm;">
						<div class="flip-card-front">
							<img src="img_avatar.png" alt="Avatar"
								style="width: 300px; height: 300px;">
						</div>
						<div class="flip-card-back">
							<h1>John Doe</h1>
							<p>Architect & Engineer</p>
							<p>We love that guy</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4" style="border: 0px solid; width: 100%;">
				<div class="flip-card">
					<div class="flip-card-inner"
						style="margin-left: 2cm; height: 10cm;">
						<div class="flip-card-front">
							<img src="img_avatar.png" alt="Avatar"
								style="width: 300px; height: 300px;">
						</div>
						<div class="flip-card-back">
							<h1>John Doe</h1>
							<p>Architect & Engineer</p>
							<p>We love that guy</p>
						</div>
					</div>
				</div>
			</div>
		</div>
 -->
	<!--################### home-page2 features end  ########################### -->




	<!--################### home-page2 Product start  ########################### -->
	<
	<!-- div style="width: 100%;">
	<section class="product-section" id="product-section" style="margin-left: 14.5cm;width: 100%;">

		<div class="product-page">
			<h2 class="product-he">
				Our <span class="product-sp">Products</span>
			</h2>

			<br>
			<br>

        Swiper CSS
        
                                        
    
        <div class="slide-container swiper">
            <div class="slide-content">
                <div class="card-wrapper swiper-wrapper">
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>

                            <div class="card-image">
                                <img src="images/profile1.jpg" alt="" class="card-img">
                            </div>
                        </div>

                        <div class="card-content">
                            <h2 class="name">David Dell</h2>
                            <p class="description">The lorem text the section that contains header with having open functionality. Lorem dolor sit amet consectetur adipisicing elit.</p>

                            <button class="button">View More</button>
                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>

                            <div class="card-image">
                                <img src="images/profile2.jpg" alt="" class="card-img">
                            </div>
                        </div>

                        <div class="card-content">
                            <h2 class="name">David Dell</h2>
                            <p class="description">The lorem text the section that contains header with having open functionality. Lorem dolor sit amet consectetur adipisicing elit.</p>

                            <button class="button">View More</button>
                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>

                            <div class="card-image">
                                <img src="images/profile3.jpg" alt="" class="card-img">
                            </div>
                        </div>

                        <div class="card-content">
                            <h2 class="name">David Dell</h2>
                            <p class="description">The lorem text the section that contains header with having open functionality. Lorem dolor sit amet consectetur adipisicing elit.</p>

                            <button class="button">View More</button>
                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>

                            <div class="card-image">
                                <img src="images/profile4.jpg" alt="" class="card-img">
                            </div>
                        </div>

                        <div class="card-content">
                            <h2 class="name">David Dell</h2>
                            <p class="description">The lorem text the section that contains header with having open functionality. Lorem dolor sit amet consectetur adipisicing elit.</p>

                            <button class="button">View More</button>
                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>

                            <div class="card-image">
                                <img src="images/profile5.jpg" alt="" class="card-img">
                            </div>
                        </div>

                        <div class="card-content">
                            <h2 class="name">David Dell</h2>
                            <p class="description">The lorem text the section that contains header with having open functionality. Lorem dolor sit amet consectetur adipisicing elit.</p>

                            <button class="button">View More</button>
                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>

                            <div class="card-image">
                                <img src="images/profile6.jpg" alt="" class="card-img">
                            </div>
                        </div>

                        <div class="card-content">
                            <h2 class="name">David Dell</h2>
                            <p class="description">The lorem text the section that contains header with having open functionality. Lorem dolor sit amet consectetur adipisicing elit.</p>

                            <button class="button">View More</button>
                        </div>
                    </div>
                    
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>

                            <div class="card-image">
                                <img src="images/profile7.jpg" alt="" class="card-img">
                            </div>
                        </div>

                        <div class="card-content">
                            <h2 class="name">David Dell</h2>
                            <p class="description">The lorem text the section that contains header with having open functionality. Lorem dolor sit amet consectetur adipisicing elit.</p>

                            <button class="button">View More</button>
                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>

                            <div class="card-image">
                                <img src="images/profile8.jpg" alt="" class="card-img">
                            </div>
                        </div>

                        <div class="card-content">
                            <h2 class="name">David Dell</h2>
                            <p class="description">The lorem text the section that contains header with having open functionality. Lorem dolor sit amet consectetur adipisicing elit.</p>

                            <button class="button">View More</button>
                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>

                            <div class="card-image">
                                <img src="images/profile9.jpg" alt="" class="card-img">
                            </div>
                        </div>

                        <div class="card-content">
                            <h2 class="name">David Dell</h2>
                            <p class="description">The lorem text the section that contains header with having open functionality. Lorem dolor sit amet consectetur adipisicing elit.</p>

                            <button class="button">View More</button>
                        </div>
                    </div>
                    
                </div>
            </div>

            <div class="swiper-button-next swiper-navBtn"></div>
            <div class="swiper-button-prev swiper-navBtn"></div>
            <div class="swiper-pagination"></div>
        </div>
        
    

    Swiper JS
      <script src="js/swiper-bundle.min.js"></script>

    JavaScript
    <script src="js/script.js"></script>

		</div>

	</section>
</div> -->
	<!-- <center>
			<h1 style="color: black; font-weight: 1000">hello</h1>
		</center>
		<hr color="black"> -->



	<!-- <h2 class="section-title ng-binding" ng-style="style.headerStyle"
		ng-bind="::title"
		style="color: rgb(68, 68, 68); text-align: center; font-size: 34px; font-weight: 1000">Snacks
		Store</h2>
	<hr style="color: black; font-weight: 1000">
	<div class="container_10">
		<div class="box_10">Div 1</div>
		<div class="box_10">Div 2</div>
		<div class="box_10">Div 3</div>
		<div class="box_10">Div 1</div>
		<div class="box_10">Div 2</div>
		<div class="box_10">Div 3</div>
		<div class="box_10">Div 1</div>
		<div class="box_10">Div 2</div>
		<div class="box_10">Div 3</div>
	</div>
	<br> -->
	<h2 class="section-title ng-binding" ng-style="style.headerStyle"
		ng-bind="::title"
		style="color: rgb(68, 68, 68); text-align: center; font-size: 34px; font-weight: 1000">Snacks
		Store</h2>
	<hr style="color: black; font-weight: 1000">
	<div class="container_10">
		<div class="box_11">
			<section style="background-color: #eee;">
				<div class="text-center container py-5">
					<h4 class="mt-4 mb-5">
						<strong>Bestsellers</strong>
					</h4>

					<div class="row">
						<div class="col-lg-4 col-md-12 mb-4">
							<div class="card">
								<div
									class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
									data-mdb-ripple-color="light">
									<img
										src="image/moong dal.webp"
										class="w-100" style="padding: 0.5cm;" /> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-primary ms-2">New</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">$61.99</h6>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card">
								<div
									class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
									data-mdb-ripple-color="light">
									<img
										src="./image/massor dal.jpg"
										class="w-100" style="padding: 0.5cm;" /> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-success ms-2">Eco</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">$61.99</h6>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card">
								<div class="bg-image hover-zoom ripple"
									data-mdb-ripple-color="light">
									<img
										src="./image/chana dal.jpeg"
										class="w-100" style="padding: 0.5cm;" /> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-danger ms-2">-10%</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">
										<s>$61.99</s><strong class="ms-2 text-danger">$50.99</strong>
									</h6>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-4 col-md-12 mb-4">
							<div class="card">
								<div class="bg-image hover-zoom ripple"
									data-mdb-ripple-color="light">
									<img
										src="./image/moong dal2.jpg"
										class="w-100" style="padding: 0.5cm;" /> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-success ms-2">Eco</span><span
														class="badge bg-danger ms-2">-10%</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">
										<s>$61.99</s><strong class="ms-2 text-danger">$50.99</strong>
									</h6>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card">
								<div
									class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
									data-mdb-ripple-color="light">
									<img
										src="./image/urad dal.webp"
										class="w-100" style="padding: 0.5cm;" /> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100"></div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">$61.99</h6>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card">
								<div class="bg-image hover-zoom ripple"
									data-mdb-ripple-color="light">
									<img
										src="./image/massor dal.jpg"
										class="w-100"  style="padding: 0.5cm;"/> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-primary ms-2">New</span><span
														class="badge bg-success ms-2">Eco</span><span
														class="badge bg-danger ms-2">-10%</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">
										<s>$61.99</s><strong class="ms-2 text-danger">$50.99</strong>
									</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<div class="box_11">
			<section style="background-color: #eee;">
				<div class="text-center container py-5">
					<h4 class="mt-4 mb-5">
						<strong>Bestsellers</strong>
					</h4>

					<div class="row">
						<div class="col-lg-4 col-md-12 mb-4">
							<div class="card">
								<div
									class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
									data-mdb-ripple-color="light" ">
									<img
										src="./image/swadistoil.webp"
										class="w-100"  style="padding: 0.5cm;"/> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-primary ms-2">New</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">$61.99</h6>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card">
								<div
									class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
									data-mdb-ripple-color="light" >
									<img
										src="./image/swadist_new.webp"
										class="w-100" style="padding: 0.5cm;" /> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-success ms-2">Eco</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">$61.99</h6>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card">
								<div class="bg-image hover-zoom ripple"
									data-mdb-ripple-color="light">
									<img
										src="./image/sarsooil.jpg" style="padding: 0.5;height: 8.5cm;"/> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-danger ms-2">-10%</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">
										<s>$61.99</s><strong class="ms-2 text-danger">$50.99</strong>
									</h6>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-4 col-md-12 mb-4">
							<div class="card">
								<div class="bg-image hover-zoom ripple"
									data-mdb-ripple-color="light">
									<img
										src="./image/Fortune Rice Bran Oil 5L.webp"
										class="w-100" style="padding: 1cm;height: 9.5cm;"/> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-success ms-2">Eco</span><span
														class="badge bg-danger ms-2">-10%</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">
										<s>$61.99</s><strong class="ms-2 text-danger">$50.99</strong>
									</h6>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card">
								<div
									class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
									data-mdb-ripple-color="light">
									<img
										src="./image/sunflower.jpg"
										class="w-100"  style="height: 9.5cm;padding: 1cm;"/> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100"></div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">$61.99</h6>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card">
								<div class="bg-image hover-zoom ripple"
									data-mdb-ripple-color="light">
									<img
										src="./image/Fortune refined Oil.webp"
										class="w-100" style="height: 9.5cm;padding: 1cm;"/> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-primary ms-2">New</span><span
														class="badge bg-success ms-2">Eco</span><span
														class="badge bg-danger ms-2">-10%</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">
										<s>$61.99</s><strong class="ms-2 text-danger">$50.99</strong>
									</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>

	</div>
	<br>


	<h2 class="section-title ng-binding" ng-style="style.headerStyle"
		ng-bind="::title"
		style="color: rgb(68, 68, 68); text-align: center; font-size: 34px; font-weight: 1000">Cleaning
		&amp; Household</h2>
	<hr style="color: black; font-weight: 1000">
	<div class="container_10">
		<div class="box_11">
			<section ng-if="sectionModel.type === 'Linear' "
				class="row section-pad ng-scope">
				<!-- ngRepeat: data in ::sectionData -->
				<!-- ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col ng-scope"
					ng-repeat="data in ::sectionData"
					ng-if="sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined">
					<a></a>
					<div class="img-txt">
						<a></a>
						<div class="img-placeholder">
							<a> <!-- ngIf: data['Link'] !== '#' --> <span
								ng-if="data['Link'] !== '#'" class="ng-scope"></span> <!-- end ngIf: data['Link'] !== '#' -->
							</a>
							<!-- ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
							<a href="dailyesscustomer"> <img ng-if="!useStaticImages"
								class="img-responsive ng-scope lazyautosizes lazyloaded"
								src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/9530e302-3087-424b-96a6-e40e42a484be/t2_hp_c&amp;h_c_detergents_360_250723.jpg"
								data-sizes="auto"
								ng-src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/9530e302-3087-424b-96a6-e40e42a484be/t2_hp_c&amp;h_c_detergents_360_250723.jpg"
								fallback-src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAAC0CAMAAACdQlHaAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAASUExURQAAAO7u7u7u7u7u7u7u7u7u7vJvfjgAAAAGdFJOUwD9ORJuv+wju3wAAAGnSURBVHja7drbcoMgFAXQCIf//+UWNV7SpqMP6cSTtZ6w0plsAQWG2w0AAAAAAAAAAAAAAAAAAIC/1APyhC1xUEkRuvQgh/SaGfKWF1V+0/4c9Vz1qyc+G6DERzVwf0L14iN4zt26WB7Dd/lJ05dr9+n559c2dG1uvfFSYIEFFlhggQUW+F8CR/ugwLWM+tRyKtbUgUubi1HHdh6LJW3gEsOilbYUI2vgNmy0WC8jZ+AHbRrM+8TpAvd18VKe6ozXJWfg1jc06jJ6p7uxhk8XuNx213NH3jZxrsDLSJ3f1vNMpGzuJfss3f9+fwKb2y1j4PXGzz59b+1MgTfzi9gFHq8EFjhX4IxjuNXfX1o160tr+LTP0rOJR2SdeKypnvbodKulGM82/LJ4iE9YHo4ha+xmnak3ACK+1/8t8QbA4xbPkHyLp62Dd5835ybeuBvbDztMbR21ZNymrcvXdTlaWNfN99rLD2cO4+qB64v/4e369MlzV9c/incuQYnLny+tcTzDmbpv3aujHJLl/PD0Mj4izxlxAAAAAAAAAAAAAAAAAACAF/gCzksLUf/7uC8AAAAASUVORK5CYII="
								alt="carousel-img" sizes="228px"> <!-- end ngIf: !useStaticImages -->
							</a>
							<!-- end ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
							<!-- ngIf: (data['Link'].split(':')[0] == 'bigbasket' && data['Link'] !== '#') -->
							<!-- ngIf: data['Link'] === '#' -->
						</div>
					</div>
				</div>
				<!-- end ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
				<!-- end ngRepeat: data in ::sectionData -->
				<!-- ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col ng-scope"
					ng-repeat="data in ::sectionData"
					ng-if="sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined">
					<a></a>
					<div class="img-txt">
						<a></a>
						<div class="img-placeholder">
							<a> <!-- ngIf: data['Link'] !== '#' --> <span
								ng-if="data['Link'] !== '#'" class="ng-scope"></span> <!-- end ngIf: data['Link'] !== '#' -->
							</a>
							<!-- ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
							<a href="dailyesscustomer"> <img ng-if="!useStaticImages"
								class="img-responsive ng-scope lazyautosizes lazyloaded"
								src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/9530e302-3087-424b-96a6-e40e42a484be/t2_hp_c&amp;h_c_cleaner_360_250723.jpg"
								data-sizes="auto"
								ng-src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/9530e302-3087-424b-96a6-e40e42a484be/t2_hp_c&amp;h_c_cleaner_360_250723.jpg"
								fallback-src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAAC0CAMAAACdQlHaAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAASUExURQAAAO7u7u7u7u7u7u7u7u7u7vJvfjgAAAAGdFJOUwD9ORJuv+wju3wAAAGnSURBVHja7drbcoMgFAXQCIf//+UWNV7SpqMP6cSTtZ6w0plsAQWG2w0AAAAAAAAAAAAAAAAAAIC/1APyhC1xUEkRuvQgh/SaGfKWF1V+0/4c9Vz1qyc+G6DERzVwf0L14iN4zt26WB7Dd/lJ05dr9+n559c2dG1uvfFSYIEFFlhggQUW+F8CR/ugwLWM+tRyKtbUgUubi1HHdh6LJW3gEsOilbYUI2vgNmy0WC8jZ+AHbRrM+8TpAvd18VKe6ozXJWfg1jc06jJ6p7uxhk8XuNx213NH3jZxrsDLSJ3f1vNMpGzuJfss3f9+fwKb2y1j4PXGzz59b+1MgTfzi9gFHq8EFjhX4IxjuNXfX1o160tr+LTP0rOJR2SdeKypnvbodKulGM82/LJ4iE9YHo4ha+xmnak3ACK+1/8t8QbA4xbPkHyLp62Dd5835ybeuBvbDztMbR21ZNymrcvXdTlaWNfN99rLD2cO4+qB64v/4e369MlzV9c/incuQYnLny+tcTzDmbpv3aujHJLl/PD0Mj4izxlxAAAAAAAAAAAAAAAAAACAF/gCzksLUf/7uC8AAAAASUVORK5CYII="
								alt="carousel-img" sizes="228px"> <!-- end ngIf: !useStaticImages -->
							</a>
							<!-- end ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
							<!-- ngIf: (data['Link'].split(':')[0] == 'bigbasket' && data['Link'] !== '#') -->
							<!-- ngIf: data['Link'] === '#' -->
						</div>
					</div>
				</div>
				<!-- end ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
				<!-- end ngRepeat: data in ::sectionData -->
				<!-- ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col ng-scope"
					ng-repeat="data in ::sectionData"
					ng-if="sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined">
					<a></a>
					<div class="img-txt">
						<a></a>
						<div class="img-placeholder">
							<a> <!-- ngIf: data['Link'] !== '#' --> <span
								ng-if="data['Link'] !== '#'" class="ng-scope"></span> <!-- end ngIf: data['Link'] !== '#' -->
							</a>
							<!-- ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
							<a href="dailyesscustomer"> <img ng-if="!useStaticImages"
								class="img-responsive ng-scope lazyautosizes lazyloaded"
								src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/9530e302-3087-424b-96a6-e40e42a484be/t2_hp_c&amp;h_c_freshner_360_250723.jpg"
								data-sizes="auto"
								ng-src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/9530e302-3087-424b-96a6-e40e42a484be/t2_hp_c&amp;h_c_freshner_360_250723.jpg"
								fallback-src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAAC0CAMAAACdQlHaAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAASUExURQAAAO7u7u7u7u7u7u7u7u7u7vJvfjgAAAAGdFJOUwD9ORJuv+wju3wAAAGnSURBVHja7drbcoMgFAXQCIf//+UWNV7SpqMP6cSTtZ6w0plsAQWG2w0AAAAAAAAAAAAAAAAAAIC/1APyhC1xUEkRuvQgh/SaGfKWF1V+0/4c9Vz1qyc+G6DERzVwf0L14iN4zt26WB7Dd/lJ05dr9+n559c2dG1uvfFSYIEFFlhggQUW+F8CR/ugwLWM+tRyKtbUgUubi1HHdh6LJW3gEsOilbYUI2vgNmy0WC8jZ+AHbRrM+8TpAvd18VKe6ozXJWfg1jc06jJ6p7uxhk8XuNx213NH3jZxrsDLSJ3f1vNMpGzuJfss3f9+fwKb2y1j4PXGzz59b+1MgTfzi9gFHq8EFjhX4IxjuNXfX1o160tr+LTP0rOJR2SdeKypnvbodKulGM82/LJ4iE9YHo4ha+xmnak3ACK+1/8t8QbA4xbPkHyLp62Dd5835ybeuBvbDztMbR21ZNymrcvXdTlaWNfN99rLD2cO4+qB64v/4e369MlzV9c/incuQYnLny+tcTzDmbpv3aujHJLl/PD0Mj4izxlxAAAAAAAAAAAAAAAAAACAF/gCzksLUf/7uC8AAAAASUVORK5CYII="
								alt="carousel-img" sizes="228px"> <!-- end ngIf: !useStaticImages -->
							</a>
							<!-- end ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
							<!-- ngIf: (data['Link'].split(':')[0] == 'bigbasket' && data['Link'] !== '#') -->
							<!-- ngIf: data['Link'] === '#' -->
						</div>
					</div>
				</div>
				<!-- end ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
				<!-- end ngRepeat: data in ::sectionData -->
				<!-- ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col ng-scope"
					ng-repeat="data in ::sectionData"
					ng-if="sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined">
					<a></a>
					<div class="img-txt">
						<a></a>
						<div class="img-placeholder">
							<a> <!-- ngIf: data['Link'] !== '#' --> <span
								ng-if="data['Link'] !== '#'" class="ng-scope"></span> <!-- end ngIf: data['Link'] !== '#' -->
							</a>
							<!-- ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
							<a href="dailyesscustomer"> <img ng-if="!useStaticImages"
								class="img-responsive ng-scope lazyautosizes lazyloaded"
								src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/9530e302-3087-424b-96a6-e40e42a484be/t2_hp_c&amp;h_c_kitchen_360_250723.jpg"
								data-sizes="auto"
								ng-src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/9530e302-3087-424b-96a6-e40e42a484be/t2_hp_c&amp;h_c_kitchen_360_250723.jpg"
								fallback-src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAAC0CAMAAACdQlHaAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAASUExURQAAAO7u7u7u7u7u7u7u7u7u7vJvfjgAAAAGdFJOUwD9ORJuv+wju3wAAAGnSURBVHja7drbcoMgFAXQCIf//+UWNV7SpqMP6cSTtZ6w0plsAQWG2w0AAAAAAAAAAAAAAAAAAIC/1APyhC1xUEkRuvQgh/SaGfKWF1V+0/4c9Vz1qyc+G6DERzVwf0L14iN4zt26WB7Dd/lJ05dr9+n559c2dG1uvfFSYIEFFlhggQUW+F8CR/ugwLWM+tRyKtbUgUubi1HHdh6LJW3gEsOilbYUI2vgNmy0WC8jZ+AHbRrM+8TpAvd18VKe6ozXJWfg1jc06jJ6p7uxhk8XuNx213NH3jZxrsDLSJ3f1vNMpGzuJfss3f9+fwKb2y1j4PXGzz59b+1MgTfzi9gFHq8EFjhX4IxjuNXfX1o160tr+LTP0rOJR2SdeKypnvbodKulGM82/LJ4iE9YHo4ha+xmnak3ACK+1/8t8QbA4xbPkHyLp62Dd5835ybeuBvbDztMbR21ZNymrcvXdTlaWNfN99rLD2cO4+qB64v/4e369MlzV9c/incuQYnLny+tcTzDmbpv3aujHJLl/PD0Mj4izxlxAAAAAAAAAAAAAAAAAACAF/gCzksLUf/7uC8AAAAASUVORK5CYII="
								alt="carousel-img" sizes="228px"> <!-- end ngIf: !useStaticImages -->
							</a>
							<!-- end ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
							<!-- ngIf: (data['Link'].split(':')[0] == 'bigbasket' && data['Link'] !== '#') -->
							<!-- ngIf: data['Link'] === '#' -->
						</div>
					</div>
				</div>
				<!-- end ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
				<!-- end ngRepeat: data in ::sectionData -->
				<!-- ngRepeat: data in ::sectionData -->
				<!-- ngIf: sectionModel.ignoresectionupload=='1' -->
				<!-- end ngRepeat: data in ::sectionData -->
				<!-- ngIf: sectionModel.ignoresectionupload=='1' -->
				<!-- end ngRepeat: data in ::sectionData -->
				<!-- ngIf: sectionModel.ignoresectionupload=='1' -->
				<!-- end ngRepeat: data in ::sectionData -->
				<!-- ngIf: sectionModel.ignoresectionupload=='1' -->
				<!-- end ngRepeat: data in ::sectionData -->
			</section>
		</div>
		<!-- <div class="box_10">Div 2</div>
			<div class="box_10">Div 3</div>
			<div class="box_10">Div 1</div>
			<div class="box_10">Div 2</div>
			<div class="box_10">Div 3</div>
			<div class="box_10">Div 1</div>
			<div class="box_10">Div 2</div>
			<div class="box_10">Div 3</div> -->
	</div>
	<br>
	<h2 class="section-title ng-binding" ng-style="style.headerStyle"
		ng-bind="::title"
		style="color: rgb(68, 68, 68); text-align: center; font-size: 34px; font-weight: 1000">Snacks
		Store</h2>
	<hr style="color: black; font-weight: 1000">
	<div class="container_10">
		<div class="box_11">
			<section ng-if="sectionModel.type === 'Linear' "
				class="row section-pad ng-scope">
				<!-- ngRepeat: data in ::sectionData -->
				<!-- ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col ng-scope"
					ng-repeat="data in ::sectionData"
					ng-if="sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined">
					<a></a>
					<div class="img-txt">
						<a></a>
						<div class="img-placeholder">
							<a> <!-- ngIf: data['Link'] !== '#' --> <span
								ng-if="data['Link'] !== '#'" class="ng-scope"></span> <!-- end ngIf: data['Link'] !== '#' -->
							</a>
							<!-- ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
							<a href="sevcustomer"> <img ng-if="!useStaticImages"
								class="img-responsive ng-scope lazyautosizes lazyloaded"
								src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/d6e6c8d5-f30f-4e58-bebf-09790356713e/t2_hp_sbf_c_namkeens_360_250723.jpg"
								data-sizes="auto"
								ng-src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/d6e6c8d5-f30f-4e58-bebf-09790356713e/t2_hp_sbf_c_namkeens_360_250723.jpg"
								fallback-src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAAC0CAMAAACdQlHaAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAASUExURQAAAO7u7u7u7u7u7u7u7u7u7vJvfjgAAAAGdFJOUwD9ORJuv+wju3wAAAGnSURBVHja7drbcoMgFAXQCIf//+UWNV7SpqMP6cSTtZ6w0plsAQWG2w0AAAAAAAAAAAAAAAAAAIC/1APyhC1xUEkRuvQgh/SaGfKWF1V+0/4c9Vz1qyc+G6DERzVwf0L14iN4zt26WB7Dd/lJ05dr9+n559c2dG1uvfFSYIEFFlhggQUW+F8CR/ugwLWM+tRyKtbUgUubi1HHdh6LJW3gEsOilbYUI2vgNmy0WC8jZ+AHbRrM+8TpAvd18VKe6ozXJWfg1jc06jJ6p7uxhk8XuNx213NH3jZxrsDLSJ3f1vNMpGzuJfss3f9+fwKb2y1j4PXGzz59b+1MgTfzi9gFHq8EFjhX4IxjuNXfX1o160tr+LTP0rOJR2SdeKypnvbodKulGM82/LJ4iE9YHo4ha+xmnak3ACK+1/8t8QbA4xbPkHyLp62Dd5835ybeuBvbDztMbR21ZNymrcvXdTlaWNfN99rLD2cO4+qB64v/4e369MlzV9c/incuQYnLny+tcTzDmbpv3aujHJLl/PD0Mj4izxlxAAAAAAAAAAAAAAAAAACAF/gCzksLUf/7uC8AAAAASUVORK5CYII="
								alt="carousel-img" sizes="228px"> <!-- end ngIf: !useStaticImages -->
							</a>
							<!-- end ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
							<!-- ngIf: (data['Link'].split(':')[0] == 'bigbasket' && data['Link'] !== '#') -->
							<!-- ngIf: data['Link'] === '#' -->
						</div>
					</div>
				</div>
				<!-- end ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
				<!-- end ngRepeat: data in ::sectionData -->
				<!-- ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col ng-scope"
					ng-repeat="data in ::sectionData"
					ng-if="sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined">
					<a></a>
					<div class="img-txt">
						<a></a>
						<div class="img-placeholder">
							<a> <!-- ngIf: data['Link'] !== '#' --> <span
								ng-if="data['Link'] !== '#'" class="ng-scope"></span> <!-- end ngIf: data['Link'] !== '#' -->
							</a>
							<!-- ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
							<a href="sevcustomer"> <img ng-if="!useStaticImages"
								class="img-responsive ng-scope lazyautosizes lazyloaded"
								src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/d6e6c8d5-f30f-4e58-bebf-09790356713e/t2_hp_sbf_c_biscuits_360_250723.jpg"
								data-sizes="auto"
								ng-src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/d6e6c8d5-f30f-4e58-bebf-09790356713e/t2_hp_sbf_c_biscuits_360_250723.jpg"
								fallback-src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAAC0CAMAAACdQlHaAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAASUExURQAAAO7u7u7u7u7u7u7u7u7u7vJvfjgAAAAGdFJOUwD9ORJuv+wju3wAAAGnSURBVHja7drbcoMgFAXQCIf//+UWNV7SpqMP6cSTtZ6w0plsAQWG2w0AAAAAAAAAAAAAAAAAAIC/1APyhC1xUEkRuvQgh/SaGfKWF1V+0/4c9Vz1qyc+G6DERzVwf0L14iN4zt26WB7Dd/lJ05dr9+n559c2dG1uvfFSYIEFFlhggQUW+F8CR/ugwLWM+tRyKtbUgUubi1HHdh6LJW3gEsOilbYUI2vgNmy0WC8jZ+AHbRrM+8TpAvd18VKe6ozXJWfg1jc06jJ6p7uxhk8XuNx213NH3jZxrsDLSJ3f1vNMpGzuJfss3f9+fwKb2y1j4PXGzz59b+1MgTfzi9gFHq8EFjhX4IxjuNXfX1o160tr+LTP0rOJR2SdeKypnvbodKulGM82/LJ4iE9YHo4ha+xmnak3ACK+1/8t8QbA4xbPkHyLp62Dd5835ybeuBvbDztMbR21ZNymrcvXdTlaWNfN99rLD2cO4+qB64v/4e369MlzV9c/incuQYnLny+tcTzDmbpv3aujHJLl/PD0Mj4izxlxAAAAAAAAAAAAAAAAAACAF/gCzksLUf/7uC8AAAAASUVORK5CYII="
								alt="carousel-img" sizes="228px"> <!-- end ngIf: !useStaticImages -->
							</a>
							<!-- end ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
							<!-- ngIf: (data['Link'].split(':')[0] == 'bigbasket' && data['Link'] !== '#') -->
							<!-- ngIf: data['Link'] === '#' -->
						</div>
					</div>
				</div>
				<!-- end ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
				<!-- end ngRepeat: data in ::sectionData -->
				<!-- ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col ng-scope"
					ng-repeat="data in ::sectionData"
					ng-if="sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined">
					<a></a>
					<div class="img-txt">
						<a></a>
						<div class="img-placeholder">
							<a> <!-- ngIf: data['Link'] !== '#' --> <span
								ng-if="data['Link'] !== '#'" class="ng-scope"></span> <!-- end ngIf: data['Link'] !== '#' -->
							</a>
							<!-- ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
							<a href="biscuitcustomer"> <img ng-if="!useStaticImages"
								class="img-responsive ng-scope lazyautosizes lazyloaded"
								src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/d6e6c8d5-f30f-4e58-bebf-09790356713e/t2_hp_sbf_c_noodles_360_250723.jpg"
								data-sizes="auto"
								ng-src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/d6e6c8d5-f30f-4e58-bebf-09790356713e/t2_hp_sbf_c_noodles_360_250723.jpg"
								fallback-src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAAC0CAMAAACdQlHaAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAASUExURQAAAO7u7u7u7u7u7u7u7u7u7vJvfjgAAAAGdFJOUwD9ORJuv+wju3wAAAGnSURBVHja7drbcoMgFAXQCIf//+UWNV7SpqMP6cSTtZ6w0plsAQWG2w0AAAAAAAAAAAAAAAAAAIC/1APyhC1xUEkRuvQgh/SaGfKWF1V+0/4c9Vz1qyc+G6DERzVwf0L14iN4zt26WB7Dd/lJ05dr9+n559c2dG1uvfFSYIEFFlhggQUW+F8CR/ugwLWM+tRyKtbUgUubi1HHdh6LJW3gEsOilbYUI2vgNmy0WC8jZ+AHbRrM+8TpAvd18VKe6ozXJWfg1jc06jJ6p7uxhk8XuNx213NH3jZxrsDLSJ3f1vNMpGzuJfss3f9+fwKb2y1j4PXGzz59b+1MgTfzi9gFHq8EFjhX4IxjuNXfX1o160tr+LTP0rOJR2SdeKypnvbodKulGM82/LJ4iE9YHo4ha+xmnak3ACK+1/8t8QbA4xbPkHyLp62Dd5835ybeuBvbDztMbR21ZNymrcvXdTlaWNfN99rLD2cO4+qB64v/4e369MlzV9c/incuQYnLny+tcTzDmbpv3aujHJLl/PD0Mj4izxlxAAAAAAAAAAAAAAAAAACAF/gCzksLUf/7uC8AAAAASUVORK5CYII="
								alt="carousel-img" sizes="228px"> <!-- end ngIf: !useStaticImages -->
							</a>
							<!-- end ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
							<!-- ngIf: (data['Link'].split(':')[0] == 'bigbasket' && data['Link'] !== '#') -->
							<!-- ngIf: data['Link'] === '#' -->
						</div>
					</div>
				</div>

				<!-- end ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
				<!-- end ngRepeat: data in ::sectionData -->
				<!-- ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col ng-scope"
					ng-repeat="data in ::sectionData"
					ng-if="sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined">
					<a></a>
					<div class="img-txt">
						<a></a>
						<div class="img-placeholder">
							<a> <!-- ngIf: data['Link'] !== '#' --> <span
								ng-if="data['Link'] !== '#'" class="ng-scope"></span> <!-- end ngIf: data['Link'] !== '#' -->
							</a>
							<!-- ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
							<a href="biscuitcustomer"> <img ng-if="!useStaticImages"
								class="img-responsive ng-scope lazyautosizes lazyloaded"
								src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/d6e6c8d5-f30f-4e58-bebf-09790356713e/t2_hp_sbf_c_chocolates_360_250723.jpg"
								data-sizes="auto"
								ng-src="//www.bigbasket.com/media/customPage/c9309c26-4fb9-4233-b2b3-1d0a11af6c92/0fb80f93-5caf-4671-b5a5-0d3eea61ea5e/d6e6c8d5-f30f-4e58-bebf-09790356713e/t2_hp_sbf_c_chocolates_360_250723.jpg"
								fallback-src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAAC0CAMAAACdQlHaAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAASUExURQAAAO7u7u7u7u7u7u7u7u7u7vJvfjgAAAAGdFJOUwD9ORJuv+wju3wAAAGnSURBVHja7drbcoMgFAXQCIf//+UWNV7SpqMP6cSTtZ6w0plsAQWG2w0AAAAAAAAAAAAAAAAAAIC/1APyhC1xUEkRuvQgh/SaGfKWF1V+0/4c9Vz1qyc+G6DERzVwf0L14iN4zt26WB7Dd/lJ05dr9+n559c2dG1uvfFSYIEFFlhggQUW+F8CR/ugwLWM+tRyKtbUgUubi1HHdh6LJW3gEsOilbYUI2vgNmy0WC8jZ+AHbRrM+8TpAvd18VKe6ozXJWfg1jc06jJ6p7uxhk8XuNx213NH3jZxrsDLSJ3f1vNMpGzuJfss3f9+fwKb2y1j4PXGzz59b+1MgTfzi9gFHq8EFjhX4IxjuNXfX1o160tr+LTP0rOJR2SdeKypnvbodKulGM82/LJ4iE9YHo4ha+xmnak3ACK+1/8t8QbA4xbPkHyLp62Dd5835ybeuBvbDztMbR21ZNymrcvXdTlaWNfN99rLD2cO4+qB64v/4e369MlzV9c/incuQYnLny+tcTzDmbpv3aujHJLl/PD0Mj4izxlxAAAAAAAAAAAAAAAAAACAF/gCzksLUf/7uC8AAAAASUVORK5CYII="
								alt="carousel-img" sizes="228px"> <!-- end ngIf: !useStaticImages -->
							</a>
							<!-- end ngIf: (data['Link'].split(':')[0] != 'bigbasket' && data['Link'] !== '#') -->
							<!-- ngIf: (data['Link'].split(':')[0] == 'bigbasket' && data['Link'] !== '#') -->
							<!-- ngIf: data['Link'] === '#' -->
						</div>
					</div>
				</div>

				<!-- end ngIf: sectionModel.ignoresectionupload=='0' || sectionModel.ignoresectionupload==undefined -->
				<!-- end ngRepeat: data in ::sectionData -->
				<!-- ngRepeat: data in ::sectionData -->
				<!-- ngIf: sectionModel.ignoresectionupload=='1' -->
				<!-- end ngRepeat: data in ::sectionData -->
				<!-- ngIf: sectionModel.ignoresectionupload=='1' -->
				<!-- end ngRepeat: data in ::sectionData -->
				<!-- ngIf: sectionModel.ignoresectionupload=='1' -->
				<!-- end ngRepeat: data in ::sectionData -->
				<!-- ngIf: sectionModel.ignoresectionupload=='1' -->
				<!-- end ngRepeat: data in ::sectionData -->
			</section>
		</div>
		<!-- <div class="box_10">Div 2</div>
			<div class="box_10">Div 3</div>
			<div class="box_10">Div 1</div>
			<div class="box_10">Div 2</div>
			<div class="box_10">Div 3</div>
			<div class="box_10">Div 1</div>
			<div class="box_10">Div 2</div>
			<div class="box_10">Div 3</div> -->
	</div>

	<br>
	<!-- <h2 class="section-title ng-binding" ng-style="style.headerStyle"
			ng-bind="::title"
			style="color: rgb(68, 68, 68); text-align: center; font-size: 34px; font-weight: 1000">dal
			& grains</h2>
		<hr style="color: black; font-weight: 1000">
		<div class="container_10" style="background-color: white;">
			<div class="box_11" style="background-color: #D3D3D3;padding: 25px"><img src="image/urad dal 2.jpg"	alt="carousel-img" width="300px;" height="360px;" style="background-color: #D3D3D3"  > end ngIf: !useStaticImages
								</div>
			<div class="box_11" style="background-color: #D3D3D3"><img src="image/urad dal.webp"	alt="carousel-img" width="300px;" height="360px;"  > end ngIf: !useStaticImages
								</div>
			<div class="box_11" style="background-color: #D3D3D3"><img src="image/moong dal2.jpg"	alt="carousel-img" width="300px;" height="360px;"  > end ngIf: !useStaticImages
								</div>
			<div class="box_11" style="background-color: #D3D3D3"><img src="image/moong dal.webp"	alt="carousel-img" width="300px;" height="360px;"  > end ngIf: !useStaticImages
								</div>
			<div class="box_11" style="background-color: #D3D3D3"><img src="image/massor dal.jpg"	alt="carousel-img" width="300px;" height="360px;" > end ngIf: !useStaticImages
								</div>
			<div class="box_11" style="background-color: #D3D3D3"><img src="image/chana dal.jpeg"	alt="carousel-img" width="300px;" height="360px;"  > end ngIf: !useStaticImages
								</div>
			
			
		</div>
		<br> -->

	<!--################### home-page2 Proctuct end  ########################### -->
	<%-- <%
		if (aa != null) {
		%>
		<div class="row">
			<div class="col-12" style="border: 0px solid; width: 100%;">
				<marquee>
					<div class="container_10" style="width: 100%;">

						<%
						for (Product mm : list) {
						%>
						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>
						<%
						}
						%>
					
				</marquee>
			</div>

		</div>
		<%
		} else {
		%>
		<div class="row">
			<div class="col-12" style="border: 0px solid; width: 100%;">
				<marquee>
					<div class="container_10" style="width: 100%;">


						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>

						<div class="box"
							style="border: 0px solid; width: 100%; margin-right: 1cm; padding: 15px;">
							<div class="card text-white bg-success mb-3"
								style="max-width: 18rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<img src="./image/massor dal.jpg" width="200px" height="220px">
									<p class="card-text"></p>
								</div>
							</div>
						</div>
				</marquee>
			</div>

		</div>
		<%
		}
		%> --%>

	<div class="categori-page" style="margin-left: 15cm;">
		<h1 class="categori-he">
			Our <span class="categ-sp">Categories</span>
		</h1>
	</div>
	<div style="padding: 3cm;">

		<div class="container_10" class="jumbotron jumbotron-fluid">

			<div class="box_11">
				<a href="oil&gheecustomser"
					style="text-decoration: none; color: black;">
					<div class="card" style="width: 18rem; border-radius: 20px;">
						<img src="./images/edible-oil-ghee.jpg" class="card-img-top"
							alt="..." style="padding: 10px; border-radius: 20px;">
						<div class="card-body">
							<h4 style="font-family: sans-serif; font-weight: 1000">OIL &
								GHEE</h4>
							<!-- HTML !-->
							<!-- <button class="button-24" role="button" style="width: 4cm;">Button 24</button> -->

						</div>
					</div>
				</a>
			</div>
			<div class="box_11">
				<a href="sugarjerrycustomer"
					style="text-decoration: none; color: black;">
					<div class="card" style="width: 18rem; border-radius: 20px;">
						<img src="./images/sugar.webp" class="card-img-top" alt="...">
						<div class="card-body">
							<h4 style="font-family: sans-serif; font-weight: 1000">SUGAR
								& JERRY</h4>
						</div>
					</div>
			</div>
			<div class="box_11">
				<a href="soapdetergentcustomer"
					style="text-decoration: none; color: black;">
					<div class="card" style="width: 18rem; border-radius: 20px;">
						<img src="./images/soap detergent.jpg" class="card-img-top"
							alt="...">
						<div class="card-body">
							<h4 style="font-family: sans-serif; font-weight: 1000">SOAP
								& DETERGENT</h4>
						</div>
					</div>
			</div>
			<div class="box_11">
				<a href="spicescustomer"
					style="text-decoration: none; color: black;">
					<div class="card" style="width: 18rem; border-radius: 20px;">
						<img src="./images/spices1.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<h4 style="font-family: sans-serif; font-weight: 1000">SPICES
								& MASALA</h4>
						</div>
					</div>
			</div>
			<div class="box_11">
				<a href="attacustomer" style="text-decoration: none; color: black;">
					<div class="card" style="width: 18rem; border-radius: 20px;">
						<img src="./images/atta.webp" class="card-img-top" alt="...">
						<div class="card-body">
							<h4 style="font-family: sans-serif; font-weight: 1000">ATTA
								& POHA</h4>
						</div>
					</div>
			</div>
			<div class="box_11">
				<a href="dalcustomer" style="text-decoration: none; color: black;">
					<div class="card" style="width: 18rem; border-radius: 20px;">
						<img src="./images/dal and grains.webp" class="card-img-top"
							alt="...">
						<div class="card-body">
							<h4 style="font-family: sans-serif; font-weight: 1000">DAL &
								PULSE</h4>
						</div>
					</div>
			</div>

		</div>
		<div class="container_10" class="jumbotron jumbotron-fluid">
			<div class="box_11">
				<a href="sevcustomer" style="text-decoration: none; color: black;">
					<div class="card" style="width: 18rem; border-radius: 20px;">
						<img src="./images/sev.webp" class="card-img-top" alt="...">
						<div class="card-body">
							<h4 style="font-family: sans-serif; font-weight: 1000">SEV &
								NAMKEEN</h4>
						</div>
					</div>
			</div>
			<div class="box_11">
				<a href="biscuitcustomer"
					style="text-decoration: none; color: black;">
					<div class="card" style="width: 18rem; border-radius: 20px;">
						<img src="./images/biscuits.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<h4 style="font-family: sans-serif; font-weight: 1000">BISCUITS
								& CHOCLATE</h4>
						</div>
					</div>
			</div>
			<div class="box_11">
				<a href="agarbatticustomer"
					style="text-decoration: none; color: black;">
					<div class="card" style="width: 18rem; border-radius: 20px;">
						<img src="./images/agarbatti.jpg
  " class="card-img-top"
							alt="...">
						<div class="card-body">
							<h4 style="font-family: sans-serif; font-weight: 1000">AGARBATTI
								& PUJJA</h4>
						</div>
					</div>
			</div>
			<div class="box_11">
				<a href="dryfruitcustomer"
					style="text-decoration: none; color: black;">
					<div class="card" style="width: 18rem; border-radius: 20px;">
						<img src="./images/dryfruit'.jpg
  " class="card-img-top"
							alt="...">
						<div class="card-body">
							<h4 style="font-family: sans-serif; font-weight: 1000">DRYFRUIT
								PRODUCT</h4>
						</div>
					</div>
			</div>
			<div class="box_11">
				<a href="dailyesscustomer"
					style="text-decoration: none; color: black;">
					<div class="card" style="width: 18rem; border-radius: 20px;">
						<img src="./images/daily-product.avif" class="card-img-top"
							alt="...">
						<div class="card-body">
							<h4 style="font-family: sans-serif; font-weight: 1000">DAILY
								ESSENTIAL</h4>
						</div>
					</div>
			</div>
			<div class="box_11">
				<a href="dairycustomer" style="text-decoration: none; color: black;">
					<div class="card" style="width: 18rem; border-radius: 20px;">
						<img src="./images/dairy.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<h4 style="font-family: sans-serif; font-weight: 1000">DAIRY
								PRODUCTS</h4>
						</div>
					</div>
			</div>
			</a>
		</div>
	</div>

	<!--################### home-page2 Categoris start  ########################### -->

	<!-- <section class="categoris-section" id="categoris-section" style="width: 100%;">

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
 -->

	<!--################### home-page2 Categoris end  ########################### -->

	<!-- <video  controls  style="border: 5px solid;margin-left: 1.3cm;padding: 5cm;" id="continuousVideo" autoplay loop controls>
        <source src="image/Colorful Online E-Commerce Website Promotion Video.mp4" type="video/mp4" style="width: 100%;padding: 25px;height: 5cm;" >
        Your browser does not support the video tag.
    </video>
     -->
	<!-- <script>
        // JavaScript to continuously play the video
        var video = document.getElementById('continuousVideo');

        video.addEventListener('ended', function() {
            video.currentTime = 0; // Reset the video to the beginning
            video.play();
        });
    </script> -->



	<!-- <img src="image/Colorful Online E-Commerce Website Promotion Video.gif"
		style="height: 23cm; width: 100%; padding: 35px;">
 -->
	<!-- Card deck -->


<h2 class="section-title ng-binding" ng-style="style.headerStyle"
		ng-bind="::title"
		style="color: rgb(68, 68, 68); text-align: center; font-size: 34px; font-weight: 1000">Snacks
		Store</h2>
	<hr style="color: black; font-weight: 1000">
	<div class="container_10">
		<div class="box_11">
			<section style="background-color: #eee;">
				<div class="text-center container py-5">
					<h4 class="mt-4 mb-5">
						<strong>Bestsellers</strong>
					</h4>

					<div class="row">
						<div class="col-lg-4 col-md-12 mb-4">
							<div class="card">
								<div
									class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
									data-mdb-ripple-color="light">
									<img
										src="image/dustbin_bag.webp"
										class="w-100" style="padding: 0.5cm;height: 9.5cm;" /> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-primary ms-2">New</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">$61.99</h6>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card">
								<div
									class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
									data-mdb-ripple-color="light">
									<img
										src="./image/dustbin.webp"
										class="w-100" style="padding: 0.5cm;height: 9.5cm;" /> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-success ms-2">Eco</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">$61.99</h6>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card">
								<div class="bg-image hover-zoom ripple"
									data-mdb-ripple-color="light">
									<img
										src="./image/wiper.webp"
										class="w-100" style="padding: 0.5cm;height: 9.5cm;" /> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-danger ms-2">-10%</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">
										<s>$61.99</s><strong class="ms-2 text-danger">$50.99</strong>
									</h6>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-4 col-md-12 mb-4">
							<div class="card">
								<div class="bg-image hover-zoom ripple"
									data-mdb-ripple-color="light">
									<img
										src="./image/zhadu.webp"
										class="w-100" style="padding: 0.5cm;height: 9.5cm;" /> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-success ms-2">Eco</span><span
														class="badge bg-danger ms-2">-10%</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">
										<s>$61.99</s><strong class="ms-2 text-danger">$50.99</strong>
									</h6>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card">
								<div
									class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
									data-mdb-ripple-color="light">
									<img
										src="./image/cl.webp"
										class="w-100" style="padding: 0.5cm;height: 9.5cm;" /> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100"></div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">$61.99</h6>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card">
								<div class="bg-image hover-zoom ripple"
									data-mdb-ripple-color="light">
									<img
										src="./image/odonil.webp"
										class="w-100"  style="padding: 0.5cm;height: 9.5cm;"/> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-primary ms-2">New</span><span
														class="badge bg-success ms-2">Eco</span><span
														class="badge bg-danger ms-2">-10%</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">
										<s>$61.99</s><strong class="ms-2 text-danger">$50.99</strong>
									</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<div class="box_11">
			<section style="background-color: #eee;">
				<div class="text-center container py-5">
					<h4 class="mt-4 mb-5">
						<strong>Bestsellers</strong>
					</h4>

					<div class="row">
						<div class="col-lg-4 col-md-12 mb-4">
							<div class="card">
								<div
									class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
									data-mdb-ripple-color="light" ">
									<img
										src="./image/sugar.webp"
										class="w-100"  style="padding: 0.5cm;height: 9.5cm;"/> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-primary ms-2">New</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">$61.99</h6>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card">
								<div
									class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
									data-mdb-ripple-color="light" >
									<img
										src="./image/sugar.webp"
										class="w-100" style="padding: 0.5cm;height: 9.5cm;" /> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-success ms-2">Eco</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">$61.99</h6>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card">
								<div class="bg-image hover-zoom ripple"
									data-mdb-ripple-color="light">
									<img
										src="./image/sugar.webp" style="padding: 0.5;height: 9.5cm;"/> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-danger ms-2">-10%</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">
										<s>$61.99</s><strong class="ms-2 text-danger">$50.99</strong>
									</h6>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-4 col-md-12 mb-4">
							<div class="card">
								<div class="bg-image hover-zoom ripple"
									data-mdb-ripple-color="light">
									<img
										src="./image/madhur.webp"
										class="w-100" style="padding: 1cm;height: 9.5cm;"/> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-success ms-2">Eco</span><span
														class="badge bg-danger ms-2">-10%</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">
										<s>$61.99</s><strong class="ms-2 text-danger">$50.99</strong>
									</h6>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card">
								<div
									class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
									data-mdb-ripple-color="light">
									<img
										src="./image/goodsugar.webp"
										class="w-100"  style="height: 9.5cm;padding: 1cm;"/> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100"></div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">$61.99</h6>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card">
								<div class="bg-image hover-zoom ripple"
									data-mdb-ripple-color="light">
									<img
										src="./image/madhur.webp"
										class="w-100" style="height: 9.5cm;padding: 1cm;"/> <a href="#!">
										<div class="mask">
											<div
												class="d-flex justify-content-start align-items-end h-100">
												<h5>
													<span class="badge bg-primary ms-2">New</span><span
														class="badge bg-success ms-2">Eco</span><span
														class="badge bg-danger ms-2">-10%</span>
												</h5>
											</div>
										</div>
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
								</div>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title mb-3">Product name</h5>
									</a> <a href="" class="text-reset">
										<p>Category</p>
									</a>
									<h6 class="mb-3">
										<s>$61.99</s><strong class="ms-2 text-danger">$50.99</strong>
									</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>

	</div>
	<br>




	<!--################### home-page2 blogs end  ########################### -->
	<%-- 
<div style="width: 100%;">
		 <footer style="width: 100%;">
			<div class="content" style="width: 100%;">
			
				<div class="top" style="width: 100%;">
					<div class="logo-details">
						<i class="fa-solid fa-bag-shopping icon"></i> <span
							class="logo_name">BringIt</span>
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
						<h1>WELCOME - <%=aa.getName() %></h1>
						<li class="link_name">Account</li>
						<li><a href="profile_by_id?user_id=<%=aa.getUser_id()%>">Profile</a></li>
						<li><a href="profile_by_id?user_id=<%=aa.getUser_id()%>">My
								account</a></li>
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
						
						
							<!-- <input type="text" placeholder="Enter your review here"
								style="height: 5cm;" name="review"><br> <br> <input
								type="text" placeholder="Enter yours email" name="email_id">

							<br> <br> -->
							
							 <div class="rating">
      <input type="radio" name="rating" id="rating-5">
      <label for="rating-5"></label>
      <input type="radio" name="rating" id="rating-4">
      <label for="rating-4"></label>
      <input type="radio" name="rating" id="rating-3">
      <label for="rating-3"></label>
      <input type="radio" name="rating" id="rating-2">
      <label for="rating-2"></label>
      <input type="radio" name="rating" id="rating-1">
      <label for="rating-1"></label>
      <div class="emoji-wrapper">
        <div class="emoji">
          <svg class="rating-0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
          <circle cx="256" cy="256" r="256" fill="#ffd93b"/>
          <path d="M512 256c0 141.44-114.64 256-256 256-80.48 0-152.32-37.12-199.28-95.28 43.92 35.52 99.84 56.72 160.72 56.72 141.36 0 256-114.56 256-256 0-60.88-21.2-116.8-56.72-160.72C474.8 103.68 512 175.52 512 256z" fill="#f4c534"/>
          <ellipse transform="scale(-1) rotate(31.21 715.433 -595.455)" cx="166.318" cy="199.829" rx="56.146" ry="56.13" fill="#fff"/>
          <ellipse transform="rotate(-148.804 180.87 175.82)" cx="180.871" cy="175.822" rx="28.048" ry="28.08" fill="#3e4347"/>
          <ellipse transform="rotate(-113.778 194.434 165.995)" cx="194.433" cy="165.993" rx="8.016" ry="5.296" fill="#5a5f63"/>
          <ellipse transform="scale(-1) rotate(31.21 715.397 -1237.664)" cx="345.695" cy="199.819" rx="56.146" ry="56.13" fill="#fff"/>
          <ellipse transform="rotate(-148.804 360.25 175.837)" cx="360.252" cy="175.84" rx="28.048" ry="28.08" fill="#3e4347"/>
          <ellipse transform="scale(-1) rotate(66.227 254.508 -573.138)" cx="373.794" cy="165.987" rx="8.016" ry="5.296" fill="#5a5f63"/>
          <path d="M370.56 344.4c0 7.696-6.224 13.92-13.92 13.92H155.36c-7.616 0-13.92-6.224-13.92-13.92s6.304-13.92 13.92-13.92h201.296c7.696.016 13.904 6.224 13.904 13.92z" fill="#3e4347"/>
        </svg>
          <svg class="rating-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
          <circle cx="256" cy="256" r="256" fill="#ffd93b"/>
          <path d="M512 256A256 256 0 0 1 56.7 416.7a256 256 0 0 0 360-360c58.1 47 95.3 118.8 95.3 199.3z" fill="#f4c534"/>
          <path d="M328.4 428a92.8 92.8 0 0 0-145-.1 6.8 6.8 0 0 1-12-5.8 86.6 86.6 0 0 1 84.5-69 86.6 86.6 0 0 1 84.7 69.8c1.3 6.9-7.7 10.6-12.2 5.1z" fill="#3e4347"/>
          <path d="M269.2 222.3c5.3 62.8 52 113.9 104.8 113.9 52.3 0 90.8-51.1 85.6-113.9-2-25-10.8-47.9-23.7-66.7-4.1-6.1-12.2-8-18.5-4.2a111.8 111.8 0 0 1-60.1 16.2c-22.8 0-42.1-5.6-57.8-14.8-6.8-4-15.4-1.5-18.9 5.4-9 18.2-13.2 40.3-11.4 64.1z" fill="#f4c534"/>
          <path d="M357 189.5c25.8 0 47-7.1 63.7-18.7 10 14.6 17 32.1 18.7 51.6 4 49.6-26.1 89.7-67.5 89.7-41.6 0-78.4-40.1-82.5-89.7A95 95 0 0 1 298 174c16 9.7 35.6 15.5 59 15.5z" fill="#fff"/>
          <path d="M396.2 246.1a38.5 38.5 0 0 1-38.7 38.6 38.5 38.5 0 0 1-38.6-38.6 38.6 38.6 0 1 1 77.3 0z" fill="#3e4347"/>
          <path d="M380.4 241.1c-3.2 3.2-9.9 1.7-14.9-3.2-4.8-4.8-6.2-11.5-3-14.7 3.3-3.4 10-2 14.9 2.9 4.9 5 6.4 11.7 3 15z" fill="#fff"/>
          <path d="M242.8 222.3c-5.3 62.8-52 113.9-104.8 113.9-52.3 0-90.8-51.1-85.6-113.9 2-25 10.8-47.9 23.7-66.7 4.1-6.1 12.2-8 18.5-4.2 16.2 10.1 36.2 16.2 60.1 16.2 22.8 0 42.1-5.6 57.8-14.8 6.8-4 15.4-1.5 18.9 5.4 9 18.2 13.2 40.3 11.4 64.1z" fill="#f4c534"/>
          <path d="M155 189.5c-25.8 0-47-7.1-63.7-18.7-10 14.6-17 32.1-18.7 51.6-4 49.6 26.1 89.7 67.5 89.7 41.6 0 78.4-40.1 82.5-89.7A95 95 0 0 0 214 174c-16 9.7-35.6 15.5-59 15.5z" fill="#fff"/>
          <path d="M115.8 246.1a38.5 38.5 0 0 0 38.7 38.6 38.5 38.5 0 0 0 38.6-38.6 38.6 38.6 0 1 0-77.3 0z" fill="#3e4347"/>
          <path d="M131.6 241.1c3.2 3.2 9.9 1.7 14.9-3.2 4.8-4.8 6.2-11.5 3-14.7-3.3-3.4-10-2-14.9 2.9-4.9 5-6.4 11.7-3 15z" fill="#fff"/>
        </svg>
          <svg class="rating-2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
          <circle cx="256" cy="256" r="256" fill="#ffd93b"/>
          <path d="M512 256A256 256 0 0 1 56.7 416.7a256 256 0 0 0 360-360c58.1 47 95.3 118.8 95.3 199.3z" fill="#f4c534"/>
          <path d="M336.6 403.2c-6.5 8-16 10-25.5 5.2a117.6 117.6 0 0 0-110.2 0c-9.4 4.9-19 3.3-25.6-4.6-6.5-7.7-4.7-21.1 8.4-28 45.1-24 99.5-24 144.6 0 13 7 14.8 19.7 8.3 27.4z" fill="#3e4347"/>
          <path d="M276.6 244.3a79.3 79.3 0 1 1 158.8 0 79.5 79.5 0 1 1-158.8 0z" fill="#fff"/>
          <circle cx="340" cy="260.4" r="36.2" fill="#3e4347"/>
          <g fill="#fff">
            <ellipse transform="rotate(-135 326.4 246.6)" cx="326.4" cy="246.6" rx="6.5" ry="10"/>
            <path d="M231.9 244.3a79.3 79.3 0 1 0-158.8 0 79.5 79.5 0 1 0 158.8 0z"/>
          </g>
          <circle cx="168.5" cy="260.4" r="36.2" fill="#3e4347"/>
          <ellipse transform="rotate(-135 182.1 246.7)" cx="182.1" cy="246.7" rx="10" ry="6.5" fill="#fff"/>
        </svg>
          <svg class="rating-3" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
    <circle cx="256" cy="256" r="256" fill="#ffd93b"/>
    <path d="M407.7 352.8a163.9 163.9 0 0 1-303.5 0c-2.3-5.5 1.5-12 7.5-13.2a780.8 780.8 0 0 1 288.4 0c6 1.2 9.9 7.7 7.6 13.2z" fill="#3e4347"/>
    <path d="M512 256A256 256 0 0 1 56.7 416.7a256 256 0 0 0 360-360c58.1 47 95.3 118.8 95.3 199.3z" fill="#f4c534"/>
    <g fill="#fff">
      <path d="M115.3 339c18.2 29.6 75.1 32.8 143.1 32.8 67.1 0 124.2-3.2 143.2-31.6l-1.5-.6a780.6 780.6 0 0 0-284.8-.6z"/>
      <ellipse cx="356.4" cy="205.3" rx="81.1" ry="81"/>
    </g>
    <ellipse cx="356.4" cy="205.3" rx="44.2" ry="44.2" fill="#3e4347"/>
    <g fill="#fff">
      <ellipse transform="scale(-1) rotate(45 454 -906)" cx="375.3" cy="188.1" rx="12" ry="8.1"/>
      <ellipse cx="155.6" cy="205.3" rx="81.1" ry="81"/>
    </g>
    <ellipse cx="155.6" cy="205.3" rx="44.2" ry="44.2" fill="#3e4347"/>
    <ellipse transform="scale(-1) rotate(45 454 -421.3)" cx="174.5" cy="188" rx="12" ry="8.1" fill="#fff"/>
  </svg>
          <svg class="rating-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
          <circle cx="256" cy="256" r="256" fill="#ffd93b"/>
          <path d="M512 256A256 256 0 0 1 56.7 416.7a256 256 0 0 0 360-360c58.1 47 95.3 118.8 95.3 199.3z" fill="#f4c534"/>
          <path d="M232.3 201.3c0 49.2-74.3 94.2-74.3 94.2s-74.4-45-74.4-94.2a38 38 0 0 1 74.4-11.1 38 38 0 0 1 74.3 11.1z" fill="#e24b4b"/>
          <path d="M96.1 173.3a37.7 37.7 0 0 0-12.4 28c0 49.2 74.3 94.2 74.3 94.2C80.2 229.8 95.6 175.2 96 173.3z" fill="#d03f3f"/>
          <path d="M215.2 200c-3.6 3-9.8 1-13.8-4.1-4.2-5.2-4.6-11.5-1.2-14.1 3.6-2.8 9.7-.7 13.9 4.4 4 5.2 4.6 11.4 1.1 13.8z" fill="#fff"/>
          <path d="M428.4 201.3c0 49.2-74.4 94.2-74.4 94.2s-74.3-45-74.3-94.2a38 38 0 0 1 74.4-11.1 38 38 0 0 1 74.3 11.1z" fill="#e24b4b"/>
          <path d="M292.2 173.3a37.7 37.7 0 0 0-12.4 28c0 49.2 74.3 94.2 74.3 94.2-77.8-65.7-62.4-120.3-61.9-122.2z" fill="#d03f3f"/>
          <path d="M411.3 200c-3.6 3-9.8 1-13.8-4.1-4.2-5.2-4.6-11.5-1.2-14.1 3.6-2.8 9.7-.7 13.9 4.4 4 5.2 4.6 11.4 1.1 13.8z" fill="#fff"/>
          <path d="M381.7 374.1c-30.2 35.9-75.3 64.4-125.7 64.4s-95.4-28.5-125.8-64.2a17.6 17.6 0 0 1 16.5-28.7 627.7 627.7 0 0 0 218.7-.1c16.2-2.7 27 16.1 16.3 28.6z" fill="#3e4347"/>
          <path d="M256 438.5c25.7 0 50-7.5 71.7-19.5-9-33.7-40.7-43.3-62.6-31.7-29.7 15.8-62.8-4.7-75.6 34.3 20.3 10.4 42.8 17 66.5 17z" fill="#e24b4b"/>
        </svg>
          <svg class="rating-5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
          <g fill="#ffd93b">
            <circle cx="256" cy="256" r="256"/>
            <path d="M512 256A256 256 0 0 1 56.8 416.7a256 256 0 0 0 360-360c58 47 95.2 118.8 95.2 199.3z"/>
          </g>
          <path d="M512 99.4v165.1c0 11-8.9 19.9-19.7 19.9h-187c-13 0-23.5-10.5-23.5-23.5v-21.3c0-12.9-8.9-24.8-21.6-26.7-16.2-2.5-30 10-30 25.5V261c0 13-10.5 23.5-23.5 23.5h-187A19.7 19.7 0 0 1 0 264.7V99.4c0-10.9 8.8-19.7 19.7-19.7h472.6c10.8 0 19.7 8.7 19.7 19.7z" fill="#e9eff4"/>
          <path d="M204.6 138v88.2a23 23 0 0 1-23 23H58.2a23 23 0 0 1-23-23v-88.3a23 23 0 0 1 23-23h123.4a23 23 0 0 1 23 23z" fill="#45cbea"/>
          <path d="M476.9 138v88.2a23 23 0 0 1-23 23H330.3a23 23 0 0 1-23-23v-88.3a23 23 0 0 1 23-23h123.4a23 23 0 0 1 23 23z" fill="#e84d88"/>
          <g fill="#38c0dc">
            <path d="M95.2 114.9l-60 60v15.2l75.2-75.2zM123.3 114.9L35.1 203v23.2c0 1.8.3 3.7.7 5.4l116.8-116.7h-29.3z"/>
          </g>
          <g fill="#d23f77">
            <path d="M373.3 114.9l-66 66V196l81.3-81.2zM401.5 114.9l-94.1 94v17.3c0 3.5.8 6.8 2.2 9.8l121.1-121.1h-29.2z"/>
          </g>
          <path d="M329.5 395.2c0 44.7-33 81-73.4 81-40.7 0-73.5-36.3-73.5-81s32.8-81 73.5-81c40.5 0 73.4 36.3 73.4 81z" fill="#3e4347"/>
          <path d="M256 476.2a70 70 0 0 0 53.3-25.5 34.6 34.6 0 0 0-58-25 34.4 34.4 0 0 0-47.8 26 69.9 69.9 0 0 0 52.6 24.5z" fill="#e24b4b"/>
          <path d="M290.3 434.8c-1 3.4-5.8 5.2-11 3.9s-8.4-5.1-7.4-8.7c.8-3.3 5.7-5 10.7-3.8 5.1 1.4 8.5 5.3 7.7 8.6z" fill="#fff" opacity=".2"/>
        </svg>
        </div>
      </div>
    </div>
 
 
							
							
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
					<span class="copyright_text">Copyright © 2023 <a href="#">BringIt
							</a>All rights reserved
					</span> <span class="policy_terms"> <a href="#">Privacy policy</a>
						<a href="#">Terms & condition</a>
					</span>
				</div>
			</div>
			</div>
			
			<hr style="margin-bottom:0px; margin-top:30px; padding:0px;">
        <div class="row" id="sub-two">

            <div class="col-md-4">
                <div class="vertical-line text-center">
                    <span class="glyphicon glyphicon-map-marker"></span>
                    <h4>TRACK YOUR ORDER</h4>
                </div>
            </div>

            <div class="col-md-4">
                <div class="vertical-line text-center">
                    <span class="glyphicon glyphicon-refresh"></span>
                    <h4>FREE & EASY RETURNS</h4>
                </div>
            </div>

            <div class="col-md-4">
                <div style="margin:8px;" class="text-center">
                    <span class="glyphicon glyphicon-remove-circle"></span>
                    <h4 style="color:#6d6c6c;">ONLINE CANCELLATIONS</h4>
                </div>
            </div>
            

        </div>
        <!-- <hr style="margin-bottom:30px; margin-top:0px; padding:0px;"> -->
			
		</footer>
 --%>







	<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->


	<!--footer-->
	<footer class="kilimanjaro_area" style="font-size: 0.5cm;">
		<!-- Top Footer Area Start -->
		<div class="foo_top_header_one section_padding_100_70"
			style="padding: 1cm;">

			<div class="row">
				<div class="col-12 col-md-6 col-lg-3">
					<div class="kilimanjaro_part">
						<h3 style="color: black; font-weight: 1000">About Us</h3>
						<p style="color: black;">At BringIt, we believe in the power of convenience and the joy of easy living. Our mission is simple yet profound: to bring the essentials of life directly to your doorstep, transforming your daily routine into a seamless experience. With a vast array of products, from groceries to household necessities, we are your trusted partner in making life simpler. Our commitment to quality, reliability, and affordability sets us apart, ensuring that you can focus on what truly matters while we bring the essentials to you. Join us on this journey, and let us BringIt all to your doorstep, effortlessly."

</p>
						<!-- <p style="color: black;">webblogoverflow is completely
							creative, clean & 100% responsive website. Put your business into
							next level with Webublogoverflow.</p> -->
					</div>
					<div class="kilimanjaro_part m-top-15">
						<h2 style="color: black;font-weight: 1000;">Social Links</h2>
						<ul class="kilimanjaro_social_links" >
						
						
						
						
						
						
					<li style="background-color: #3b5998;">	
        
       
        
        <i class="fab fa-facebook-f" style="font-size: 2cm;"></i
      ></li>&nbsp;&nbsp;&nbsp;

      <!-- Twitter -->
   
      <!-- Google -->
     <li
        style="background-color: #dd4b39;">
       
        <i class="fab fa-google" style="font-size: 2cm;"></i
      ></li>&nbsp;&nbsp;&nbsp;

      <!-- Instagram -->
     <li
        style="background-color: #ac2bac;">
        
        <i class="fab fa-instagram" style="font-size: 2cm;"></i
      ></a></li>&nbsp;&nbsp;&nbsp;

      <!-- Linkedin -->
     <li
        style="background-color: green;">
        
        <i class="fa fa-whatsapp" style="font-size: 2cm;"></i
      ></li>&nbsp;&nbsp;&nbsp;
      <!-- Github -->
     	
						
							<!-- <li><a href="#" style="color: black;"><i
									class="fa fa-facebook" aria-hidden="true"></i> Facebook</a></li>
							<li><a href="#" style="color: black;"><i
									class="fa fa-twitter" aria-hidden="true"></i> Twitter</a></li>
							<li><a href="#" style="color: black;"><i
									class="fa fa-pinterest" aria-hidden="true"></i> Pinterest</a></li>
							<li><a href="#" style="color: black;"><i
									class="fa fa-youtube" aria-hidden="true"></i> YouTube</a></li>
							<li><a href="#" style="color: black;"><i
									class="fa fa-linkedin" aria-hidden="true"></i> Linkedin</a></li> -->
						</ul>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-3">
					<div class="kilimanjaro_part">
						<h3 style="color: black; font-weight: 1000">Tags Widget</h3>
						<ul class=" kilimanjaro_widget">
						<%if(aa!=null){ %>
							<li><a href="get_final_cart?user_id=<%=aa.getUser_id()%>
							" style="color: black;">Your Cart</a></li>
							<li><a href="profile_by_id?user_id=<%=aa.getUser_id()%>" style="color: black;">Your Profile</a></li>
							<li><a href="your_like_page?user_id=<%=aa.getUser_id()%>" style="color: black;">Your Wishlist</a></li>
							<li><a href="view_customer_order?customer_id=<%=aa.getUser_id()%>" style="color: black;">Your Order</a></li>
							<li><a href="view_deliverd_customer_order?customer_id=<%=aa.getUser_id()%>" style="color: black;">Your Deliverd Order</a></li>
							<li><a href="view_customer_order_by_image?customer_id=<%=aa.getUser_id()%>" style="color: black;">Your Order By Image</a></li>
							
							
							<%}else{ %>
							
							<li><a href="login.jsp" style="color: black;">Cart</a></li>
							<li><a href="login.jsp" style="color: black;">Profile</a></li>
							<li><a href="login.jsp" style="color: black;">Wishlist</a></li>
							<li><a href="login.jsp" style="color: black;">Order</a></li>
							<li><a href="login.jsp" style="color: black;">Deliverd Order</a></li>
							<li><a href="login.jsp" style="color: black;">Order By Image</a></li>
							
							<%} %>
						</ul>
					</div>

					<div class="kilimanjaro_part m-top-15">
						<h3 style="color: black; font-weight: 1000">Important Links</h3>
						<ul class="kilimanjaro_links">
							<li><a href="#" style="color: black;"><i		class="fa fa-angle-right" aria-hidden="true"></i>Terms &
									Conditions</a></li>
							<li><a href="free_delivery.jsp
							" style="color: black;"><i
									class="fa fa-angle-right" aria-hidden="true"></i>About Licences</a></li>
							<li><a href="customer_service.jsp" style="color: black;"><i
									class="fa fa-angle-right" aria-hidden="true"></i>Help & Support</a></li>
							<li><a href="free_delivery.jsp
							" style="color: black;"><i
									class="fa fa-angle-right" aria-hidden="true"></i>Delivery partner</a></li>
							<li><a href="free_delivery.jsp" style="color: black;"><i
									class="fa fa-angle-right" aria-hidden="true"></i>Privacy Policy</a></li>
							<li><a href="customer_servise_2.jsp
							" style="color: black;"><i
									class="fa fa-angle-right" aria-hidden="true"></i>Chat Box
									</a></li>
						</ul>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-3">
					<div class="kilimanjaro_part">
						<h3 style="color: black; font-weight: 1000">Our Category</h3>
						
						
						
						
					
						<div class="kilimanjaro_blog_area">
							
							
								
						<li><a class="dropdown-item" href="oil&gheecustomser"><img
								src="./images/edible-oil-ghee.jpg" class="rounded-circle"
								height="30" width="30" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>OIL & GHEE</b></a></li>
						<li><a class="dropdown-item" href="sugarjerrycustomer"><b><img
									src="./images/sugar.webp" class="rounded-circle" height="30"
									width="30" alt="Black and White Portrait of a Man"
									loading="lazy" /> &nbsp;&nbsp;SUGAR & JERRY</b></a></li>
						<li><a class="dropdown-item" href="soapdetergentcustomer"><img
								src="./images/soap detergent.jpg" class="rounded-circle"
								height="30" width="30" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>SOAP & DETERGENT</b></a></li>
						<li><a class="dropdown-item" href="spicescustomer"><img
								src="./images/spices1.jpg" class="rounded-circle" height="30"
								width="30" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>SPICES & MASALA</b></a></li>
						<li><a class="dropdown-item" href="attacustomer"><img
								src="./images/atta.webp" class="rounded-circle" height="30"
								width="30" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>ATTA & PARMAL</b></a></li>
						<li><a class="dropdown-item" href="dalcustomer"><img
								src="./images/dal and grains.webp" class="rounded-circle"
								height="30" width="30" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>DAL & GRAINS</b></a></li>
						<li><a class="dropdown-item" href="sevcustomer"><img
								src="./images/sev.webp" class="rounded-circle" height="30"
								width="30" alt="Black and White Portrait of a Man"
								loading="lazy" /> &nbsp;&nbsp;<b>SEV & NAMKEEN</b></a></li>
						
						</div>
						
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-3">
					<div class="kilimanjaro_part">
						<h3 style="color: black; font-weight: 1000">Quick Contact</h3>
						<div class="kilimanjaro_single_contact_info">
							<h4 style="color: black; font-weight: 700;">Phone:</h4>
							<p style="color: black;">
								+91 9479455005 <br> +91 9340390344
							</p>
						</div>
						<div class="kilimanjaro_single_contact_info">
							<h3 style="color: black; font-weight: 700;">Email:</h3>
							<p style="color: black;">
								jain16612@gmail.com <br> 0808cs201179.ies@ipsacademy.org
							</p>
						</div>
					</div>
					<div class="kilimanjaro_part">
						<h2 style="color: black; font-weight: 800;">Review Us</h2>
						<div class="kilimanjaro_works">
							<form action="review" method="post">

								<%
								if (aa != null) {
								%>
								<input type="text" placeholder="Enter your review here"
									style="height: 2cm;" name="review"><br> <br>
								<input style="color: black;" type="hidden"
									placeholder="Enter yours email" name="email_id"
									value=<%=aa.getEmail_id()%>>
								<%
								} else {
								%>
								<input type="text" placeholder="Enter your review here"
									style="height: 2cm;" name="review"><br> <br>
								<input type="text" placeholder="Enter yours email"
									name="email_id">

								<%
								}
								%>


								<button type="submit" class="btn btn-success">submit
									review</button>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<!-- Footer Bottom Area Start -->
		<div
			class=" kilimanjaro_bottom_header_one section_padding_50 text-center"
			style="background: #D3D3D3;">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<img src="./image/logobringit.png" height="30" alt="MDB Logo"
							loading="lazy" style="margin-top: 2px;" />

						<p style="color: black;">© All Rights Reserved by BringIt</p>
					</div>
				</div>
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

	<script>
window.onload = function() {
    var modal = document.getElementById("myModal");
    modal.style.display = "block";
    
    var closeBtn = document.getElementsByClassName("close")[0];
    closeBtn.onclick = function() {
        modal.style.display = "none";
    }
}

</script>
	<script>

var swiper = new Swiper(".slide-content", {
    slidesPerView: 3,
    spaceBetween: 25,
    loop: true,
    centerSlide: 'true',
    fade: 'true',
    grabCursor: 'true',
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
      dynamicBullets: true,
    },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },

    breakpoints:{
        0: {
            slidesPerView: 1,
        },
        520: {
            slidesPerView: 2,
        },
        950: {
            slidesPerView: 3,
        },
    },
  });
</script>
</body>
</html>