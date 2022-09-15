<%@include file="navbar.jsp"%>
<html>
<body>
	<div class='container'>
		<div class='card col-md-10 mx-auto'>
			<div class='card-body'>
				<form action="search-record.jsp" method="post">
					<div class='row form-group'>
						<div class='col-md-10'>
							<label for='cid' class='la'>Enter customer id</label><span>
								*</span> <input type="text" name='cid' id='cid' class='form-control la'
								required>
						</div>
					</div>
					<div class='row form-group'>
						<div class='col-md-10'>
							<button class='btn btn-primary'>Search</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>