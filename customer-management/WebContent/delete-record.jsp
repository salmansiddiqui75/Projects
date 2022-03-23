<%@ include file="navbar.jsp" %>
<%@ include file="conn.jsp" %>
<%
String query="delete from customer where cid=?";
PreparedStatement ps=cn.prepareStatement(query);
String v1=request.getParameter("cid");
ps.setString(1,v1);
ps.executeUpdate();
response.sendRedirect("customer-list.jsp");
%>