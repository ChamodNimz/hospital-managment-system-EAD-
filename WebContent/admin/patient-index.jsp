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

<title>Patient Section</title>
<%@  include file="layouts/admin-panel-header-links.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/css/gijgo.min.css" rel="stylesheet" type="text/css" />
</head>
<body class="">
	<div class="page">
		<div class="page-main">
			<%@ include file="layouts/admin-panel-navigation.jsp"%>
			<div class="my-3 my-md-5"></div>

			<div class="container-fluid">
				<div class="row row-cards">
					<!------------------------------------------ navigation with cards --------------------------------------->
					<div class="col-lg-2">
						<div class="card p-3">
							<div class="card-header">
								<h3 class="card-title mb-3">Quick navigation</h3>
							</div>

							<div class="row row-cards mt-3">

								<div class="col-sm-12 col-lg-12 ">
									<div class="card p-3">
										<div class="d-flex align-items-center">
											<span class="stamp stamp-md bg-blue mr-3"> <i
												class="fe fe-activity"></i>
											</span>
											<div>
												<h4 class="m-0">
													<a href="patient-index.jsp" class="btn btn-info"
														style="width: 110px;" id="mailReport"> Admit patient<small></small>
													</a>
												</h4>
												<small class="text-muted"></small>
											</div>
										</div>
									</div>
								</div>

								<div class="col-sm-12 col-lg-12">
									<div class="card p-3">
										<div class="d-flex align-items-center">
											<span class="stamp stamp-md bg-blue mr-3"> <i
												class="fa fa-user-md"></i>
											</span>
											<div>
												<h4 class="m-0">
													<a href="viewDoctors" class="btn btn-info"
														style="width: 110px;" id="mailReport"> View admits<small></small>
													</a>
												</h4>
												<small class="text-muted"></small>
											</div>
										</div>
									</div>
								</div>

								<div class="col-sm-12 col-lg-12">
									<div class="card p-3">
										<div class="d-flex align-items-center">
											<span class="stamp stamp-md bg-blue mr-3"> <i
												class="fa fa-user-md"></i>
											</span>
											<div>
												<h4 class="m-0">
													<a href="viewDoctors" class="btn btn-info"
														style="width: 110px;" id="mailReport"> See patients<small></small>
													</a>
												</h4>
												<small class="text-muted"></small>
											</div>
										</div>
									</div>
								</div>





							</div>



						</div>

					</div>

					<div class="col-lg-6">
						<div class="container-fluid">
							<div class="row row-cards">
								<div class="card p-3" id="content-form">
									<div class="card-header mb-5">
										<h2 class="card-title mb-3 text-info">Admit a patient</h2>
									</div>

									<form action="admitPatient" method="post">
										<div class="row">
											<div class="col-md-5">
												<div class="form-group">
													<label class="form-label">Ward No</label> <select
														name="ward_no" class="form-control">
														<option value="">1</option>
													</select>

												</div>
											</div>
											<div class="col-sm-6 col-md-3">
												<div class="form-group">
													<label class="form-label">Patient ID</label> 
													<select
														name="p_id" class="form-control">
														<s:iterator value="patientList">
														<option value="<s:property value="patient_id"/>"><s:property value="p_fname"/></option>
														</s:iterator>
													</select>
												</div>
											</div>

											<div class="col-sm-6 col-md-4">
												
											</div>


											<div class="col-md-12">
												<div class="form-group">
													<label class="form-label">Reason</label>
													<textarea rows="" cols="" name="reason"
														class="form-control"></textarea>
												</div>
											</div>

											<div class="col-md-12">
												<div class="form-group">
													<label class="form-label">Special notes</label>
													<textarea rows="" cols="" name="special_notes"
														class="form-control"></textarea>
												</div>
											</div>
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="form-label">Admit Date</label>
													<input id="datepicker" width="234" name="admit_date" />
											<script>
												$('#datepicker')
														.datepicker(
																{
																	uiLibrary : 'bootstrap4',
																	iconsLibrary : 'materialicons'
																});
											</script>
												</div>
											</div>
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="form-label">Floor No</label>
													<select
														name="floor_no" class="form-control">
														<option value="">1</option>
														<option value="">2</option>
														<option value="">3</option>
														<option value="">4</option>
														<option value="">5</option>
														<option value="">6</option>
													</select>
												</div>
											</div>
											
											<div class="col-md-12">
												<div class="form-group">
													<label class="form-label">Doc Name</label>
													 <select
														name="doc_name" class="form-control">
														<option value="">1</option>
														<option value="">2</option>
														<option value="">3</option>
														<option value="">4</option>
														<option value="">5</option>
														<option value="">6</option>
													</select>
												</div>
											</div>

										</div>

										<button class="btn btn-success mt-4" type="submit">Submit</button>

									</form>


								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-4">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">This ward's availability</h3>
							</div>
							<div class="card-body">
								<div id="chart-donut" style="height: 12rem;"></div>
							</div>
						</div>
						<script>
							require(
									[ 'c3', 'jquery' ],
									function(c3, $) {
										$(document)
												.ready(
														function() {
															var chart = c3
																	.generate({
																		bindto : '#chart-donut', // id of chart wrapper
																		data : {
																			columns : [
																					// each columns data
																					[
																							'data1',
																							63 ],
																					[
																							'data2',
																							37 ] ],
																			type : 'donut', // default type of chart
																			colors : {
																				'data1' : tabler.colors["green"],
																				'data2' : tabler.colors["blue"]
																			},
																			names : {
																				// name of each serie
																				'data1' : 'Available rooms',
																				'data2' : 'Occupied rooms'
																			}
																		},
																		axis : {},
																		legend : {
																			show : false, //hide legend
																		},
																		padding : {
																			bottom : 0,
																			top : 0
																		},
																	});
														});
									});
						</script>
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