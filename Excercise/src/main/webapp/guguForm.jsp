<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.container{
	width:300px;
	padding :16px;
	margin: 0 auto;
	background-color : #CEE3F6;
	border-radius:8px;
	}
	
	#btn{
	background-color: pink;
	color:white;
	border:none;
	}
	
</style>
</head>
<body>
<form action="guguPrt.jsp" method = "get" name ="guguPrt" class="container">
		<p>출력할 구구단의 수를 지정해 주세요.</p>
		<label class="input" for="num">출력할 구구단 : </label>
		<input type="text" name="dan" id="input"><br>
		<button type="submit" id="btn">전송</button>
		<!-- <input type="submit"  value="전송"/>  -->
</form>
</body>
</html>