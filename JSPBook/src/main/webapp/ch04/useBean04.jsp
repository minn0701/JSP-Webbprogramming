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
	<p> ���̵� : <%= person.getId() %>
	<p> �� �� : <%= person.getName() %>
	
	<%
		person.setId(2020011898);
		person.setName("ȫ�浿");	
	%>
	
	<jsp:include page="useBean03.jsp"/>
	
	<jsp:setProperty name="person" property="id" value="18984346"/>
	<jsp:setProperty name="person" property="name" value="������"/>
	
	<p> ���̵� : <%= person.getId() %>
	<p> �� �� : <%= person.getName() %>


</body>
</html>