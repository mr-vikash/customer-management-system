
<%@include file="conn.jsp"%>
<%@include file="navbar.jsp"%>

<%@page import="java.sql.*"%>
<html>
<head>
</head>
<body>
<%
String query = "select * from customerinfo where cid=? ";
PreparedStatement ps = cn.prepareStatement(query);
ps.setString(1,request.getParameter("cid"));
ResultSet rst = ps.executeQuery();
rst.next();
%>
	<div class='container'>
		<div class='card col-md-10 mx-auto'>
			<div class='card-body'>
				<form action="edit-record.jsp" method="post">
					<div class='row form-group'>
						<div class='col-md-10'>
							<label for='cid' class='la'>Enter customer id</label>
								 <input type="text"  value='<%=rst.getString(1)%>' readonly="readonly" name='cid' id='cid' class='form-control la'
								required>
						</div>
					</div>
					<div class='row form-group'>
						<div class='col-md-10'>
							<label for='name' class='la'>Enter Customer name</label>
								 <input type="text" name='name' id='name'  value="<%=rst.getString(2)%>" 
								class='form-control la' required>
						</div>
					</div>
					<div class='row form-group'>
						<div class='col-md-10'>
							<label for='email' class='la'>Enter email id</label>
								 <input type="text" name='email' id='email'  value="<%=rst.getString(3)%>" 
								class='form-control la' required>
						</div>
					</div>


					<div class='row form-group'>
						<div class='col-md-5'>
							<label for='phone' class='la'>Enter phone number</label>
								<input type="text" name='phone' id='phone'  value="<%=rst.getString(4)%>" 
								class='la form-control' required>
						</div>
						<div class='col-md-5'>
							<label for='city' class='la'>Enter city</label> <input
								type="text" name='city' id='city' class='la form-control'  value="<%=rst.getString(5)%>" 
								required>
					    </div>
					 </div>
                
					<div class='row form-group'>
						<div class='col-md-10'>
							<button class='btn btn-primary'>Edit</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>