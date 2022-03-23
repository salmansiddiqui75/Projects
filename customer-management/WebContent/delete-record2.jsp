<%@ include file="navbar.jsp" %>
<%@ include file="conn.jsp" %>
<%
String query="delete from customer where cid=?";
PreparedStatement ps=cn.prepareStatement(query);
String v1=request.getParameter("cid");
ps.setString(1,v1);
ps.executeUpdate();
%>
<div class="dv">
<h3 style="color:red">CustomerId <%=v1 %> record has been deleted successfully</h3>
</div>