<%@page import="DTO.checkoutpage"%>
<%@page import="java.util.ArrayList"%>
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
}
.card {
    box-shadow: 0 20px 27px 0 rgb(0 0 0 / 5%);
}
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0,0,0,.125);
    border-radius: 1rem;
}
.text-reset {
    --bs-text-opacity: 1;
    color: inherit!important;
}
a {
    color: #5465ff;
    text-decoration: none;
}
	
	</style>
</head>
<body>
<%-- <%@include file="admin_header.jsp" %> --%>
 <%String dd=(String)request.getAttribute("msg"); %>
<%if(dd!=null)
	{
	%>
<center><h1 style="color: green;"><%=dd %></h1></center>
<%} %> 


























<div class="container-fluid">

<div class="container">
  <!-- Title -->
  <div class="d-flex justify-content-between align-items-center py-3">
    <h2 class="h5 mb-0"> Order&nbsp;&nbsp;<span id="total_order_no" style="color: red;"></span></h2>
  </div>

  <!-- Main content --><%ArrayList<checkoutpage> list=(ArrayList<checkoutpage>)request.getAttribute("LIST"); %>  <div class="row">
    <div class="col-lg-8">
      <!-- Details -->
      <div class="card mb-4">
        <div class="card-body">
          <div class="mb-3 d-flex justify-content-between">
            <div>
              <span class="me-3" id="date_2"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           
              <span class="badge rounded-pill bg-info">SHIPPING SLIP</span>
              <marquee><h1><span id="status_2"></span></h1></marquee>
            </div>
            <div class="d-flex">
              <button class="btn btn-link p-0 me-3 d-none d-lg-block btn-icon-text"><i class="bi bi-download"></i> <span class="text">Invoice</span></button>
              <div class="dropdown">
                <button class="btn btn-link p-0 text-muted" type="button" data-bs-toggle="dropdown">
                  <i class="bi bi-three-dots-vertical"></i>
                </button>
                <ul class="dropdown-menu dropdown-menu-end">
                  <li><a class="dropdown-item" href="#"><i class="bi bi-pencil"></i> Edit</a></li>
                  <li><a class="dropdown-item" href="#"><i class="bi bi-printer"></i> Print</a></li>
                </ul>
              </div>
            </div>
          </div>
          <table class="table table-borderless">
            <tbody>
            
            <%int i=1; %>
            <%
		for (checkoutpage mm : list) {
			
		%>
		<input type="hidden" value="<%=mm.getOrder_no() %>" id="order_no">
			<input type="hidden" value="<%=mm.getDate() %>" id="date">
			<input type="hidden" value="<%=mm.getPayment() %>" id="payment">
			<input type="hidden" value="<%=mm.getTotal() %>" id="total">
			<input type="hidden" value="<%=mm.getAdress() %>" id="adress">
			<input type="hidden" value="<%=mm.getCity() %>" id="city">
			<input type="hidden" value="<%=mm.getPincode() %>" id="pincode">
			<input type="hidden" value="<%=mm.getLandmark() %>" id="lanndmark">
			<input type="hidden" value=<%=mm.getName() %> id="name">
			<input type="hidden" value=<%=mm.getEmail() %> id="no">
			<input type="hidden" value=<%=mm.getCustomer_id() %> id="customer_id">
			<input type="hidden" value=<%=mm.getStatus() %> id="status">
			
			
			
			
              <tr>
              <td><%=i %>.</td>
                <td>
                  <div class="d-flex mb-2">
                    
                    <div class="flex-lg-grow-1 ms-3">
                      <h6 class="small mb-0"><a href="#" class="text-reset"><%=mm.getPro_name() %></a></h6>
                      <!-- <span class="small">Color: Black</span> -->
                    </div>
                  </div>
                </td>
                <td><%=mm.getPro_quantity() %></td>
                <td class="text-end"><%=mm.getPro_price() %></td>
              </tr>
              <%i++; %>
              <%} %>
              
            </tbody>
            <tfoot>
              <tr>
                <td colspan="2" style="font-weight: 1000">Subtotal</td>
                <td class="text-end" id="total_2" style="font-weight: 1000"></td>
              </tr>
              <tr>
                <td colspan="2">Delivery Charges</td>
                <td class="text-end" id="pin_code_2" >free</td>
              </tr>
              
              <tr class="fw-bold">
                <td colspan="2">TOTAL</td>
                <td class="text-end" id="total_3" style="color: red;font-weight: 700"></td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>
      <!-- Payment -->
      <div class="card mb-4">
        <div class="card-body">
          <div class="row">
            <div class="col-lg-6">
              <h3 class="h6">Payment Method</h3>
              <span class="me-3" id="payment_2"></span><br>
              <br>
              Total:<span id="total_10"></span> <span class="badge bg-success rounded-pill">TO BE PAID</span></p>
            </div>
            <div class="col-lg-6">
              <h3 class="h6">Billing address</h3>
              <address>
              
                 <strong id="name_2" ></strong><br> 
                <span id="adress_2_9"></span>
              
                
                <br>
                <i>Pincode : </i><span id="pincode_2"></span><br>
                <i>Email Id : </i>  <span id="no_2"></span>
              </address>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-4">
      <!-- Customer Notes -->
      <div class="card mb-4">
        <div class="card-body">
          <h3 class="h6">ORDER STATUS</h3><br>
          <div class="container">
  <div class="row">
  
  
  
    <div class="col"><a class="btn btn-danger" href="">CANCEL</a></div>
    
    
    
    <div class="col">
    
    
    <form id="myForm" action="confirm_order_bt_admin" method="post">
  <span id="order_no_09" style="display: none;"></span> <!-- This is the span containing the dynamic value -->
  
  
 
  <input type="hidden" id="dynamicValueInput" name="order_id">
  
  <input type="submit"  value="CONFIRM" class="btn btn-success">
