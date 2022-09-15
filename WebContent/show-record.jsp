<%@include file="conn.jsp"%>
<%@include file="navbar.jsp"%>
<%@page import="java.sql.*"%>
<html>
<body>
<div class="container">
<% 

	String query = "select * from customerinfo";
	Statement st = cn.createStatement();
	ResultSet rst = st.executeQuery(query);
%>
	   <table  class="table table-dark table-hover">
	   <thead>
	     <tr>
	       <th class='la bold' scope="col">CustomerId</th>
	       <th class='la bold' scope="col">CustomerName</th>
	       <th  class='la bold'scope="col">CustomerEmail</th>
	       <th class='la bold' scope="col">CustomerPhone</th>
	       <th  class='la bold'scope="col">CustomerCity</th>
	       <th class='la' style='color:magenta'>Action</th>
	     </tr>
	   </thead>
	    <tbody>
	<%    
	while(rst.next())
	{
		%>
	 
 
    <tr>
      <td class='la'><%=rst.getString(1) %></td>
      <td class='la'><%=rst.getString(2) %></td>
      <td class='la'><%=rst.getString(3) %></td>
      <td class='la'><%=rst.getString(4) %></td>
      <td class='la'><%=rst.getString(5) %></td>
      <td>
      <a href="edit-customer.jsp?cid=<%=rst.getString(1)%>">Edit</a>
       <a href="remove-customer.jsp?cid=<%=rst.getString(1)%>" onclick="return confirm('are you sure to remove')">Remove</a>
      </td>
    </tr>
 	 <%    	
	}
	%>
 </tbody>
</table>
</div>
</body>
</html>