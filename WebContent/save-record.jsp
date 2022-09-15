<%@include file="conn.jsp"%>
<%@include file="navbar.jsp"%>
<%@page import="java.sql.*"%>
<html>
<body>
<%
try
{
	String query = "insert into customerinfo values(?,?,?,?,?)";
	PreparedStatement ps = cn.prepareStatement(query);
	ps.setString(1,request.getParameter("cid"));
	ps.setString(2,request.getParameter("name"));
	ps.setString(3,request.getParameter("email"));
	ps.setString(4,request.getParameter("phone"));
	ps.setString(5,request.getParameter("city"));
	ps.executeUpdate();
}
catch(Exception e)
{
	System.out.println(e);
}

%>
<div class="text-center">
<h2 style="color:green; font-family:calligraphy">Customer record Inserted Successfully</h2>
<hr style="color:2px solid green">
<div class="text-center"><a href="addcustomer.jsp">Insert More Customer Record </a></div>
</div>
</body>
</html>