</form>


    </div><br><br>
    
    
    <div class="col">
    
    
    
    
    
    
    <form id="myForm_2" action="out_of_order_bt_admin" method="post">
  <span id="order_no_10" style="display: none;"></span> <!-- This is the span containing the dynamic value -->
  <input type="hidden" id="dynamicValueInput_2" name="order_id">
  <input type="submit"  value="OUT OF ORDER" class="btn btn-warning">
</form>
    
    
    
    </div>
    <div class="col">
    
    
    
    <form id="myForm_3" action="deliverd_order_admin" method="post">
  <span id="order_no_20" style="display: none;"></span> 
  <span id="customer_id_2" style="display: none;"></span> 
  <input type="hidden" id="dynamicValueInput_3" name="order_id">
  <input type="hidden" id="dynamicValueInput_4" name="customer_id">
  <input type="submit"  value="DELIVERD" class="btn btn-primary">
</form>
    
    </div>
  </div>
</div>
        </div>
      </div>
      <div class="card mb-4">
        <!-- Shipping information -->
        <div class="card-body">
          <h3 class="h6">Shipping Information</h3>
          <strong>FedEx</strong>
          <span><a href="#" class="text-decoration-underline" target="_blank">FF1234567890</a> <i class="bi bi-box-arrow-up-right"></i> </span>
          <hr>
          <h3 class="h6">Address</h3>
          <address>
            <strong id="name_2">John Doe</strong><br>
           <h5 ></h5><br>
            San Francisco, CA 94103<br>
            <abbr title="Phone">P:</abbr> (123) 456-7890
          </address>
        </div>
      </div>
    </div>
  </div>
</div>
  </div>
	
	<%-- <%ArrayList<checkoutpage> list=(ArrayList<checkoutpage>)request.getAttribute("LIST"); %> --%>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<%-- 
	<div class="container" style="margin-top: 1cm">
	<table class="table">	
	<thead class="thead-dark">
		<tr >
		
			<!-- <th scope="col">order_no</td> -->
			<th scope="col">Customer_id</th>
			<th scope="col">name</th>
			<th scope="col">email</th>
			<th scope="col">adress</th>
			<th scope="col">city</th>
			<th scope="col">landmark</th>
			 <th scope="col">total</th>
			<th scope="col">total_items</th>
			<th scope="col">pro_name</th>
			<th scope="col">pro_quantity</th>
			<th scope="col">pro_price</th>
			<th scope="col">PAyment</th>
			<th scope="col">accept order</th>
			<th scope="col">deliverd</th>
			
		</tr>
		 </thead>
		 <%
		for (checkoutpage mm : list) {
		%>
		<tr>
			<td><%=mm.getOrder_no() %></td>
			<input type="hidden" value="<%=mm.getOrder_no() %>" id="order_no">
			<input type="hidden" value="<%=mm.getDate() %>" id="date">
			<input type="hidden" value="<%=mm.getPayment() %>" id="payment">
			<td><%=mm.getCustomer_id() %></td>
			<td><%=mm.getName() %></td>
			<td><%=mm.getEmail() %></td>
			<td><%=mm.getAdress() %></td>
			<td><%=mm.getCity()%></td>
			<td><%=mm.getLandmark()%></td>
			<td><%=mm.getTotal()%></td>
			<td><%=mm.getTotal_items()%></td>
			<td><%=mm.getPro_name()%></td>
			<td><%=mm.getPro_quantity()%></td>
			<td><%=mm.getPro_price() %></td>
			
			<td><img alt="image not found" src="./get_payment_admin_image?order_id=<%=mm.getOrder_no() %>"  height="200px" ,width="200px"></td> 
		   
		    <td><a href="" class="btn btn-danger" onclick=" return alert('are you sure you whant to delete')">CANCEL ORDER</a></td>
		    <td><a href="" class="btn btn-primary">DELIVERD</a></td> 
	</tr>
		<%
		}
		%> 
		<!-- <h1>ORDER NO
		<span id="total_order_no" class="price" style="color:red;" >
          
        </span>
	 -->
	</h1>
	</table>
	</div> --%>
	
	<script>
  document.getElementById('myForm').onsubmit = function() {
    var dynamicValue = document.getElementById('order_no_09').innerText;
    document.getElementById('dynamicValueInput').value = dynamicValue; // Round to 2 decimal places
    return true; // Allow the form to be submitted
  };
