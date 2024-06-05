<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ page import="dto.Book" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session"/>
<link rel = "stylesheet" href ="./resources/css/bootstrap.min.css" />


<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<meta charset="EUC-KR">
<title>��������</title>
</head>
<body>

<div class="container py-4">
		<%@ include file="menu.jsp" %>   	
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
      	<div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">���� ����</h1>
        <p class="col-md-8 fs-4">Book Info</p>      
      	</div>
    </div>		
</div>		

<% 
	String id = request.getParameter("id");
	Book book = bookDAO.getBookById(id);
%>
 
<div class="row align-items-md-stretch" style="padding-left :20%; padding-right :30%;">
    	<div class="col-md-12" >
    		<div class = "col-md-5">
    		<img src ="./resources/images/<%=book.getFilename()%>" style ="width : 100%">
		</div>
    	
    		<h3><b><%=book.getName()%> </b></h3> 
    		<p><%=book.getDescription() %>
    		<p> <b>�����ڵ�:</b> <span class="badge text-bg-danger"><%=book.getBookId() %> </span>
    		<p> <b>����</b> : <%=book.getAuthor() %>
    		<p> <b>���ǻ�</b> : <%=book.getPublisher() %>
    		<p> <b>������</b> : <%=book.getReleaseDate() %>
    		<p> <b>�з�</b> : <%=book.getCategory() %>
    		<p> <b>����</b> : <%=book.getUnitsInStock() %>
    		<h4><%= book.getUnitPrice()%>�� </h4>
    		<a href="./books.jsp" class="btn btn-secondary"> ���� ��� &raquo;</a>
    		<a href="./books.jsp" class="btn btn-secondary"> å ���� &raquo;</a>

		</div>
	</div>


</body>
</html>