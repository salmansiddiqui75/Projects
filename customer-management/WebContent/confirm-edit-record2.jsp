<%@ include file="navbar.jsp"%>
<%@ include file="conn.jsp"%>
<%
String query="select * from customer where cid=?";
PreparedStatement ps=cn.prepareStatement(query);
String v1=request.getParameter("cid");
ps.setString(1,v1);
ResultSet rst=ps.executeQuery();
rst.next();
%>
<form action="update-record.jsp">
<table class='ta' >
<tr style="background-color:skyblue">
<td colspan="2" align="center" ><label style="font-size:20px;color:white">Edit customer details</label></td>
</tr>
<tr>
<th class="pd">Customer ID</th>
<td class="pd"><input type="text" class="tb" name='cid' readonly="readonly" value=<%=rst.getString(1) %>></td>
</tr>
<tr>
<th class="pd">Edit Firstname</th>
<td class="pd"><input type="text" class="tb" name='firstname'  value=<%=rst.getString(2) %>></td>
</tr>
<tr>
<th class="pd">Edit Lastname</th>
<td class="pd"><input type="text" class="tb" name='lastname'  value=<%=rst.getString(3) %>></td>
</tr>
<tr>
<th class="pd">Edit Address</th>
<td class="pd"><input type="text" class="tb" name='address'  value=<%=rst.getString(4) %>></td>
</tr>
<tr>
<th class="pd">Edit PhoneNo</th>
<td class="pd"><input type="text" class="tb" name='phoneno'  value=<%=rst.getString(5) %>></td>
</tr>
<tr>
<th class="pd">Edit Email-Id</th>
<td class="pd"><input type="text" class="tb" name='email'  value=<%=rst.getString(6) %>></td>
</tr>
<tr><td colspan="2" align="center">
<Button class="btn btn-primary" style="margin:10px" > Update Record</Button>
</td></tr>
</table>
</form>