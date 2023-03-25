<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SPRING</title>
<style type="text/css">
body {
	text-align: center;
	margin:30px; 
}
.message {
	color: red;
	font-size: 1.5em;
	font-weight: bold;
}
</style>
</head>
<body>

<div class="w-75" style="margin: 0 auto;">
	<br>
	<br>	

	<h1>에러페이지</h1>
	<br>
		<div class="message">프로그램 실행에 예기치 못한 오류가 발생 하였거나 비정상적 방법으로
		프로그램을 요청하여 오류가 발생 하였습니다.</div>
	<br>	
	<br>	
	<br>	
	<br>	
	<div><button type="button" class="btn btn-primary btn-lg" onclick="location.href='${pageContext.request.contextPath }/';">Back to Home</button></div>
	<br>
	<br>
</div>     
</body>
</html>