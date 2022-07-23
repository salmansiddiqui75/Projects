<%@ include file="menu.jsp"%>
<html>
<body>

	<form action="save-record.jsp" method="post">
		<table id="ta">
			<tr>
				<td id="txt">Enter product name</td>
				<td><input id="in" type="text" name="name" required></td>
			</tr>
			<tr>
				<td id="txt">Enter brand name</td>
				<td><input id="in" type="text" name="brand" required></td>
			</tr>
			<tr>
				<td id="txt">Enter quantity</td>
				<td><input id="in" type="text" name="quantity" required></td>
			</tr>
			<tr>
				<td id="txt">Enter price</td>
				<td><input id="in" type="text" name="price" required></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><button id="bt">Save
						Record</button></td>
			</tr>
		</table>
	</form>
</body>
</html>