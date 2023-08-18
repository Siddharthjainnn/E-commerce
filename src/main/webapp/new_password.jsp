<%@page import="DTO.new_customer_add"%>
<%@page import="DTO.customer"%>
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
body {
	background: #eee;
}

.separator {
	border-right: 1px solid #dfdfe0;
}

.icon-btn-save {
	padding-top: 0;
	padding-bottom: 0;
}

.input-group {
	margin-bottom: 10px;
}

.btn-save-label {
	position: relative;
	left: -12px;
	display: inline-block;
	padding: 6px 12px;
	background: rgba(0, 0, 0, 0.15);
	border-radius: 3px 0 0 3px;
}
</style>
</head>
<body>
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
	}
	%>

	<%
	new_customer_add cc = (new_customer_add) request.getAttribute("list");
	%>

	<h1>
		<center>WELCOME TO JAIN PROVISION STORE UPDATE PASSWORD PAGE</center>
	</h1>

	<br>
	<br>
	<hr>
	<%-- <span style="display: flex;"><h1 style="color: purple;">Hello</h1></span>
	<span><h3 style="color: red;"><%=cc.getName()%></h3></span> --%>
	<%-- <center>
		<h1 style="color: red;"><%=cc.getPassword()%></h1>
	</center> --%>

<form action="update_password" method="post">
	<div class="container bootstrap snippets bootdey"
		style="margin-left: 18cm; margin-top: 2cm">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-2">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">
							<span class="glyphicon glyphicon-th"></span> Hello
							<%=cc.getName()%>
						</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div
								class="col-xs-6 col-sm-6 col-md-6 separator social-login-box">
								<br> <img alt="" class="img-thumbnail"
									src="get_profile_image?user_id=<%=cc.getUser_id()%>">
							</div>
							
							
								<div style="margin-top: 80px;"
									class="col-xs-6 col-sm-6 col-md-6 login-box">
									
									<span style="color: red;">USER_ID</span>
								<div class="form-group">
										<div class="input-group">
											<div class="input-group-addon">
												<span class="glyphicon glyphicon-lock"></span>
											</div>
											<input class="form-control" type="text"
												placeholder="Current user_id" value="<%=cc.getUser_id() %>" name="user_id"readonly>
										</div>
									</div>
									
									<span style="color: blue;">OLD PASSWORD</span>
									<div class="form-group">
										<div class="input-group">
											<div class="input-group-addon">
												<span class="glyphicon glyphicon-lock"></span>
											</div>
											<input class="form-control" type="text"
												placeholder="Current Password" value="<%=cc.getPassword()%>" readonly>
										</div>
									</div>
									
									
									<div class="form-group">
										<div class="input-group">
											<div class="input-group-addon">
												<span class="glyphicon glyphicon-log-in"></span>
											</div>
											<input class="form-control" type="password"
												placeholder="New Password" name="pass">
										</div>
										<br>
										<div class="form-group">
											<div class="input-group">
												<div class="input-group-addon">
													<span class="glyphicon glyphicon-log-in"></span>
												</div>
												<input class="form-control" type="password"
													placeholder=" Re-Enter New Password" name="pass_2">
											</div><br>
 <center><button type="submit" class="btn btn-primary">UPDATE PASSWORD</button></center>
										</div>
									</div>
							 </div>
							
							
						</div>

					</div>
				</div>
			</div>
		</div>
		</form>
</body>
</html>