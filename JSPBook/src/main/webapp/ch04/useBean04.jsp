<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request"/>
	<p> 아이디 : <%= person.getId() %>
	<p> 이 름 : <%= person.getName() %>
	
	<%
		person.setId(2020011898);
		person.setName("홍길동");	
	%>
	
	<jsp:include page="useBean03.jsp"/>
	
	<jsp:setProperty name="person" property="id" value="18984346"/>
	<jsp:setProperty name="person" property="name" value="권혁민"/>
	
	<p> 아이디 : <%= person.getId() %>
	<p> 이 름 : <%= person.getName() %>


</body>
</html>