</script>

<script>
  document.getElementById('myForm_2').onsubmit = function() {
    var dynamicValue_2 = document.getElementById('order_no_10').innerText;
    document.getElementById('dynamicValueInput_2').value = dynamicValue_2; // Round to 2 decimal places
    return true; // Allow the form to be submitted
  };
</script>

<script>
  document.getElementById('myForm_3').onsubmit = function() {
    var dynamicValue_3 = document.getElementById('order_no_20').innerText;
    var dynamicValue_4 = document.getElementById('customer_id_2').innerText;
    document.getElementById('dynamicValueInput_3').value = dynamicValue_3;
    document.getElementById('dynamicValueInput_4').value = dynamicValue_4;
    return true; // Allow the form to be submitted
  };
</script>

	
	<script>
	var status=document.getElementById("status").value;
	var total=document.getElementById("total").value;
	var pincode=document.getElementById("pincode").value;
	var order_no=document.getElementById("order_no").value;
	
	var customer_id=document.getElementById("customer_id").value;
	var name=document.getElementById("name").value;
	var date=document.getElementById("date").value;
	var name=document.getElementById("name").value;
	var no=document.getElementById("no").value;
	
	
	var payment=document.getElementById("payment").value;
	let total_order_no = document.getElementById("total_order_no").innerText=order_no;
	console.log(total_order_no)
	let total_order_no_50 = document.getElementById("status_2").innerText=status;
	console.log(total_order_no_50)
	let total_order = document.getElementById("total_order_no").innerText=order_no;
	console.log(total_order_no)
	let total_order_no_4 = document.getElementById("order_no_10").innerText=order_no;
	console.log(total_order_no)
		let total_order_no_5 = document.getElementById("order_no_20").innerText=order_no;
	console.log(total_order_no)
	let total_order_no_6 = document.getElementById("customer_id_2").innerText=customer_id;
	console.log(total_order_no)
	let total_order_no_2 = document.getElementById("order_no_09").innerText=order_no;
	console.log(total_order_no)
	
	
	
	let date_2 = document.getElementById("date_2").innerText=date;
	let payment_2 = document.getElementById("payment_2").innerText=payment;
	let total_2 = document.getElementById("total_2").innerText=total;
	let total_3 = document.getElementById("total_3").innerText=total;
	console.log(total_order_no)
	
	
	
	console.log(pincode)
	var adress=document.getElementById("adress").value;
	console.log(adress)
	let total_5 = document.getElementById("adress_2_9").innerText=adress;
	console.log(total_5)
	console.log(pincode)
	let total_6 = document.getElementById("name_2").innerText=name;
	console.log(total_6)
	console.log(name)
	let total_7 = document.getElementById("pincode_2").innerText=pincode;
	console.log(total_7)
	console.log(name)
	let total_8 = document.getElementById("no_2").innerText=no;
	console.log(total_7)
	console.log(name)
	
	
	console.log(name)
	
	var city=document.getElementById("city").value;
	console.log(city)
	var pincode=document.getElementById("pincode").value;
	console.log(pincode)
	var landmark=document.getElementById("landmark").value;
	console.log(landmark)
	var adress_2 = document.getElementById("adress_2").innerText=adress;
	let dat = document.getElementById("city_2").innerText=city;
	let paet_2 = document.getElementById("pincode_2").innerText=pincode;
	let to_2 = document.getElementById("landmark_2").innerText=landmark;
	let to_4 = document.getElementById("name_2").innerText=name;
	
	let total_4 = document.getElementById("pin_code_2").innerText=pincode;
	console.log(total_4)
	
	</script>
	
	
</body>
</html>