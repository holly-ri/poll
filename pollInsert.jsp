<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div width="600" align="center">
		<h2>��ǥ���α׷�</h2>
		<hr width="600"/>
		<b>�����ۼ�</b>
		<hr width="600" />
	</div>
	<form method="post" action="pollInsertProc.jsp">
		<table border="1" width="500" align="center">
			<tr>
				<td><b>����</b></td>
				<td colspan="2"><input name="question" size="30"></td>
			</tr>
			<tr>
				<td rowspan="10"><b>�׸�</b></td>
				<%
					for (int i = 1; i <= 4; i++) {
						out.println("<td>" + (i * 2 - 1) + ": <input name='item'></td>");
						out.println("<td>" + (i * 2) + ": <input name='item'></td>");
						out.println("</tr>");
						out.println("<tr>");
					}
				%>
			<tr>
				<td>������</td>
				<td colspan="2">
					<select name="sdateY">
						<option value="2020">2020
						<option value="2021">2021
					</select>�� 
					<select name="sdateM">
						<%
							for (int i = 1; i <= 12; i++) {
								out.println("<option value='" + i + "'>" + i);
							}
						%>
					</select>��
					<select name="sdateD">
						<%
							for (int i = 1; i <= 31; i++) {
								out.println("<option value='" + i + "'>" + i);
							}
						%>
					</select>��
				</td>
			</tr>
			<tr>
				<td>������</td>
				<td colspan=2>
					<select name="edateY">
						<option value="2020">2020
						<option value="2021">2021
					</select>�� 
					<select name="edateM">
						<%
							for (int i = 1; i <= 12; i++) {
								out.println("<option value='" + i + "'>" + i);
							}
						%>
					</select>�� 
					<select name="edateD">
						<%
							for (int i = 1; i <= 31; i++) {
								out.println("<option value='" + i + "'>" + i);
							}
						%>
					</select>��
				</td>
			</tr>
			<tr>
				<td>������ǥ</td>
				<td colspan=2>
					<input type="radio" name="type" value="1" checked>yes 
					<input type="radio" name="type" value="0">no
				</td>
			</tr>
			<tr>
				<td colspan=3>
					<input type="submit" value="�ۼ��ϱ�"> 
					<input type="reset" value="�ٽþ���"> 
					<input type="button" value="����Ʈ" onClick="javascript:location.href='pollList.jsp'">
				</td>
			</tr>
		</table>
	</form>
	

</body>
</html>