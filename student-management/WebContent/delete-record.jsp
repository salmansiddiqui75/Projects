<%@ include file="navbar.jsp"%>
<%@ page import="java.sql.*" %>
<html>
 <table>
 <%
  try
  {
	  Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/advancejava","root","mysql");
	  String sid=request.getParameter("sid");
	  String query="delete from student where sid=?";
	  PreparedStatement ps=cn.prepareStatement(query);
	  ps.setString(1,sid);
	  ps.executeUpdate();
	  %>
	   <div class="save"><label>Record deleted successfully</label></div>
	  <% 
  }
 catch(Exception ex)
 {
	 out.println(ex);
 }
 %>
 </table>
</html>