<%@ include file="navbar.jsp" %>
<%@ page import="java.sql.*"%>
<html>
 <body>
   <form action="update-record.jsp" method="post">
	 <%
		String id = request.getParameter("sid");
		try 
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection cn = DriverManager.getConnection("jdbc:mysql://localhost/advancejava", "root", "mysql");
				String query = "select * from student where sid=?";
				PreparedStatement ps = cn.prepareStatement(query);
				ps.setString(1, id);
				ResultSet rst = ps.executeQuery();
				while (rst.next()) {
	 %>
		<table class="tab">
			<tr><td class="txt">Student Id</td><td><input class="tb" type="text" name="id" value='<%=rst.getString(1)%>'readonly="readonly"></td></tr>
			<tr><td class="txt">Student name</td><td><input class="tb" type="text" name="name"value='<%=rst.getString(2)%>'></td></tr>
			<tr><td class="txt">Student phone</td><td><input class="tb" type="text" name="phone"value='<%=rst.getString(3)%>'></td></tr>
			<tr><td class="txt">Course</td>
				<td><select name="course" class="tb">
					<option>B.Tech</option>
					<option>M.Tech</option>
					<option>B.Sc</option>
					<option>MCA</option>
				</select>
			</tr>
			<tr>
				<td class="txt">Student Stream</td>
				<td><input class="tb" type="text" name="stream"
					value='<%=rst.getString(5)%>'></td>
			</tr>
			<tr>
				<td colspan="6" align="right"><button class="bt">Update Record</button></td>
			</tr>
		</table>
		<%
			}

			} catch (Exception ex) {
				System.out.println(ex);
			}
		%>
	</form>
</body>
</html>