<%@page import="com.cetpa.ProductDao"%>
<%@page import="com.cetpa.Product"%>
<%@page import="com.cetpa.*"%>
<%
	int pid=Integer.parseInt(request.getParameter("pid"));
	Product p=ProductDao.getProduct(pid);
	if(p!=null)
	{
		ProductDao.deleteRecord(p);
		%>
		<%@include file="delete.jsp" %>
			<div style="color:red;margin-top:8vw;font-size: 3vw" align="center">Record has been deleted successfully</div>
		<%
	}
	else{
		%>
		<%@include file="delete.jsp" %>
		<div style="color:blue;margin-top:8vw;font-size: 3vw" align="center">Record not found</div>
		<%
	}
	
%>