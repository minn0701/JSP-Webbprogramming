<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<form name = "fileForm" method = "post" enctype = "multipart/form-data"
action = "fileupload01_process.jsp">
<p> o| 름 : <input type = "text" name = "name">
<p> 제 목 : <input type = "text" name = "subject">
<p> 파 일 : <input type = "file" name = "filename">
<p> <input type = "submit" value = "파일 을리기">
</form>

</body>
</html>