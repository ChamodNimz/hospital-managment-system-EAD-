<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,java.text.*"%>
<!doctype html>
<html lang="en" dir="ltr">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta http-equiv="Content-Language" content="en" />
<meta name="msapplication-TileColor" content="#2d89ef">
<meta name="theme-color" content="#4188c9">
<meta name="apple-mobile-web-app-status-bar-style"
	content="black-translucent" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<meta name="HandheldFriendly" content="True">
<meta name="MobileOptimized" content="320">
<link rel="icon" href="./favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" type="image/x-icon" href="./favicon.ico" />
<!-- Generated: 2018-04-16 09:29:05 +0200 -->

<title>Patient Section</title>
<%@  include file="layouts/admin-panel-header-links.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/js/gijgo.min.js"
	type="text/javascript"></script>
<link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />
</head>

<body class="">
	<div class="page">
		<div class="page-main">
			<%@ include file="layouts/admin-panel-navigation.jsp"%>
			<div class="my-3 my-md-5"></div>

			<div class="container-fluid">
				<div class="row row-cards">
					<!------------------------------------------ navigation with cards --------------------------------------->
					<%@ include file="layouts/patient-navigation.jsp"%>

					<div class="col-lg-6">
						<div class="container-fluid">
							<div class="row row-cards">
								<div class="card p-3" id="content-form">

									<div class="alert alert-success">
										<b><s:property value="message" /></b>
									</div>

									<div class="card-header mb-5">
										<h2 class="card-title mb-3 text-info">Register a patient</h2>
									</div>

									<form action="registerPatient" method="post">
										<div class="row">
											<div class="col-md-5">
												<div class="form-group">
													<label class="form-label">First name</label> <input
														class="form-control" name="p_fname" />
													<s:fielderror fieldName="p_fname"
														style="color:red;list-style:none;" />
												</div>
											</div>
											<div class="col-sm-6 col-md-7">
												<div class="form-group">
													<label class="form-label">Last name</label> <input
														class="form-control" name="p_lname" />
													<s:fielderror fieldName="p_lname"
														style="color:red;list-style:none;" />
												</div>
											</div>

											<div class="col-sm-6 col-md-12">
												<div class="form-group">
													<label class="form-label">Address</label>
													<textarea rows="" cols="" name="p_address"
														class="form-control" required></textarea>
													<s:fielderror fieldName="p_address"
														style="color:red;list-style:none;" />
												</div>
											</div>

											<div class="col-sm-6 col-md-6">
											<div class="form-group">
													<label class="form-label">NIC</label> <input
														class="form-control" name="p_nic" />
													<s:fielderror fieldName="p_nic"
														style="color:red;list-style:none;" />
												</div>
											</div>


											<div class="col-md-6">
												<div class="form-group">
													<label class="form-label">Gender</label>
													<select name="p_gender" class="form-control" >
														<option value="male">Male</option>
														<option value="female">Female</option>
													</select>
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label class="form-label">Password</label> <input
														class="form-control" name="password" />
													<s:fielderror fieldName="password"
														style="color:red;list-style:none;" />
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label class="form-label">Telephone</label> 
													<input
														class="form-control" name="telephone" />
													<s:fielderror fieldName="telephone"
														style="color:red;list-style:none;" />
												</div>
												 
											</div>

											<div class="col-md-12">
												<div class="form-group">
													<label class="form-label">E mail</label> 
													<input
														class="form-control" name="email" type="email" />
														<input
														class="form-control" name="reg_date" type="text" value="<%
         Date dNow = new Date();
         SimpleDateFormat ft = 
         new SimpleDateFormat ("yyyy-MM-dd");
         out.print(  ft.format(dNow));
      %>" hidden />
													<s:fielderror fieldName="email"
														style="color:red;list-style:none;" />
												</div>
											</div>

											

										</div>

										<button class="btn btn-success mt-4" type="submit">Register</button>

									</form>


								</div>
							</div>
						</div>
					</div>
<div class="col-lg-4">
						<div class="card p-2 "><img src="demo/other/patient.jpg" ></div>
					</div>

				</div>

			</div>
		</div>

		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<div class="row">
							<div class="col-6 col-md-3">
								<ul class="list-unstyled mb-0">
									<li><a href="#">First link</a></li>
									<li><a href="#">Second link</a></li>
								</ul>
							</div>
							<div class="col-6 col-md-3">
								<ul class="list-unstyled mb-0">
									<li><a href="#">Third link</a></li>
									<li><a href="#">Fourth link</a></li>
								</ul>
							</div>
							<div class="col-6 col-md-3">
								<ul class="list-unstyled mb-0">
									<li><a href="#">Fifth link</a></li>
									<li><a href="#">Sixth link</a></li>
								</ul>
							</div>
							<div class="col-6 col-md-3">
								<ul class="list-unstyled mb-0">
									<li><a href="#">Other link</a></li>
									<li><a href="#">Last link</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-4 mt-4 mt-lg-0">
						Developed by <b>@EAD-DevTeam</b>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>

</html>