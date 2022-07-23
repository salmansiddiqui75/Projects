<%@ include file="navbar.jsp" %>
<%@ page import="java.sql.*" %>
<html>
 <body>
  <form>
   <%
    try
   {
    	Class.forName("com.mysql.cj.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/advancejava","root","mysql");
		String query="select * from student";
		PreparedStatement ps=cn.prepareStatement(query);
		ResultSet rst=ps.executeQuery();
		%>
		<table border="1.5vw solid black" class="taa" > 
			   <tr><th class="th">Student Id</th><th class="th">Student Name</th><th class="th">Student Phone</th><th class="th">Student Course</th><th class="th">Student Stream</th></tr>
		<% 
		while(rst.next())
		{ 
			%>
			   
			  <tr>
			   <td><%=rst.getString(1)%></td>
			   <td><%=rst.getString(2)%></td>
			   <td><%=rst.getString(3)%></td>
			   <td><%=rst.getString(4)%></td>
			   <td><%=rst.getString(5)%></td>
			  </tr>
			  <% 
		}
		%>
		</table>
		<%
    }
   catch(Exception ex)
   {
	   out.print(ex);
   }
   %>
  </form>
 </body>
</html>