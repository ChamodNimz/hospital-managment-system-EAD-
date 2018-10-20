<%@ taglib uri="/struts-tags" prefix="s"%>
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
<title>Tests</title>
<%@  include file="layouts/admin-panel-header-links.jsp"%>
</head>
<body class="">
	<div class="page">
		<div class="page-main">
			<%@ include file="layouts/admin-panel-navigation.jsp"%>
			<div class="my-3 my-md-5"></div>

			<div class="container-fluid">
				<div class="row row-cards">

					<div class="col-lg-4">
						<div class="card p-3">
							<div class="card-header">
								<h3 class="card-title mb-3">Quick navigation</h3>
							</div>

							<!------------------------------------------ navigation with cards --------------------------------------->

							<div class="row row-cards mt-3">

								<div class="col-sm-6 col-lg-6 ">
									<div class="card p-3">
										<div class="d-flex align-items-center">
											<span class="stamp stamp-md bg-blue mr-3"> <i
												class="fe fe-activity"></i>
											</span>
											<div>
												<h4 class="m-0">
													<a id="doTest" href="tests.jsp" class="btn btn-info">
														Do Test <small></small>
													</a>
												</h4>
												<small class="text-muted"></small>
											</div>
										</div>
									</div>
								</div>

								<div class="col-sm-6 col-lg-6">
									<div class="card p-3">
										<div class="d-flex align-items-center">
											<span class="stamp stamp-md bg-blue mr-3"> <i
												class="fa fa-user-md"></i>
											</span>
											<div>
												<h4 class="m-0">
													<a href="tests-invoiceResults.jsp" class="btn btn-info"
														id="invoiceResults"> Invoice Results <small></small>
													</a>
												</h4>
												<small class="text-muted"></small>
											</div>
										</div>
									</div>
								</div>


								<div class="col-sm-6 col-lg-6">
									<div class="card p-3">
										<div class="d-flex align-items-center">
											<span class="stamp stamp-md bg-blue mr-3"> <i
												class="fa fa-envelope"></i>
											</span>
											<div>
												<h4 class="m-0">
													<button class="btn btn-info" id="mailReport">
														Mail Report<small></small>
													</button>
												</h4>
												<small class="text-muted"></small>
											</div>
										</div>
									</div>
								</div>


							</div>



						</div>

					</div>

					<div class="col-lg-8">
						<div class="container-fluid">
							<div class="row row-cards">
								<div class="card p-3" id="content-form">
									<%@ page import="java.io.*,java.util.*"%>
									<%@ page import="javax.servlet.*,java.text.*"%>
									<form action="doTest" method="post">
										<div class="row">
											<div class="col-md-5">
												<div class="form-group">
													<label class="form-label">Test name</label> <select
														name="test_name" id="test_name" class="form-control"
														required>
														<option value=""></option>
														<option value="ECG">ECG</option>
														<option value="CAT Scan">CAT Scan</option>
														<option value="Blood test">Blood test</option>
														<option value="X-Ray">X-Ray</option>
													</select>
												</div>
											</div>
											<div class="col-sm-6 col-md-3">
												<div class="form-group">
													<label class="form-label">Date</label> <input type="text"
														class="form-control" placeholder="" readonly name="date"
														value="<%
         Date dNow = new Date();
         SimpleDateFormat ft = 
         new SimpleDateFormat ("yyyy-MM-dd");
         out.print(  ft.format(dNow));
      %>">

												</div>
											</div>

											<div class="col-sm-6 col-md-4">
												<div class="form-group">
													<label class="form-label">Email</label> <input type="email"
														class="form-control" placeholder="" name="email" required>
												</div>
											</div>

											<div class="col-sm-6 col-md-6">
												<div class="form-group">
													<label class="form-label">First Name</label> <input
														type="text" class="form-control" placeholder="first Name"
														name="f_name">
													<s:fielderror fieldName="f_name"
														style="color:red;list-style:none;" />
												</div>
											</div>
											<div class="col-sm-6 col-md-6">
												<div class="form-group">
													<label class="form-label">Last Name</label> <input
														type="text" class="form-control" placeholder="Last Name"
														name="l_name" required>
													<s:fielderror fieldName="l_name"
														style="color:red;list-style:none;" />
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label class="form-label">Telephone</label> <input
														type="text" class="form-control" required name="telephone"
														placeholder="Telephone">
													<s:fielderror fieldName="telephone"
														style="color:red;list-style:none;" />
												</div>
											</div>
											<div class="col-sm-6 col-md-4">
												<div class="form-group">
													<label class="form-label">Total</label> <input type="text"
														class="form-control" placeholder="" readonly required
														name="total" id="totalBill">
													<s:fielderror fieldName="total"
														style="color:red;list-style:none;" />
												</div>
											</div>

										</div>

										<button class="btn btn-info mt-4">Submit</button>

									</form>

									<script>
	$(document).ready(function(){
		
		//fill the total when selected test-name
		$('#test_name').on("change",function(){
				var test=this.value;
				var total=0;

				if(test=="ECG"){
					 total=4000;
				}
				else if(test=="Blood test"){
					total=1500;
				}
				else if(test=="CAT Scan"){
					total=12000;
				}
				else if(test=="X-Ray"){
					total=5000;
				}
				
				$("#totalBill").val(total);
			});
	});
</script>
								</div>
							</div>
						</div>
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