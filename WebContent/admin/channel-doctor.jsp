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

<title>Channeling Section</title>
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
					<%@ include file="layouts/channel-navigation.jsp"%>

					<div class="col-lg-6">
						<div class="container-fluid">
							<div class="row row-cards">
								<div class="card p-3" id="content-form">

									<div class="alert alert-success">
										<b><s:property value="message" /></b>
									</div>
									<div class="card-header mb-5">
										<h2 class="card-title mb-3 text-info">Channel a doctor</h2>
									</div>
									<form action="channelDoctor" method="post">
									<div class="p-3 float-right">
										<h2 class="text-info">Appointment count</h2>
										<h1 class="display-4 text-dark" id="apt_count_dis">
										
										</h1>
										<input name ="apt_count" id="a_count" hidden/>
									</div>
									
										<div class="row">
											<div class="col-md-5">
												<div class="form-group">
													<label class="form-label">Doctor name</label> <select
														name="doc_id" id="doc_id" class="form-control">
														<s:iterator value="docList">
														<option value='<s:property value="doc_id"/>'><s:property value="doc_name" /></option>
														</s:iterator>
													</select>
												</div>
											</div>

											<div class="col-md-7">
												<div class="form-group">
													<label class="form-label">Doctor specialty</label> <input
														type="text" class="form-control" name="" id="doc_spec"
														readonly value="">
												</div>
											</div>

											<div class="col-md-5">
												<div class="form-group">
													<label class="form-label">Date</label> <input
														id="datepicker" name="date" readonly required />
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


											<div class="col-sm-6 col-md-7">
												<div class="form-group">
													<label class="form-label">Available time</label>
													 <input
														id="av_time"  class="form-control" readonly name="" />

												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label class="form-label">Disease as you know it
														(briefly)</label>
													<textarea rows="" cols="" name="desease_type"
														class="form-control" required></textarea>
													<s:fielderror fieldName="desease_type"
														style="color:red;list-style:none;" />
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
						<div class=" p-2">
						<img src="demo/other/lady-doc.png" height="500"/>
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
$("#doc_id").on("change",function(){
var doc_id=$(this).val();

var data = {"doc_id":doc_id};
    $.ajax({
        type:'POST',
        url:'getSelectedDocAjax',
        data:data,
        success: function(data){
        	
        	$('#doc_spec').val(data[0]);
        	$('#av_time').val(data[1]);
        	$('#a_count').val(data[2]);
        	$('#apt_count_dis').html("").append(data[2]);
        	
       }
            
    });

    return false;
});
</script>
</body>
</html>