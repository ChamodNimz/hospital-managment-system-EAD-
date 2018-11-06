<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<!-- Latest compiled and minified CSS -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" href="../assets/css/style.css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="../assets/css/login.css">
</head>
<body>
<div class="nav-bar">
	<div class="container-fluid">
		<div class="row">
			<div
				class="col-12 d-flex flex-wrap justify-content-between align-items-center">
				<div class="site-branding d-flex align-items-center">
					<a class="d-block" href="../index.jsp" rel="home"><img
						class="d-block" src="../images/logo.png" alt="logo"></a>
				</div>
				<!-- .site-branding -->

				<nav
					class="site-navigation d-flex justify-content-end align-items-center">
					<ul
						class="d-flex flex-column flex-lg-row justify-content-lg-end align-items-center">
						<li><a href="../index.jsp">Home</a></li>
						<li><a href="about.html">About us</a></li>
						<li><a href="services.html">Channel</a></li>
						<li><a href="news.html">News</a></li>
						<li><a href="contact.html">Contact</a></li>
						<li><a href="login.jsp">login</a></li>
						<li><a href="patient/patientRegistration.jsp">Register</a></li>

						<li class="call-btn button gradient-bg mt-3 mt-md-0"><a
							class="d-flex justify-content-center align-items-center" href="#"><img
								src="../images/emergency-call.png"> +34 586 778 8892</a></li>
					</ul>
				</nav>
				<!-- .site-navigation -->

				<div class="hamburger-menu d-lg-none">
					<span></span> <span></span> <span></span> <span></span>
				</div>
				<!-- .hamburger-menu -->
			</div>
			<!-- .col -->
		</div>
		<!-- .row -->
	</div>
	<!-- .container -->
</div>
<!-- .nav-bar -->


	<section style="margin-top: 11em;">
		<div class="container">
			<div class="row">
				<div class="col-md-4 login-sec">
					<h2 class="text-center">Login Now</h2>
					<form class="login-form" action="login" method="post">
						<div class="form-group">
							<label for="exampleInputEmail1" class="text-uppercase">Username</label>
							<input type="text" class="form-control" placeholder=""
								name="username" required/>
							<s:fielderror fieldName="username" style="color:red;list-style:none;"/> 

						</div>

						<div class="form-group">
							<label for="exampleInputPassword1" class="text-uppercase">Password</label>
							<input type="password" class="form-control" placeholder=""
								name="password" required>
							<s:fielderror fieldName="password" style="color:red;list-style:none;" />
						</div>

<!-- 						<div class="form-check form-check-inline"> -->
<!-- 							<input class="form-check-input" type="radio" -->
<!-- 								name="inlineRadioOptions" id="inlineRadio1" value="option1"> -->
<!-- 							<label class="form-check-label" for="inlineRadio1">Admin</label> -->
<!-- 						</div> -->

<!-- 						<div class="form-check form-check-inline"> -->
<!-- 							<input class="form-check-input" type="radio" -->
<!-- 								name="inlineRadioOptions" id="inlineRadio2" value="option2"> -->
<!-- 							<label class="form-check-label" for="inlineRadio2">Patient</label> -->
<!-- 						</div> -->

						<div class="form-check">
							<button type="submit" class="btn btn-info float-right shadow">Submit</button>
						</div>

					</form>
					<div class="copy-text">
						Created with <i class="fa fa-heart"></i> by <a
							href="http://grafreez.com">EAD Team NIBM</a>
					</div>
				</div>
				<div class="col-md-8 banner-sec">
					<div id="carouselExampleIndicators" class="carousel slide"
						data-ride="carousel">

						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block img-fluid"
									src="assets/images/login-page.jpg" alt="First slide">
								<div class="carousel-caption d-none d-md-block">
									<div class="banner-text">
										<h2>Please Login</h2>
										<p>In any case of emergency contact developers or the
											company !</p>
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