<%@include file="menu.jsp"%>
<html>

<body>
	<form action="delete-record.jsp" method="post">
		<table id="ta">
			<tr>
				<td id="txt">Enter product id</td>
				<td><input id="in" type="text" name="pid" required></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><button id="bt">Delete
						Record</button></td>
			</tr>
		</table>
	</form>
</body>
</html>