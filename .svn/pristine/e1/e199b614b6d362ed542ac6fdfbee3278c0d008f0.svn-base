<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'> 
<style type="text/css">
td {
	text-align: left;
}
body {
	font-family:'Nanum Gothic', sans-serif;
	font-size: 18px;
	letter-spacing: 0.1em;
}
</style>
<title>Space Moon</title>
</head>
<body>

<div class="content w-50" style="margin: 0 auto; position: relative; text-align: center;" >
<br>
<h3>공지사항</h3>
<br>
<br>
<div>
	<form class="row gx-3 gy-2 align-items-center">
		<table class="table table-bordered border-primary">
			<tr>
				<td style="font-weight: bold; background-color: #D6DCEC;">제목 : ${noticeview.ntitle }</td>
			</tr>
			<tr>
				<td style="line-height: 3; font-weight: 500;">
					<br>
					<div style="text-align: center;">
					<img src="${pageContext.request.contextPath}/images/notice/${noticeview.nimg}" style="align-items: center;">
					</div>
					<br>
					${noticeview.ncontent}									
				</td>
			</tr>
			<tr>
				<td>게시일자 :  ${fn:substring(noticeview.ndate,0,10) } </td>
			</tr>			
		</table>	
	</form>
	<div style="text-align: center;">
	<br>
		<p><button onclick="location.href='${pageContext.request.contextPath }/member_notice';" type="button" class="btn btn-primary">게시글목록</button></p>
	</div>
	</div>
	</div>
</body>
</html>