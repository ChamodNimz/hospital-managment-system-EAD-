
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<form action="doTest" method="post">
	<div class="row">
		<div class="col-md-5">
			<div class="form-group">
				<label class="form-label">Testname</label> 
				<select name="test_name" id="test_name" class="form-control">
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
					class="form-control" placeholder="" readonly name="date" value="<%
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
				<label class="form-label">First Name</label> <input type="text"
					class="form-control" placeholder="first Name" name="f_name"  required>
			</div>
		</div>
		<div class="col-sm-6 col-md-6">
			<div class="form-group">
				<label class="form-label">Last Name</label> <input type="text"
					class="form-control" placeholder="Last Name" name="l_name" required >
			</div>
		</div>
		<div class="col-md-12">
			<div class="form-group">
				<label class="form-label">Telephone</label> <input  type="text"
					class="form-control" required name="telephone" placeholder="Telephone"
					>
			</div>
		</div>
		<div class="col-sm-6 col-md-4">
			<div class="form-group">
				<label class="form-label">Total</label> <input type="text"
					class="form-control" placeholder="" readonly required name="total">
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

				if(test="ECG"){
					 total=4000;
				}
				else if(test="Blood test"){
					total=1500;
				}
				else if(test="CAT Scan"){
					total=12000;
				}
				else if(test="X-Ray"){
					total=5000;
				}
				alert(total);
			});
	});
</script>


