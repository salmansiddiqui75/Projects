<%@page import="javax.crypto.spec.PSource"%>
<%@page import="com.cetpa.*"%>
<%@ include file="menu.jsp"%>
<%
	int pid=Integer.parseInt(request.getParameter("pid"));
	Product product=ProductDao.getProduct(pid);
	ProductDao.t.begin();
	product.setName(request.getParameter("name"));
	product.setBrand(request.getParameter("brand"));
	product.setQuantity(Integer.parseInt(request.getParameter("quantity")));
	product.setPrice(Integer.parseInt(request.getParameter("price")));
	ProductDao.t.commit();
%>
<div style="color:green;margin-top:8vw;font-size: 3vw" align="center">Record has been updated successfully</div>