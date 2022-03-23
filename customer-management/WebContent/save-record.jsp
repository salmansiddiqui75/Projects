<%@ include file="conn.jsp"%>
<%@ include file="navbar.jsp"%>
<%
String query="insert into customer values(?,?,?,?,?,?)";
PreparedStatement ps=cn.prepareStatement(query);
String v1=request.getParameter("cid");
String v2=request.getParameter("firstname");
String v3=request.getParameter("lastname");
String v4=request.getParameter("address");
String v5=request.getParameter("phoneno");
String v6=request.getParameter("email");
ps.setString(1,v1);
ps.setString(2,v2);
ps.setString(3,v3);
ps.setString(4,v4);
ps.setString(5,v5);
ps.setString(6,v6);
ps.executeUpdate();
%>
<div class="dv">
<h3 style="color:blue">Customer record has been saved successfully</h3>
</div>
