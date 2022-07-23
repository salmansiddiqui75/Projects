<%@ include file="navbar.jsp"%>
<%@page import="java.sql.*"%>
<html>
<body>
	<%
		String sid = request.getParameter("sid");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String course = request.getParameter("course");
		String stream = request.getParameter("stream");
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost/advancejava", "root", "mysql");
			String query = "update student set name=?,phone=?,course=?,stream=? where sid=?";
			PreparedStatement ps = cn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, phone);
			ps.setString(3, course);
			ps.setString(4, stream);
			ps.setString(5, sid);
			ps.executeUpdate();
	%>
	<div class="save">
		<label>Record updated successfully</label>
	</div>
	<%
		} 
		catch (Exception ex) 
		{
			out.print(ex);
		}
	%>
</body>
</html>