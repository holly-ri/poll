<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="pMgr" class="poll.PollMgr"/>
<%
	request.setCharacterEncoding("EUC-KR");
	int num = Integer.parseInt(request.getParameter("num"));
	String[] itemnum = request.getParameterValues("itemnum");
	boolean flag = pMgr.updatePoll(num, itemnum);
	String msg = "투표가 등록되지 않았습니다.";
	if(flag) {
		msg = "투표가 정상적으로 등록되었습니다.";
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