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
		<h2>투표프로그램</h2>
		<hr width="600"/>
		<b>설문작성</b>
		<hr width="600" />
	</div>
	<form method="post" action="pollInsertProc.jsp">
		<table border="1" width="500" align="center">
			<tr>
				<td><b>질문</b></td>
				<td colspan="2"><input name="question" size="30"></td>
			</tr>
			<tr>
				<td rowspan="10"><b>항목</b></td>
				<%
					for (int i = 1; i <= 4; i++) {
						out.println("<td>" + (i * 2 - 1) + ": <input name='item'></td>");
						out.println("<td>" + (i * 2) + ": <input name='item'></td>");
						out.println("</tr>");
						out.println("<tr>");
					}
				%>
			<tr>
				<td>시작일</td>
				<td colspan="2">
					<select name="sdateY">
						<option value="2020">2020
						<option value="2021">2021
					</select>년 
					<select name="sdateM">
						<%
							for (int i = 1; i <= 12; i++) {
								out.println("<option value='" + i + "'>" + i);
							}
						%>
					</select>월
					<select name="sdateD">
						<%
							for (int i = 1; i <= 31; i++) {
								out.println("<option value='" + i + "'>" + i);
							}
						%>
					</select>일
				</td>
			</tr>
			<tr>
				<td>종료일</td>
				<td colspan=2>
					<select name="edateY">
						<option value="2020">2020
						<option value="2021">2021
					</select>년 
					<select name="edateM">
						<%
							for (int i = 1; i <= 12; i++) {
								out.println("<option value='" + i + "'>" + i);
							}
						%>
					</select>월 
					<select name="edateD">
						<%
							for (int i = 1; i <= 31; i++) {
								out.println("<option value='" + i + "'>" + i);
							}
						%>
					</select>일
				</td>
			</tr>
			<tr>
				<td>복수투표</td>
				<td colspan=2>
					<input type="radio" name="type" value="1" checked>yes 
					<input type="radio" name="type" value="0">no
				</td>
			</tr>
			<tr>
				<td colspan=3>
					<input type="submit" value="작성하기"> 
					<input type="reset" value="다시쓰기"> 
					<input type="button" value="리스트" onClick="javascript:location.href='pollList.jsp'">
				</td>
			</tr>
		</table>
	</form>
	

</body>
</html>