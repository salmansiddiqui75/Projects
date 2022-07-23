<%@ include file="navbar.jsp" %>
<%@ page import="java.sql.*" %>
   <%
    try
   {
    	Class.forName("com.mysql.cj.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/advancejava","root","mysql");
		String sid=request.getParameter("sid");
		String query="select * from student where sid=?";
		PreparedStatement ps=cn.prepareStatement(query);
		ps.setString(1,sid);
		ResultSet rst=ps.executeQuery();
		%>
		<% 
		if(rst.next())
		{ 
			%>
			<html>
 			<body>
  			<form action="delete-record.jsp">
			<table border="1.5vw solid black" class="taa" > 
			   <tr><th class="th">Student Id</th><th class="th">Student Name</th><th class="th">Student Phone</th><th class="th">Student Course</th><th class="th">Student Stream</th></tr>
			  <tr>
			   <td><%=rst.getString(1)%></td>
			   <td><%=rst.getString(2)%></td>
			   <td><%=rst.getString(3)%></td>
			   <td><%=rst.getString(4)%></td>
			   <td><%=rst.getString(5)%></td>
			  </tr>
			  <tr><td colspan="5" align="right"><button class="bt2">Delete Record</button></td></tr>
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