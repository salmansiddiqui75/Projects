<%@page import="com.cetpa.ProductDao"%>
<%@page import="com.cetpa.Product"%>
<%@page import="com.cetpa.*"%>

<%
	int pid = Integer.parseInt(request.getParameter("pid"));
	Product p = ProductDao.getProduct(pid);
	if (p != null) {
%>
<%@ include file="menu.jsp"%>
<form action="update-record.jsp">
<table class="taa">
	<tr>
	
		<th align="left" id="txt">Product Id</th>
		<td ><input id="in" type="text" name="pid"value='<%=p.getPid()%>' readonly="readonly"></td>
	</tr>
	<tr>
	
		<th align="left" id="txt">Edit name</th>
		<td ><input id="in" type="text" name="name"value='<%=p.getName()%>'></td>
	</tr>
	<tr>
		<th align="left" id="txt">Edit brand</th>
		<td><input id="in" type="text" name="brand" value='<%=p.getBrand()%>'></td>
	</tr>
	<tr>
		<th align="left" id="txt">Edit Quantity</th>
		<td><input id="in" type="text" name="quantity" value='<%=p.getQuantity()%>'></td>
	</tr>
	<tr>
		<th align="left" id="txt">Edit price</th>
		<td><input id="in" type="text" name="price" value='<%=p.getPrice()%>'></td>
	</tr>
	<tr>
		<td colspan="2" align="right"><button id="bt">Update</button></td>
	</tr>
</table>

<%
	return;
	} else {
%>
<%@include file="edit.jsp"%>
<div style="color: blue; margin-top: 8vw; font-size: 3vw" align="center">Record
	not found</div>
<%
	}
%>
</form>