<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="Calculator" class="ch04.com.dao.Calculator"/>

<%

	int m= Calculator.process(5);
	out.print("5�� 3���� : " + m);

%>

</body>
</html>