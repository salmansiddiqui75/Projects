<%@page import="com.cetpa.*"%>
<%@ include file="menu.jsp"%>
<%
	String name=request.getParameter("name");
	String brand=request.getParameter("brand");
	int quantity=Integer.parseInt(request.getParameter("quantity"));
	int price=Integer.parseInt(request.getParameter("price"));
	Product product=new Product(name,brand,quantity,price);
	ProductDao.saveRecord(product);
%>
<div style="color:green;margin-top:8vw;font-size: 3vw" align="center">Record has been save successfully</div>