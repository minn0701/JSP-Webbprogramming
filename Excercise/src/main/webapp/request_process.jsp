<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>implicit Object</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8");
	   String userid = request.getParameter("id");
	   String password = request.getParameter("passwd");
	%>

	<p> 아 이 디 : <%=userid %>
	<p> 비밀번호 : <%=password %>

</body>
</html>