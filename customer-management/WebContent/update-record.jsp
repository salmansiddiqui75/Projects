<%@ include file="conn.jsp"%>
<%@ include file="navbar.jsp"%>
<%
String query="update customer set firstname=?,lastname=?,address=?,phoneno=?,email=? where cid=?";
PreparedStatement ps=cn.prepareStatement(query);
String v1=request.getParameter("cid");
String v2=request.getParameter("firstname");
String v3=request.getParameter("lastname");
String v4=request.getParameter("address");
String v5=request.getParameter("phoneno");
String v6=request.getParameter("email");
ps.setString(1,v2);
ps.setString(2,v3);
ps.setString(3,v4);
ps.setString(4,v5);
ps.setString(5,v6);
ps.setString(6,v1);
ps.executeUpdate();
response.sendRedirect("customer-list.jsp");
%>
