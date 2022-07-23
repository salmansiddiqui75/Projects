<%@page import="com.cetpa.ProductDao"%>
<%@page import="com.cetpa.Product"%>
<%@page import="com.cetpa.*"%>
<%
	int pid=Integer.parseInt(request.getParameter("pid"));
	Product p=ProductDao.getProduct(pid);
	if(p!=null)
	{
		%>
		<%@include file="search.jsp" %>
	<table class="taa">
	 <tr>
	  <th align="left" id="txt">Product name</th>
	  <td id="txt" style="color:blue"><%=p.getName()%></td>
	 </tr>
	 <tr>
	  <th align="left" id="txt">Product brand</th>
	  <td id="txt" style="color:blue"><%=p.getBrand()%></td>
	 </tr>
	 <tr>
	  <th align="left" id="txt">Product Quantity</th>
	  <td id="txt" style="color:blue"><%=p.getQuantity()%></td>
	 </tr>
	 <tr>
	  <th align="left" id="txt">Product price</th>
	  <td id="txt" style="color:blue">  &#8377;<%=p.getPrice()%></td>
	 </tr>
	</table>
	<% 
	return;
	}
	else{
		%>
		<%@include file="search.jsp" %>
		<div style="color:blue;margin-top:8vw;font-size: 3vw" align="center">Record not found</div>
		<%
	}
	
%>