<%@ include file="navbar.jsp"%>
<%@ include file="conn.jsp"%>
<%
String query="select * from customer";
Statement st=cn.createStatement();
ResultSet rst=st.executeQuery(query);

%>
<div class='container'>
<div class='card mx-auto'>
<div class='card-body'>
<div class='table'>
<table class='table'>
<thead>
<tr>
<th>CustomerID</th><th>First name</th><th>Last name</th><th>Address</th><th>Phone Number</th>
<th>Email ID</th><th>Delete</th><th>Edit</th>
</tr>
</thead>
<tbody>
<%
while(rst.next())
{
	%>
	<tr>
	<td><%=rst.getString(1) %></td>
	<td><%=rst.getString(2) %></td>
	<td><%=rst.getString(3) %></td>
	<td><%=rst.getString(4) %></td>
	<td><%=rst.getString(5) %></td>
	<td><%=rst.getString(6) %></td>
	<td><a href='delete-record.jsp?cid=<%=rst.getString(1)%>' onclick="return confirm('Are you sure to delete ?')"><i class="fa fa-trash alt"></i></a></td>
	<td><a href='edit-record.jsp?cid=<%=rst.getString(1)%>'><i class="fa fa-edit"></i></a></td>
	</tr>
	<% 
}
%>
</tbody>
</table>
</div>
</div>
</div>
</div>
