<%@page import="java.sql.*" %>
<html>
 <body>
  <%
		String sid=request.getParameter("id");
        String name=request.getParameter("name");
        String phone=request.getParameter("phone");
        String course=request.getParameter("course");
        String stream=request.getParameter("stream");
        	try {
    			Class.forName("com.mysql.cj.jdbc.Driver");
    			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/advancejava","root","mysql");
    			String query1="select * from student where sid=?";
    			PreparedStatement ps1=cn.prepareStatement(query1);
    			ps1.setString(1,sid);
    			ResultSet rst=ps1.executeQuery();
    			if(rst.next())
    			{
    				%>
    					<%@ include file="insert.jsp" %>
    					<div class="msg"><label>Entered sid <%=sid%> is already exist</label></div>
    				<%
    				return;
    			}
    			else
    			{
    			String query="insert into student value(?,?,?,?,?)";
    			PreparedStatement ps=cn.prepareStatement(query); 			
    			ps.setString(1,sid);
    			ps.setString(2,name);
    			ps.setString(3,phone);
    			ps.setString(4,course);
    			ps.setString(5,stream);
    			ps.executeUpdate();
    			%>
    				<%@ include file="navbar.jsp" %>
    				<div class="save"><label>Record saved successfully</label></div>
    			<%
    			}
        }
        catch(Exception ex)
        {
        	out.print(ex);
        }
  %>
 </body>
</html>