<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="pMgr" class="poll.PollMgr"></jsp:useBean>
<jsp:useBean id="plBean" class="poll.PollListBean"/>
<jsp:setProperty property="*" name="plBean"/>
<jsp:useBean id="piBean" class="poll.PollItemBean"/>
<jsp:setProperty property="*" name="piBean"/>
<%
	String sdate = request.getParameter("sdateY") + "-" + request.getParameter("sdateM") 
		+ "-" + request.getParameter("sdateD");
	String edate = request.getParameter("edateY") + "-" + request.getParameter("edateM") 
		+ "-" + request.getParameter("edateD");
	plBean.setSdate(sdate);
	plBean.setEdate(edate);
	boolean flag = pMgr.insertPoll(plBean, piBean);
	String msg = "���� �߰��� ���� �Ͽ����ϴ�";
	String url = "pollInsert.jsp";
	if(flag) {
		msg = "������ �߰� �Ǿ����ϴ�";
		url = "pollList.jsp";
	}	
%>
<script type="text/javascript">
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>