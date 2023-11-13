<%@page import="DTO.deliver_order"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Collection"%>
<%@page import="DTO.order_details_for_admin"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


     <style>
     @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
.sidebar{
  position: fixed;
  height: 100%;
  width: 240px;
  background: #0A2558;
  transition: all 0.5s ease;
}
.sidebar.active{
  width: 60px;
}
.sidebar .logo-details{
  height: 80px;
  display: flex;
  align-items: center;
}
.sidebar .logo-details i{
  font-size: 28px;
  font-weight: 500;
  color: #fff;
  min-width: 60px;
  text-align: center
}
.sidebar .logo-details .logo_name{
  color: #fff;
  font-size: 24px;
  font-weight: 500;
}
.sidebar .nav-links{
  margin-top: 10px;
}
.sidebar .nav-links li{
  position: relative;
  list-style: none;
  height: 50px;
}
.sidebar .nav-links li a{
  height: 100%;
  width: 100%;
  display: flex;
  align-items: center;
  text-decoration: none;
  transition: all 0.4s ease;
}
.sidebar .nav-links li a.active{
  background: #081D45;
}
.sidebar .nav-links li a:hover{
  background: #081D45;
}
.sidebar .nav-links li i{
  min-width: 60px;
  text-align: center;
  font-size: 18px;
  color: #fff;
}
.sidebar .nav-links li a .links_name{
  color: #fff;
  font-size: 15px;
  font-weight: 400;
  white-space: nowrap;
}
.sidebar .nav-links .log_out{
  position: absolute;
  bottom: 0;
  width: 100%;
}
.home-section{
  position: relative;
  background: #f5f5f5;
  min-height: 100vh;
  width: calc(100% - 240px);
  left: 240px;
  transition: all 0.5s ease;
}
.sidebar.active ~ .home-section{
  width: calc(100% - 60px);
  left: 60px;
}
.home-section nav{
  display: flex;
  justify-content: space-between;
  height: 80px;
  background: #fff;
  display: flex;
  align-items: center;
  position: fixed;
  width: calc(100% - 240px);
  left: 240px;
  z-index: 100;
  padding: 0 20px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  transition: all 0.5s ease;
}
.sidebar.active ~ .home-section nav{
  left: 60px;
  width: calc(100% - 60px);
}
.home-section nav .sidebar-button{
  display: flex;
  align-items: center;
  font-size: 24px;
  font-weight: 500;
}
nav .sidebar-button i{
  font-size: 35px;
  margin-right: 10px;
}
.home-section nav .search-box{
  position: relative;
  height: 50px;
  max-width: 550px;
  width: 100%;
  margin: 0 20px;
}
nav .search-box input{
  height: 100%;
  width: 100%;
  outline: none;
  background: #F5F6FA;
  border: 2px solid #EFEEF1;
  border-radius: 6px;
  font-size: 18px;
  padding: 0 15px;
}
nav .search-box .bx-search{
  position: absolute;
  height: 40px;
  width: 40px;
  background: #2697FF;
  right: 5px;
  top: 50%;
  transform: translateY(-50%);
  border-radius: 4px;
  line-height: 40px;
  text-align: center;
  color: #fff;
  font-size: 22px;
  transition: all 0.4 ease;
}
.home-section nav .profile-details{
  display: flex;
  align-items: center;
  background: #F5F6FA;
  border: 2px solid #EFEEF1;
  border-radius: 6px;
  height: 50px;
  min-width: 190px;
  padding: 0 15px 0 2px;
}
nav .profile-details img{
  height: 40px;
  width: 40px;
  border-radius: 6px;
  object-fit: cover;
}
nav .profile-details .admin_name{
  font-size: 15px;
  font-weight: 500;
  color: #333;
  margin: 0 10px;
  white-space: nowrap;
}
nav .profile-details i{
  font-size: 25px;
  color: #333;
}
.home-section .home-content{
  position: relative;
  padding-top: 104px;
}
.home-content .overview-boxes{
  display: flex;
  align-items: center;
  justify-content: space-between;
  flex-wrap: wrap;
  padding: 0 20px;
  margin-bottom: 26px;
}
.overview-boxes .box{
  display: flex;
  align-items: center;
  justify-content: center;
  width: calc(100% / 4 - 15px);
  background: #fff;
  padding: 15px 14px;
  border-radius: 12px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.1);
}
.overview-boxes .box-topic{
  font-size: 20px;
  font-weight: 500;
}
.home-content .box .number{
  display: inline-block;
  font-size: 35px;
  margin-top: -6px;
  font-weight: 500;
}
.home-content .box .indicator{
  display: flex;
  align-items: center;
}
.home-content .box .indicator i{
  height: 20px;
  width: 20px;
  background: #8FDACB;
  line-height: 20px;
  text-align: center;
  border-radius: 50%;
  color: #fff;
  font-size: 20px;
  margin-right: 5px;
}
.box .indicator i.down{
  background: #e87d88;
}
.home-content .box .indicator .text{
  font-size: 12px;
}
.home-content .box .cart{
  display: inline-block;
  font-size: 32px;
  height: 50px;
  width: 50px;
  background: #cce5ff;
  line-height: 50px;
  text-align: center;
  color: #66b0ff;
  border-radius: 12px;
  margin: -15px 0 0 6px;
}
.home-content .box .cart.two{
   color: #2BD47D;
   background: #C0F2D8;
 }
