<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="pMgr" class="poll.PollMgr"/>
<%
	request.setCharacterEncoding("EUC-KR");
	int num = Integer.parseInt(request.getParameter("num"));
	String[] itemnum = request.getParameterValues("itemnum");
	boolean flag = pMgr.updatePoll(num, itemnum);
	String msg = "��ǥ�� ��ϵ��� �ʾҽ��ϴ�.";
	if(flag) {
		msg = "��ǥ�� ���������� ��ϵǾ����ϴ�.";
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	alert("<%=msg%>");
	location.href="pollList.jsp?num=<%=num%>";
</script>
</head>
<body>

</body>
</html>