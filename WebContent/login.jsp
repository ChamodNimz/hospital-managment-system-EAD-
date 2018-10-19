<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<!-- Latest compiled and minified CSS -->
<%@ include file="layouts/headerLinks.jsp" %>
<link rel="stylesheet" href="assets/css/login.css">
</head>
<body>

<%@ include file="layouts/navigation.jsp" %>
		<section style="margin-top:11em;">
				<div class="container">
				<div class="row">
					<div class="col-md-4 login-sec">
						<h2 class="text-center">Login Now</h2>
						<form class="login-form" action="adminLogin" method="post">
			  <div class="form-group">
				<label for="exampleInputEmail1" class="text-uppercase">Username</label>
				<s:textfield type="text" class="form-control"  placeholder="" name="username"></s:textfield>
<%-- 				<s:fielderror fieldName="username" style="color:red;text-decoration:none;"/> --%>
				
			  </div>
			  
			  <div class="form-group">
				<label for="exampleInputPassword1" class="text-uppercase">Password</label>
				<input type="password" class="form-control" placeholder="" name="password">
				<s:fielderror fieldName="password" />
			  </div>
			  
			
				<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
  <label class="form-check-label" for="inlineRadio1">Admin</label>
</div>

<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
  <label class="form-check-label" for="inlineRadio2">Patient</label>
</div>
			  
			  
				<div class="form-check">
				
				
				
				<button type="submit" class="btn btn-info float-right shadow">Submit</button>
			  </div>
			  
			</form>
			<div class="copy-text">Created with <i class="fa fa-heart"></i> by <a href="http://grafreez.com">EAD Team NIBM</a></div>
					</div>
					<div class="col-md-8 banner-sec">
						<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
							 
						<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
				  <img class="d-block img-fluid" src="assets/images/login-page.jpg" alt="First slide" >
				  <div class="carousel-caption d-none d-md-block">
					<div class="banner-text">
						<h2 >Please Login</h2>
						<p >In any case of emergency contact developers or the company !</p>
					</div>	
			  </div>
				</div>
				
						</div>	   
						
					</div>
				</div>
			</div>
			</section>

</body>
</html>