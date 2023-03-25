<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
td {
	text-align: left;
}
</style>
<title>Space Moon</title>
</head>
<body>

<div class="content" style="width: 1300px; margin: 0 auto; position: relative; text-align: center;" >
<br>
<h3>공지사항</h3>
<br>
<br>
<div>
	<form class="row gx-3 gy-2 align-items-center">
		<table class="table table-bordered">
			<tr>
				<th>제목</th>
				<td style="font-weight: bold;">${noticeview.ntitle}</td>
			</tr>
			<tr>
				<th style="width: 150px">공지 대상</th>
				<c:if test="${noticeview.nmstatus==1 }"><td>사용자</td></c:if>
				<c:if test="${noticeview.nmstatus==0 }"><td>호스트</td></c:if>
			</tr>

			<tr>
				<th>첨부이미지</th>
				<td>
					<img src="${pageContext.request.contextPath}/images/notice/${noticeview.nimg}">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${noticeview.ncontent}</td>
			</tr>
			<tr>
				<th>작성일자</th>
				<td>${noticeview.ndate}</td>
			</tr>
			<tr>
				<th>게시글 상태</th>
				<c:if test="${noticeview.nstatus==1 }"><td>일반글</td></c:if>
				<c:if test="${noticeview.nstatus==0 }"><td>삭제글</td></c:if>
			</tr>			
		</table>	
	</form>
	<div style="text-align: center;">
	<br>
		<p><button onclick="location.href='${pageContext.request.contextPath }/admin/notice/modify?nno=${noticeview.nno }';" type="button" class="btn btn-primary btn-sm" >게시글변경</button>
		<button onclick="location.href='${pageContext.request.contextPath }/admin/notice?nmstatus=2&nstatus=2';" type="button" class="btn btn-primary btn-sm">게시글목록</button></p>
	</div>
	</div>
	</div>
</body>
</html>