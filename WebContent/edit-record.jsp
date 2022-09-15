<%@include file="conn.jsp"%>
<%@include file="navbar.jsp"%>

<%@page import="java.sql.*"%>
<html>
<body>
<%
String query ="Update customerinfo set  name=?,email=?,phone=?,city=?  where cid=?";
PreparedStatement ps = cn.prepareStatement(query);
ps.setString(1,request.getParameter("name"));
ps.setString(2,request.getParameter("email"));
ps.setString(3,request.getParameter("phone"));
ps.setString(4,request.getParameter("city"));
ps.setString(5,request.getParameter("cid"));
ps.executeUpdate();
%>

<div class="text-center">
<h2 style="color:green; font-family:calligraphy">Record Edited Successfully</h2>
</div>
</body>
</html>