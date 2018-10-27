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

<title>Doctors Section</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">

<script src="assets/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/bs4/dt-1.10.18/af-2.3.2/b-1.5.4/b-html5-1.5.4/b-print-1.5.4/datatables.min.css" />

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/v/bs4/dt-1.10.18/af-2.3.2/b-1.5.4/b-html5-1.5.4/b-print-1.5.4/datatables.min.js"></script>





<script type="text/javascript">
	$(document).ready(function() {
		$('#tbl').DataTable();
	});
</script>
<script src="./assets/js/require.min.js"></script>
<!-- Dashboard Core -->
<link href="./assets/css/dashboard.css" rel="stylesheet" />
<script src="./assets/js/dashboard.js"></script>
<!-- c3.js Charts Plugin -->
<link href="./assets/plugins/charts-c3/plugin.css" rel="stylesheet" />
<script src="./assets/plugins/charts-c3/plugin.js"></script>
<!-- Google Maps Plugin -->
<link href="./assets/plugins/maps-google/plugin.css" rel="stylesheet" />
<script src="./assets/plugins/maps-google/plugin.js"></script>
<!-- Input Mask Plugin -->
<script src="./assets/plugins/input-mask/plugin.js"></script>
<script>
	requirejs.config({
		baseUrl : '.'
	});
</script>






</head>
<body class="">
	<div class="page">
		<div class="page-main">
			<%@ include file="layouts/admin-panel-navigation.jsp"%>
			<div class="my-3 my-md-5"></div>

			<div class="container-fluid">
				<div class="row row-cards">
					<!------------------------------------------ navigation with cards --------------------------------------->
	<%@ include file="layouts/doctor-navigation.jsp" %>

					<div class="col-lg-10">
						<div class="container-fluid">

							<div class="card p-3" id="content-form">
								<div class="card-header mb-5">
									<h2 class=" mb-3 text-info">View doctors</h2>


								</div>
								<table id="tbl" class="table display">
									<thead>
										<tr>
											<th>Doctor id</th>
											<th>Doctor name</th>
											<th>specialty</th>
											<th>E-mail</th>
											<th>Telephone</th>
											<th>Option</th>
										</tr>

									</thead>
									<tbody>
										<s:iterator value="list"> 
											<tr>
												<td><s:property value="doc_id" /></td>
												<td><s:property value="doc_name" /></td>
												<td><s:property value="doc_specialty" /></td>
												<td><s:property value="email" /></td>
												<td><s:property value="telephone" /></td>
												<td>
											<a class="btn btn-success btn-sm" href="updateDoctor?doc_id=<s:property value="doc_id" />">Update <i class="fa fa-edit"></i> </a>
												
											<a class="btn btn-danger btn-sm" href="removeDoctor?doc_id=<s:property value="doc_id" />">Delete <i class="fa fa-remove"></i></a></td>
											</tr>

										</s:iterator>

									</tbody>
								</table>

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