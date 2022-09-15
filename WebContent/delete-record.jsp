<%@include file="conn.jsp"%>
<%@include file="navbar.jsp"%>
<%@page import="java.sql.*"%>
<html>
<body>
<%

	String query = "delete from  customerinfo where cid=?";
	PreparedStatement ps = cn.prepareStatement(query);
	ps.setString(1,request.getParameter("cid"));
	int n = ps.executeUpdate();
	if(n>=1)
	{
		response.sendRedirect("show-record.jsp");
		return;
	}
%>
</body>
</html>