<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
	<title>Welcome</title>
</head>
<body>

<%! String greet = "Welcome to Book Shopping Mall";
	String introduce = "Kwon's first book market"; %>

	<style>
		.left {
		padding-left: 200px;
		}
	</style>

<div class="container py-4">
    <header class="pb-3 mb-4 border-bottom"> <%-- �� ����°� --%>
      <a href="./welcome.jsp" class="d-flex align-items-center text-dark text-decoration-none"> 
      
      <svg  width="32" height="32" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
  			<path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5Z"/>
  			<path d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6Z"/> 
		</svg>   <%-- ����� ������ --%>
		
        <span class="fs-4"> ������</span>
        
        </a>
        
</div>
        
<div style="padding-left:200;">	
       
       
      <p><h1 class="left"><%= greet %> </h1><p>
      <h4 class="left"><%= introduce %> </h4>
                    
</div> 
             
<div style="padding-top: 200px; font-size:20px;"> <center>Welcome to Web Market</center> </div>        

<div style="margin-top:100px;"


>
<header class="pb-3 mb-4 border-top">
<div style="padding-left:50px; margin-top:10px;"> &copy;JSP Exercise</div>



</div>

      
</body>
</html>