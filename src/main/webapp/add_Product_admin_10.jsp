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
</head>
<body>
<%@include file="admin_header.jsp" %><br>
<br>
<%String a=(String)request.getAttribute("msg");%>
<%if(a!=null)
	{%>
<center><h1 style="color: blue;">!!!<%=a %>!!!</h1></center>
<%} %>
<%
response.setHeader("cache-control", "no-store");
response.setHeader("pragma", "no-cache");
response.setHeader("expire", "0");
%>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
  
  <form  action="admin_add_product_10" method="post" enctype="multipart/form-data" name="my_form" onsubmit="return gg()">
  <%
        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String digits = "0123456789";
        
        String randomUserId = "";
        
        for (int i = 0; i < 3; i++) {
            randomUserId += alphabet.charAt((int) (Math.random() * alphabet.length()));
        }
        
        for (int i = 0; i < 3; i++) {
            randomUserId += digits.charAt((int) (Math.random() * digits.length()));
        }
    %>
  <div class="form-group">
    <label for="exampleInputEmail1">NAME OF PRODUCT</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name" name="name">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">PRODUCT ID</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder=" Enter user id" name="pro_id" value="<%= randomUserId %>" readonly>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">CATEGORY</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ente" name="category" value="DRY FRUITS" readonly>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">QUANTITY</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder=" Enter quantity" name="quantity"  id="quantity1"><br><span id="quantity_validation">6447873</span>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">PRICE</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder=" Enter price" name="price" >
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">PRODUCT PHOTO</label>
    <input type="file" class="form-control" id="exampleInputPassword1" placeholder=" Enter your photo" name="image">
  </div>
  <button type="submit" class="btn btn-primary">ADD PRODUCT</button>
  
</form>
  </div>
</div>
<script >

function gg()
{
	q=document.myform.quantity1.value
	console.log(q);
	if(q>15)
		{
		document.getElementById("quantity_validation").innerText="123441";
		return false;
		}else{
			document.getElementById("quantity_validation").innerText="";
		}
	return false;
	}
</script>
</body>
</html>