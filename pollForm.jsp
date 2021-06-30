<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="poll.*, java.util.Vector"%>
<jsp:useBean id="pMgr" class="poll.PollMgr"/>
<%
	int num = 0;
	
	if(!(request.getParameter("num") == null || request.getParameter("num").equals(""))) {
		num = Integer.parseInt(request.getParameter("num"));
	}

	PollListBean plBean = pMgr.getList(num);
	Vector<String> vlist = pMgr.getItem(num);
	
	String question = plBean.getQuestion();
	int type = plBean.getType();
	int active = plBean.getActive();
	  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="pollFormProc.jsp">
		<table border="1" width="300">
			<tr>
				<td>Q : <%=question %></td>
			</tr>
			<tr>
				<td>
					<%
						for(int i=0; i<vlist.size(); i++) {
							String itemList = vlist.get(i);
							if(type == 1)
								out.print("<input type=checkbox name='itemnum' value='"+i+"'>");
							else
								out.print("<input type=radio name='itemnum' value='"+i+"'>");
							out.print(itemList + "<br/>");
						}
					%>
				</td>
			</tr>
			<tr>
				<td align="center">
					<% 
						if(active == 1) {
							out.print("<input type='submit' value='��ǥ'>");
						} else {
							out.print("��ǥ");
						}
					%>
					&emsp;&emsp;<input type="button" value="���"
						onclick="window.open('pollView.jsp?num=<%=num%>', 'PollView', 'width=500, height=400')">
				</td>
			</tr>
		</table>
		<input type="hidden" name="num" value="<%=num %>">
	</form>

</body>
</html>