<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Channel doctor</title>
<%@ include file="layouts/headerLinks.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/js/gijgo.min.js"
	type="text/javascript"></script>
<link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<%@ include file="layouts/navigation.jsp"%>

<!-- date picker -->
	<input id="datepicker" width="276" />
	<script>
		$('#datepicker').datepicker({
			uiLibrary : 'bootstrap4'
		});
	</script>
</body>
</html>