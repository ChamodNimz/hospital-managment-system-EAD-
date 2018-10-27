<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,java.text.*"%>
<!doctype html>
<html lang="en" dir="ltr">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta http-equiv="Content-Language" content="en" />
	<meta name="msapplication-TileColor" content="#2d89ef">
	<meta name="theme-color" content="#4188c9">
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
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
					<%@ include file="layouts/patient-navigation.jsp" %>
					<div class="col-lg-6">
						<div class="container-fluid">
							<div class="row row-cards">
								<div class="card p-3" id="content-form">
								
										<div class="alert alert-success">
											<b><s:property value="message" /></b>
										</div>
									
									<div class="card-header mb-5">
										<h2 class="card-title mb-3 text-info">Release a patient</h2>
									</div>

									<form action="releasePatientProcess" method="post">
										<div class="row">
											<div class="col-md-5">
												<div class="form-group">
													<label class="form-label">Patient name</label>
													<select name="p_id" id="patient_id" class="form-control">
													<option value=""></option>
														<s:iterator value="patientList">
															<option value="<s:property value=" patient_id" />">
															<s:property value="p_fname" />
															</option>
														</s:iterator>
													</select>

												</div>
											</div>
											
											
											<div class="col-sm-6 col-md-3">
												<div class="form-group">
													<label class="form-label">Total</label> 
													<input id="total" class="form-control" name="total" readonly/>
													<input name="avl_room_count" id="room_count" hidden/>
												</div>
											</div>

											<div class="col-sm-6 col-md-4"></div>


											<div class="col-md-12">
												<div class="form-group">
													<label class="form-label">Reason</label>
													<textarea rows="" cols="" name="" id="reason" class="form-control" readonly></textarea>
													
												</div>
											</div>


											<div class="col-md-6">
												<div class="form-group">
													<label class="form-label">Admit date</label> 
													<input name="" class="form-control" id="admit-date" readonly/>
												</div>
											</div>
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="form-label">Release date</label> 
													<input name="release_date" class="form-control" id="release-date" value="<%
         Date dNow = new Date();
         SimpleDateFormat ft = 
         new SimpleDateFormat ("yyyy-MM-dd");
         out.print(  ft.format(dNow));
      %>" readonly/>
												</div>
											</div>

											

										</div>

										<button class="btn btn-success mt-4" type="submit">Release</button>

									</form>


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
$("#patient_id").on("change",function(){
var p_id=$(this).val();

var data = {"p_id":p_id};
    $.ajax({
        type:'POST',
        url:'getPatientDetails',
        data:data,
        success: function(data){
        	
        	$('#reason').val(data[0]);
        	$('#admit-date').val(data[1]);
        	
        	var admitDate = new Date(data[1]);
        	var releaseDate = new Date($('#release-date').val());
        	var timeDiff = Math.abs(releaseDate.getTime() - admitDate.getTime());
        	var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24)); 
        	//set total
        	$('#total').val(data[3]*diffDays);
        	
        	
                }
            
    });

    return false;
});
</script>
</body>

</html>