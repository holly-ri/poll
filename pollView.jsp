<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="poll.*, java.util.*"%>
<jsp:useBean id="pMgr" class="poll.PollMgr" />
<%
	request.setCharacterEncoding("EUC-KR");
	int num = 0;
	if(request.getParameter("num") != null) {
		num = Integer.parseInt(request.getParameter("num"));
	}
	int sum = pMgr.sumCount(num);
	Vector<PollItemBean> vlist = pMgr.getView(num);
	PollListBean plBean = pMgr.getList(num);
	String question = plBean.getQuestion();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body align="center">
	<table border="1" width="400">
		<tr>
			<td colspan="4"><b>Q : <%=question %></b></td>
		</tr>
		<tr>
			<td colspan="3"><b>총 투표자 : <%=sum %>명</b></td>
			<td width="40">count</td>
		</tr>
		<%
			String[] color = {"#FF0000", "#FFBB00", "#ABF200", "#00D8FF", "#0100FF", "#A566FF", "#FF00DD", "#FFBBFF"};
			for(int i=0; i<vlist.size(); i++) {
				PollItemBean piBean = vlist.get(i);
				String[] item = piBean.getItem();
				int count = piBean.getCount();
				int ratio = (int)(Math.ceil((double)count / sum * 100));
		%>
		<tr>
			<td width="20" align="center"><%=i+1 %></td>
			<td width="120"><%=item[0] %></td>
			<td>
				<table width="<%=ratio %>" height="15">
					<tr>
						<td bgcolor="<%=color[i]%>"></td>
					</tr>
				</table>
			</td>
			<td width="40"><%=count %></td>
		</tr>
		<%} %>
	</table>
	<a href="javascript:window.close()">닫기</a>
</body>
</html>