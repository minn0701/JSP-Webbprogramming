<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 테이블 입니다</title>
</head>
<body>
<%
	int dan = Integer.parseInt(request.getParameter("dan"));
		
	%>
	<table border="1px solid" width="200" >
		<tr align="center" ><td colspan="2" style="background-color:pink;" ><%=dan %>단 출력</td></tr>
	<%
		for(int i=1; i<10; i++){
	%>
		<tr align="center"><td width="100"><%=dan %>*<%=i %></td><td><%=dan*i %></td></tr>
	<%}
	%>
	</table>
</body>
</html>