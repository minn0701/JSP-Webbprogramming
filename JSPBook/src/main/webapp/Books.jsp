<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="dto.Book" %>
<%@ page import = "dao.BookRepository" %>
<jsp:useBean id ="bookDAO" class="dao.BookRepository" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
 <link rel="stylesheet" href="./resources/css/bootstrap.min.css" />   
<title>도서 목록</title>
</head>
<body>
<div class="container py-4">
		<%@ include file="menu.jsp" %>   
		
		
		
     <%!String greeting ="도서 쇼핑몰에 오신것을 환영합니다";
	String tagline = "Welcome to Web Market!";%>
    <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold"><%=greeting%></h1>
        <h4>권 혁 민</h4>
        <p class="col-md-8 fs-4">BookMarket</p>      
      </div>
    </div>
    
    
    <div class="p-5 mb-4 bg-body-tertiary rounded-3" >
    	<div class="container-fluid py-5">
    	<div>
    	
    	<h1 class="dispaly-5 fw-bold"> 도서목록 </h1>
    	<p class="col-mid-8 fs-4"> BookList</p>
    	
    	</div>    
    	</div>
    </div>
    
    <%
		BookRepository dao = BookRepository.getInstance();
		ArrayList<Book> listOfBooks = dao.getAllBooks();
	%>   
	   
	 <div class="row align-items-md-stretch   text-center">	 	
	 <%
		for (int i = 0; i < listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
	  %>
     	<div class="col-md-4">
       		<div class="h-100 p-2">		
       			<img src ="./resources/images/<%=book.getFilename()%>" style ="width : 250; height : 350" />
				<h5><b><%=book.getName()%></b></h5>
				<p><%=book.getAuthor()%>
				<br> <%=book.getPublisher()%> | <%=book.getUnitPrice()%>원
				<p> <%=book.getDescription()%>...
				<p><%=book.getUnitPrice()%>원
				<p><a href="./book.jsp?id=<%=book.getBookId()%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
			</div>	
		</div>			
		<%
			}
		%>	
		</div>	
        
  
    
    
    
    <div class="row align-items-md-stretch   text-center">
      <div class="col-md-12">
        <div class="h-100 p-5">
          <h3><%=tagline%></h3>   
              
          
        <%@ include file="clock.jsp" %>
        
        
        </div>
      </div>   
    </div> 
    
    <%@ include file="footer.jsp" %>
    
    <a href="addBook.jsp" class="btn btn-secondary" role="button">도서 등록하기</a>
    
  </div>
</body>
</html>