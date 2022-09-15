<%@include file="conn.jsp"%>
<%@include file="navbar.jsp"%>
<%@page import="java.sql.*"%>
<html>
<body>
	<%
	String query = "select * from  customerinfo where cid=?";
	PreparedStatement ps = cn.prepareStatement(query);
	ps.setString(1, request.getParameter("cid"));
	ResultSet rst = ps.executeQuery();
	%>
	<table class="table table-dark table-hover">
		<thead>
			<tr>
				<th class='la bold' scope="col">CustomerId</th>
				<th class='la bold' scope="col">CustomerName</th>
				<th class='la bold' scope="col">CustomerEmail</th>
				<th class='la bold' scope="col">CustomerPhone</th>
				<th class='la bold' scope="col">CustomerCity</th>
				<th class='la' style='color: magenta'>Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			if (rst.next()) {
			%>
			<tr>
				<td class='la'><%=rst.getString(1)%></td>
				<td class='la'><%=rst.getString(2)%></td>
				<td class='la'><%=rst.getString(3)%></td>
				<td class='la'><%=rst.getString(4)%></td>
				<td class='la'><%=rst.getString(5)%></td>
				<td>
			</tr>
			<%
			} else {
			out.println("<h2 style='color:red;'>Record does not Exist</h2>");
			}
			%>
		</tbody>
	</table>
</body>
</html>