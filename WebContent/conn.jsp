<%@page import="java.sql.*"%>
<html>
<head></head>
<body>
	<%
	Connection cn=null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	    cn = DriverManager.getConnection("jdbc:mysql://localhost/customer", "root", "root");
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
</body>
</html>