.home-content .box .cart.three{
   color: #ffc233;
   background: #ffe8b3;
 }
.home-content .box .cart.four{
   color: #e05260;
   background: #f7d4d7;
 }
.home-content .total-order{
  font-size: 20px;
  font-weight: 500;
}
.home-content .sales-boxes{
  display: flex;
  justify-content: space-between;
  /* padding: 0 20px; */
}
/* left box */
.home-content .sales-boxes .recent-sales{
  width: 65%;
  background: #fff;
  padding: 20px 30px;
  margin: 0 20px;
  border-radius: 12px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}
.home-content .sales-boxes .sales-details{
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.sales-boxes .box .title{
  font-size: 24px;
  font-weight: 500;
  /* margin-bottom: 10px; */
}
.sales-boxes .sales-details li.topic{
  font-size: 20px;
  font-weight: 500;
}
.sales-boxes .sales-details li{
  list-style: none;
  margin: 8px 0;
}
.sales-boxes .sales-details li a{
  font-size: 18px;
  color: #333;
  font-size: 400;
  text-decoration: none;
}
.sales-boxes .box .button{
  width: 100%;
  display: flex;
  justify-content: flex-end;
}
.sales-boxes .box .button a{
  color: #fff;
  background: #0A2558;
  padding: 4px 12px;
  font-size: 15px;
  font-weight: 400;
  border-radius: 4px;
  text-decoration: none;
  transition: all 0.3s ease;
}
.sales-boxes .box .button a:hover{
  background:  #0d3073;
}
/* Right box */
.home-content .sales-boxes .top-sales{
  width: 35%;
  background: #fff;
  padding: 20px 30px;
  margin: 0 20px 0 0;
  border-radius: 12px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}
.sales-boxes .top-sales li{
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: 10px 0;
}
.sales-boxes .top-sales li a img{
  height: 40px;
  width: 40px;
  object-fit: cover;
  border-radius: 12px;
  margin-right: 10px;
  background: #333;
}
.sales-boxes .top-sales li a{
  display: flex;
  align-items: center;
  text-decoration: none;
}
.sales-boxes .top-sales li .product,
.price{
  font-size: 17px;
  font-weight: 400;
  color: #333;
}
/* Responsive Media Query */
@media (max-width: 1240px) {
  .sidebar{
    width: 60px;
  }
  .sidebar.active{
    width: 220px;
  }
  .home-section{
    width: calc(100% - 60px);
    left: 60px;
  }
  .sidebar.active ~ .home-section{
    /* width: calc(100% - 220px); */
    overflow: hidden;
    left: 220px;
  }
  .home-section nav{
    width: calc(100% - 60px);
    left: 60px;
  }
  .sidebar.active ~ .home-section nav{
    width: calc(100% - 220px);
    left: 220px;
  }
}
@media (max-width: 1150px) {
  .home-content .sales-boxes{
    flex-direction: column;
  }
  .home-content .sales-boxes .box{
    width: 100%;
    overflow-x: scroll;
    margin-bottom: 30px;
  }
  .home-content .sales-boxes .top-sales{
    margin: 0;
  }
}
@media (max-width: 1000px) {
  .overview-boxes .box{
    width: calc(100% / 2 - 15px);
    margin-bottom: 15px;
  }
}
@media (max-width: 700px) {
  nav .sidebar-button .dashboard,
  nav .profile-details .admin_name,
  nav .profile-details i{
    display: none;
  }
  .home-section nav .profile-details{
    height: 50px;
    min-width: 40px;
  }
  .home-content .sales-boxes .sales-details{
    width: 560px;
  }
}
@media (max-width: 550px) {
  .overview-boxes .box{
    width: 100%;
    margin-bottom: 15px;
  }
  .sidebar.active ~ .home-section nav .profile-details{
    display: none;
  }
}
  @media (max-width: 400px) {
  .sidebar{
    width: 0;
  }
  .sidebar.active{
    width: 60px;
  }
  .home-section{
    width: 100%;
    left: 0;
  }
  .sidebar.active ~ .home-section{
    left: 60px;
    width: calc(100% - 60px);
  }
  .home-section nav{
    width: 100%;
    left: 0;
  }
  .sidebar.active ~ .home-section nav{
    left: 60px;
    width: calc(100% - 60px);
  }
}
     </style>


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



</head>
<body>

<%@include file="admin_header.jsp" %>

 <%ArrayList<order_details_for_admin> list=(ArrayList<order_details_for_admin>)session.getAttribute("LIST"); %>
 <%ArrayList<deliver_order> list3=(ArrayList<deliver_order>)session.getAttribute("LIST_2"); %>
 
<%Admin ak=(Admin)session.getAttribute("kk"); %>
<%if(ak!=null)
	{%>
	<h1>WELCOME - <%=ak.getName() %></h1>
<%} %> 
<%String lk=request.getParameter("msg"); 
if(lk!=null)
{
%> 
<h1><center><%=lk %></center></h1>  
<%} %>  
 <div class="sidebar">
    <div class="logo-details">
      <i class='bx bxl-c-plus-plus'></i>
      <span class="logo_name">JAIN's MART</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="admin_page.jsp" class="active">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li >
          <a href="admin_product_add.jsp">
            <i class='bx bx-box' ></i>
            <span class="links_name" >Add Product</span>
          </a>
        </li>
        <li>
  
          <a href="admin_product_show.jsp">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name ">view product</span>
          </a>
        </li>
        <li>
          <a href="view_admin_order_details">
            <i class='bx bx-pie-chart-alt-2' ></i>
            <span class="links_name">Order list</span>
          </a>
        </li>
        <li>
          <a href="viewcustomerctrl">
            <i class="viewcustomerctrl" ></i>
            <span class="links_name">view customer</span>
          </a>
        </li>
        <li>
          <a href="view_total_order_deliverd">
            <i class='bx bx-book-alt' ></i>
            <span class="links_name">Deliverd order</span>
          </a>
        </li>
        <li>
          <a href="create_admin.jsp">
            <i class='bx bx-user' ></i>
            <span class="links_name"> Add Team</span>
          </a>
        </li>
        <li>
          <a href="view_admin">
            <i class='bx bx-message' ></i>
            <span class="links_name">view team</span>
          </a>
        </li>
        <li>
          <a href="get_all_order_for_image_order">
            <i class='bx bx-heart' ></i>
            <span class="links_name">Order By Photo</span>
          </a>
        </li>
        <li>
          <a href="billing.jsp">
            <i class='bx bx-cog' ></i>
            <span class="links_name">billing</span>
          </a>
        </li>
        
        
        <li>
          <a href="Offer_page_ctrl">
            <i class='bx bx-cog' ></i>
            <span class="links_name">Offer_Update</span>
          </a>
        </li>
        
        
        <li class="adminlogourctrl">
          <a href="logoutctrl">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
      
      
    <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Dashboard</span>
      </div>
      <div class="search-box">
        <input type="text" placeholder="Search...">
        <i class='bx bx-search' ></i>
      </div>
      <div class="profile-details">
       <%--  <img src="./get_admin_image_on_dashbord?user_id=<%=aa.getName() %>" alt=""> --%>
        <span class="admin_name"><%=aa.getName() %></span>
         <i class="fa-solid fa-circle-up fa-beat-fade"></i>
      </div>
    </nav>
    <div class="home-content">
      <div class="overview-boxes">
        <div class="box">
          <div class="right-side">
          <%int q=0; %>
             <% 
        // Import the necessary Java classes
        java.util.Date currentDate2 = new java.util.Date();
        
        // Create a SimpleDateFormat to format the date as per your requirement
        java.text.SimpleDateFormat dateFormat2 = new java.text.SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
        
        // Format the date and print it
        String formattedDate2 = dateFormat2.format(currentDate2);
    %>
    
            <center>
            <div class="box-topic">New/Pending Order </div>
            <div style="color: blue;" class="number" id="xxxxx"></div>
            </center>
            <div class="indicator">
              <i class="fa-solid fa-circle-up fa-beat-fade"></i>
              <h4 style="color: red;">Untill today(<%=formattedDate2 %>)</h4>
            </div>
          </div>
          <% 
        // Import the necessary Java classes
        java.util.Date currentDate = new java.util.Date();
        
        // Create a SimpleDateFormat to format the date as per your requirement
        java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
        
        // Format the date and print it
        String formattedDate = dateFormat.format(currentDate);
    %>
    
    
       <!--   <i class="fa-solid fa-cart-plus fa-2xl"></i> -->
        </div>
        <div class="box">
          <div class="right-side">
            <center>
            <div class="box-topic">Deliverd order</div>
            <div class="number" id="x2" style="color: green;"></div>
            </center>
            <div class="indicator">
              <i class="fa-solid fa-circle-up fa-beat-fade"></i>
              <h4 style="color: red;">Until today (<%= formattedDate %>)</h4>
            </div>
          </div>
       <!-- <i class="fa-solid fa-cart-plus fa-2xl"></i> -->
        </div>
        <div class="box">
          <div class="right-side">
           <center>
            <div class="box-topic">Total New/Pending Order Amount</div>
            <div class="number" id="x11"></div>
           </center>
            
            <div class="indicator">
               <i class="fa-solid fa-circle-up fa-beat-fade"></i>
               <h4 style="color: red;">Untill today(<%=formattedDate2 %>)</h4>
            </div>
          </div>
          
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total Return</div>
            <div class="number">11,086</div>
            <div class="indicator">
              <i class='bx bx-down-arrow-alt down'></i>
              <span class="text">Down From Today</span>
            </div>
          </div>
          <i class="fa-solid fa-cart-plus fa-2xl"></i>
        </div>
      </div>
      
      
      
      <div class="sales-boxes" style="height: auto;">
        <div class="recent-sales box" style="height: auto;">
          <div class="title">Recent Sales</div>
          <div class="sales-details">
            <ul class="details">
              <li class="topic">Date</li>
              <%Collections.sort(list); %>
                <hr>
                
               <%for(order_details_for_admin ml:list){ %>
              <li style="font-weight: 1000;color: green;"><%=ml.getDate() %></li>
              <%q++; %>
              
              <%} %> 
            <input type="hidden" id="xxx" value="<%=q%>">
            </ul>
            <ul class="details">
            <li class="topic">Customer Id</li>
              <hr>
            <%for(order_details_for_admin ml:list){ %>
            
              <li style="font-weight: 1000;color: purple;"><%=ml.getOrder_id() %></li>
              <%} %> 
           
          </ul>
          <ul class="details">
            <li class="topic">Order Id</li>
            <hr>
            <%for(order_details_for_admin ml:list){ %>
              <li style="font-weight: 1000;color: threedlightshadow;"><%=ml.getCustomer_id() %></li>
              <%} %> 
          </ul>
          <ul class="details">
            <li class="topic">Amount</li>
              <hr>
              <%double totalPrice = 0.0;%>
              <%double totalPrice_2 = 0.0;%>
            <%for(order_details_for_admin ml:list){ %>
              <li style="font-weight: 1000;color: red;">Rs. <%=ml.getDynamicValue() %></li>
              <%totalPrice_2 = Double.parseDouble(ml.getDynamicValue() ); %>
              <%totalPrice = totalPrice + totalPrice_2; %>
              <%} %> 
          </ul>
          <input type="hidden" id="x10" value=<%=totalPrice %>>
          <%-- <h1><%=totalPrice %></h1> --%>
          <ul class="details">
            <li class="topic">View</li>
              <hr>
            <%for(order_details_for_admin ml:list){ %>
            
              <li><a href="particular_order_for_admin?order_id=<%=ml.getCustomer_id()%>&customer_id=<%=ml.getOrder_id()%>" class="btn btn-danger">View</a></li>
              <%} %> 
          </ul>
          </div>
          <div class="button">
            <a href="view_admin_order_details">See All</a>
          </div>
        </div>
        
        <%-- <div class="top-sales box">
          <div class="title">Top Seling Product</div>
          <ul class="top-sales-details">
          <li class="topic">Customer Id</li>
          <hr>
          <%for(deliver_order mmm:list3){ %>
              <li style="font-weight: 1000;color: threedlightshadow;"><%=mmm.getCustomer_id() %></li>
              <%} %> 
              </ul>
              <ul class="top-sales-details">
          <li class="topic">Order Id</li>
          <hr>
              <%for(deliver_order mmm:list3){ %>
              <li style="font-weight: 1000;color: threedlightshadow;"><%=mmm.getOrder_id() %></li>
              <%} %> 
              </ul>
              <ul class="top-sales-details">
          <li class="topic">Date Of Order</li>
          <hr>
               
               
               
              <%for(deliver_order mmm:list3){ %>
              <li style="font-weight: 1000;color: threedlightshadow;"><%=mmm.getDate() %></li>
              <%} %> 
              </ul>
              
              <ul class="top-sales-details">
          <li class="topic">Status</li>
          <hr>
               
              <%for(deliver_order mmm:list3){ %>
              <li style="font-weight: 1000;color: threedlightshadow;"><%=mmm.getStatus() %></li>
              <%} %> 
            </ul>
         
         
          </ul>
        </div> --%>
        <!-- <div class="sales-boxes" style="height: auto;"> -->
        <!-- <div class="recent-sales box" style="height: auto;"> -->
        <div class="top-sales box" style="height: auto;">
          <div class="title">Deliverd Sales</div>
          <!-- <div class="title">Recent Sales</div> -->
          <div class="sales-details">
            <ul class="details">
            <%int qq=0; %>
              <li class="topic">Customer Id</li>
              <%-- <%Collections.sort(list); %>
 --%>                <hr>
                
                        <%for(deliver_order mmm:list3){ %>
              <li style="font-weight: 1000;color: threedlightshadow;"><%=mmm.getCustomer_id() %></li>
              <%qq++; %>
              <%} %> 
             <input type="hidden" id="xxxx" value="<%=qq%>">
            </ul>
            
          <ul class="details">
            <li class="topic">Order Id</li>
            <hr>
<%for(deliver_order mmm:list3){ %>
              <li style="font-weight: 1000;color: green;"><%=mmm.getOrder_id() %></li>
              <%} %>           </ul>
              
              <ul class="details">
            <li class="topic">Date Of Order</li>
              <hr>
           <%for(deliver_order mmm:list3){ %>
              <li style="font-weight: 1000;color: threedlightshadow;"><%=mmm.getDate() %></li>
              <%} %> 
           
          </ul>
              
          <ul class="details">
            <li class="topic">Status</li>
              <hr>
              
            <%for(deliver_order mmm:list3){ %>
              <li style="font-weight: 1000;color: red;"><%=mmm.getStatus() %></li>
              <%} %> 
          </ul>
          <ul class="details">
            <li class="topic">View</li>
              <hr>
            <%for(deliver_order mmm:list3){ %>
            
              <li><a href="particular_order_for_admin?order_id=<%=mmm.getOrder_id()%>&customer_id=<%=mmm.getCustomer_id()%>" class="btn btn-danger">View</a></li>
              <%} %> 
          </ul>
          </div>
          <div class="button">
            <a href="view_total_order_deliverd">See All</a>
          </div>
        </div>
      </div>
    </div>
  </section>
  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>
<script>
	var status=document.getElementById("xxx").value;
	console.log(status);
	let total_order_no_50 = document.getElementById("xxxxx").innerText=status;
	console.log(total_order_no_50)
	var status2=document.getElementById("xxxx").value;
	console.log(status2);
	let total_order_no_51 = document.getElementById("x2").innerText=status2;
	console.log(total_order_no_51)
	
	
	var status3=document.getElementById("x10").value;
	console.log(status3);
	let total_order_no_55 = document.getElementById("x11").innerText=status3;
	console.log(total_order_no_55)
	</script>
</body>
</html>