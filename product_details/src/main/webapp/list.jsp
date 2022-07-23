<%@page import="com.cetpa.*" %>
<%@page import="java.util.List"%>
<%@ include file="menu.jsp"%>
<table class="taa">
  <tr>
    <th>Name</th>
    <th>Brand</th>
    <th>Quantity</th>
    <th>Price</th>
  </tr>
  <%
  List<Product> list =ProductDao.list();
  for(Product temp:list)
  {
  %> 
  <tr>
    <td><%=temp.getName()%></td>
    <td><%=temp.getBrand() %></td>
    <td><%=temp.getQuantity()%></td>
    <td><%=temp.getPrice()%></td>
  </tr>
  <%} %>
</table>