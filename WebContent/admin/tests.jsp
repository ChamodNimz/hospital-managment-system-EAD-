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
													<button id="doTest" class="btn btn-info">
														Do Test <small></small>
													</button>
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
													<button role="button" class="btn btn-info"
														id="invoiceResults">
														Invoice Results <small></small>
													</button>
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
										<img alt="" src="demo/other/waiting.jpg">
										<h2 class="text-info display-4 p-4"> Click menu items to begin</h2>
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
	<script>
		$(document).ready(function() {

			// when clicked navigation links

			$("#doTest").click(function() {

				$.ajax({
					method : "get",
					url : "tests/tests-doTest.jsp",
					success : function(data) {
						$("#content-form").children().remove();
						$("#content-form").append(data);

					},
					error : function() {

					}
				});
			});

			$("#invoiceResults").click(function() {

				$.ajax({
					method : "get",
					url : "tests/tests-invoiceResults.jsp",
					success : function(data) {
						$("#content-form").children().remove();
						$("#content-form").append(data);

					},
					error : function() {

					}
				});
			});

			$("#mailReport").click(function() {

				$.ajax({
					method : "get",
					url : "tests-mailReport.jsp",
					success : function(data) {
						$("#content-form").children().remove();
						$("#content-form").append(data);

					},
					error : function() {

					}
				});

			});

		});
	</script>
</body>
</html>