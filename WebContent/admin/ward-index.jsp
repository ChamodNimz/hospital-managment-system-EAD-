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

<title>Ward Section</title>
<%@  include file="layouts/admin-panel-header-links.jsp"%>

</head>
<body class="">
	<div class="page">
		<div class="page-main">
			<%@ include file="layouts/admin-panel-navigation.jsp"%>
			<div class="my-3 my-md-5"></div>

			<div class="container-fluid">
				<div class="row row-cards">
					<!------------------------------------------ navigation with cards --------------------------------------->
					<%@ include file="layouts/ward-navigation.jsp" %>

					<div class="col-lg-6">
						<div class="container-fluid">
							<div class="row row-cards">
								<div class="card p-3" id="content-form">
									<s:if test='%{message!=""}'>
										<div class="alert alert-success">
											<b><s:property value="message" /></b>
										</div>
									</s:if>
									
									<div class="card-header mb-5">
										<h2 class="card-title mb-3 text-info">Add a ward</h2>
									</div>

									<form action="addWard" method="post">
										<div class="row">

											<div class="col-md-5">
												<div class="form-group">
													<label class="form-label">Ward name</label> <input
														type="text" class="form-control" placeholder="ward name"
														name="w_name" value="">
													<s:fielderror fieldName="w_name"
														style="color:red;list-style:none;" />


												</div>
											</div>
											<div class="col-sm-6 col-md-3">
												<div class="form-group">
													<label class="form-label">Total rooms</label> <input
														type="text" class="form-control" placeholder="rooms"
														name="room_count" value="">
													<s:fielderror fieldName="room_count"
														style="color:red;list-style:none;" />

												</div>
											</div>

											<div class="col-sm-6 col-md-4">
												<div class="form-group">
													<label class="form-label">Price for a room</label> <input
														type="text" class="form-control" placeholder="price"
														name="price">
													<s:fielderror fieldName="price"
														style="color:red;list-style:none;" />
												</div>
											</div>

										</div>

										<button class="btn btn-success mt-4" type="submit">
											Add <i class="fa fa-plus"></i>
										</button>

									</form>


								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="card p-2 "><img src="demo/other/ward.jpg"></div>
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