<%@ include file="navbar.jsp" %>
<html>
<head></head>
<body>
<form action="save-record.jsp" method="post">
<table class="ta" >
<tr>
<td class="txt">Enter student Id</td>
<td align="right"><input type="text" name="id" class="tb" required></td>
</tr>
<tr>
<td class="txt">Enter student name</td>
<td align="right"><input type="text" name="name" class="tb" required></td>
</tr>
<tr>
<td class="txt">Enter student phone</td>
<td align="right"><input type="text" name="phone" class="tb" required></td>
</tr>
<tr>
<td class="txt">Enter Course</td>
<td>
<select name="course" class="tb" style="margin-left: 6.4vw">
<option>B.Tech</option>
<option>M.Tech</option>
<option>B.Sc</option>
<option>MCA</option>
</select>
<td>
</tr>
<tr>
<td class="txt">Enter student Stream</td>
<td align="right"><input type="text" name="stream" class="tb" required></td>
</tr>
<tr><td colspan="6" align="right" ><button class="bt1">Save Record</button></td></tr>
</table>
</form>
</body>
</html>