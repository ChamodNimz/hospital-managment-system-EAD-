<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Registration</title>
<%@ include file="layouts/headerLinks.jsp"%>
<link rel="stylesheet" href="../assets/css/patientRegister.css">
<script src="../assets/js/patientRegister.js"></script>
</head>
<body>
	<%@ include file="layouts/navigation.jsp"%>

	<div class="container" style="margin-top: 12em;">



		<h1 class="display-3 text-info">Register</h1>
		<!-- Sign up form -->
		<form action="patientRegister" method="post" class="text-info">
			<!-- Sign up card -->
			<div class="card person-card p-2 mb-4 shadow-lg">
				<div class="card-body">
					<!-- Sex image -->
					<img id="img_sex" class="person-img"
						src="https://visualpharm.com/assets/217/Life%20Cycle-595b40b75ba036ed117d9ef0.svg">
					<h2 id="who_message" class="card-title text-info">Let us know
						your name</h2>
					<!-- First row (on medium screen) -->
					<div class="row">
						<div class="form-group col-md-2">
							<select id="input_sex" class="form-control" name="gender">
								<option value="Mr.">Mr.</option>
								<option value="Ms.">Ms.</option>
							</select>
						</div>
						<div class="form-group col-md-5">
							<s:textfield id="first_name" type="text" name="f_name"
								class="form-control" placeholder="First name"></s:textfield>
							<div id="first_name_feedback" class="invalid-feedback"></div>
						</div>
						<div class="form-group col-md-5">
							<input id="last_name" type="text" name="l_name"
								class="form-control" placeholder="Last name">
							<div id="last_name_feedback" class="invalid-feedback"></div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-6">
					<div class="card shadow-lg">
						<div class="card-body">
							<h2 class="card-title text-info">How to contact you ?</h2>
							<div class="form-group">
								<label for="email" class="col-form-label">Email : <small
									class="text-info">This will be used to login to user
										account</small></label> <input type="email" class="form-control" id="email"
									placeholder="example@gmail.com" required>
								<div class="email-feedback"></div>
							</div>

							<div class="form-group">
								<label for="tel" class="col-form-label">NIC</label> <input
									type="number" class="form-control" id="tel"
									placeholder="123456789v" required>
								<div class="phone-feedback"></div>
							</div>

							<div class="form-group">
								<label for="tel" class="col-form-label">Phone number</label> <input
									type="text" class="form-control" id="tel"
									placeholder="011 123 123" required>
								<div class="phone-feedback"></div>
							</div>

							<div class="form-group">
								<label for="address" class="col-form-label">Address</label>
								<textarea rows="" cols="" class="form-control"
									placeholder="221/B Backer's street"></textarea>

								<div class="email-feedback"></div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6">
					<div class="card shadow-lg">
						<div class="card-body">
							<h2 class="card-title text-info">Secure your account !</h2>
							<div class="form-group">
								<label for="password" class="col-form-label">Pasword</label> <input
									type="password" class="form-control" id="password"
									placeholder="Type your password" required>
								<div class="password-feedback"></div>
							</div>
							<div class="form-group">
								<label for="password_conf" class="col-form-label">Pasword
									(confirm)</label> <input type="password" class="form-control"
									id="password_conf" placeholder="Type your password again"
									required>
								<div class="password_conf-feedback"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="margin-top: 1em;" class="mb-5">
				<button type="submit" class="btn btn-info btn-lg btn-block shadow">Sign
					up !</button>
			</div>
		</form>
	</div>

</body>
</html>
