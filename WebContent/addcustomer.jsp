
<%@ include file='navbar.jsp'%>
<html>
<head>
</head>
<body>
	<div class='container'>
		<div class='card col-md-10 mx-auto'>
			<div class='card-body'>
				<form action="save-record.jsp" method="post">
					<div class='row form-group'>
						<div class='col-md-10'>
							<label for='cid' class='la'>Enter customer id</label><span>
								*</span> <input type="text" name='cid' id='cid' class='form-control la'
								required>
						</div>
					</div>
					<div class='row form-group'>
						<div class='col-md-10'>
							<label for='name' class='la'>Enter Customer name</label><span>
								*</span> <input type="text" name='name' id='name'
								class='form-control la' required>
						</div>
					</div>
					<div class='row form-group'>
						<div class='col-md-10'>
							<label for='email' class='la'>Enter email id</label><span>
								*</span> <input type="text" name='email' id='email'
								class='form-control la' required>
						</div>
					</div>


					<div class='row form-group'>
						<div class='col-md-5'>
							<label for='phone' class='la'>Enter phone number</label><span>
								*</span> <input type="text" name='phone' id='phone'
								class='la form-control' required>
						</div>
						<div class='col-md-5'>
							<label for='city' class='la'>Enter city</label><span> *</span> <input
								type="text" name='city' id='city' class='la form-control'
								required>
						</div>

					</div>

					<div class='row form-group'>
						<div class='col-md-10'>
							<button class='btn btn-primary'>Save Record</button>
						</div>
					</div>
					<div>
						<span>* </span><label class='la'>Mandatory field</label>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>