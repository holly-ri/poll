<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="poll.*, java.util.*" %>
<jsp:useBean id="pMgr" class="poll.PollMgr"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body align="cneter">
	<h2 align="center">��ǥ ���α׷� </h2>
	<hr width="600"/>
	<p align="center"><b>������</b></p>
	<div width="300" align="center">
		<jsp:include page="pollForm.jsp"/>
	</div>
	<hr width="600"/>
	<table align="center" width="500" border="1">
		<tr align="center">
			<td><b>��ȣ</b></td>
			<td><b>����</b></td>
			<td><b>������~������</b></td>
		</tr>
		<%
			Vector<PollListBean> vlist=pMgr.getAllList();
			int count=vlist.size();
			for(int i=0; i<vlist.size(); i++){
				PollListBean plBean=vlist.get(i);
				int num=plBean.getNum();
				String question=plBean.getQuestion();
				String sdate=plBean.getQuestion();
				String edate=plBean.getQuestion();
				out.print("<tr><td align='center'>"+count+"</td>");
				out.print("<td><a href='pollList.jsp?num="+num+"'>"+"</a></td>");
				out.print("<td>"+sdate+"~"+edate+"</td></tr>");
			}
		%>
	</table>
	<table width="600">
		<tr><td align="right"><a href="pollInsert.jsp">���� �ۼ��ϱ�</a></td></tr>
	</table>
</body>
</html>