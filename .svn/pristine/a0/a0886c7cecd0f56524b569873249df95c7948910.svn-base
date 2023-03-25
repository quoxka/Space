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
<h3>공지사항 변경</h3>
<br>
<br>
<div>
	<form class="row gx-3 gy-2 align-items-center" name="f" method="post">
	<input type="hidden" name="nno" value="${noticeinfo.nno }">
		<table class="table table-bordered">
			<tr>
				<th>공지 대상</th>
				<td>
					<select name="nmstatus" style="width: 120px; height: 30px; border-radius: 5px; text-align: center;">
						<c:if test="${noticeinfo.nmstatus==1 }">
							<option value="1" selected="selected">사용자</option>
							<option value="0" >호스트</option>
						</c:if>
						<c:if test="${noticeinfo.nmstatus==0 }">
							<option value="1" >사용자</option>
							<option value="0" selected="selected">호스트</option>
						</c:if>
						
					</select>
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="ntitle" id="ntitle" style="width: 1150px;" value="${noticeinfo.ntitle }">
				</td>
			</tr>
			<tr>
				<th>첨부이미지</th>
				<td>
					<input type="file" name="nimg" id="nimg" value="${noticeinfo.nimg }">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea rows="18" cols="131" id="ncontent" name="ncontent">${noticeinfo.ncontent }</textarea>
				</td>
			</tr>
			
			<tr>
				<th>게시글 상태</th>
				<td>
				<select class="nstatus" name="nstatus" style="width: 120px; height: 30px; border-radius: 5px; text-align: center;">
					<c:if test="${noticeinfo.nstatus==1 }">
						<option value="1" selected="selected">일반글</option>
						<option value="0">삭제글</option>
					</c:if>
					<c:if test="${noticeinfo.nstatus==0 }">
						<option value="1">일반글</option>
						<option value="0" selected="selected">삭제글</option>
					</c:if>
				</select>
				</td>
			</tr>
		</table>	
	</form>
	<div style="text-align: center;">
	<br>
		<p><button onclick="noticeModify();" type="button" id="modify" class="btn btn-primary btn-sm">게시글변경</button>
		<button type="button" id="reset" class="btn btn-primary btn-sm" onclick="reset();">다시작성</button></p>
	</div>
	</div>
	</div>
</body>
<script type="text/javascript">
function reset() {
	document.getElementById("ncontent").value = "";
	document.getElementById("ntitle").value = "";
}


function noticeModify() {
	if ( f.ntitle.value == "" ) {
		alert("제목을 입력해주세요.");
		f.ntitle.focus();
		return;
	} 
	if ( f.ncontent.value == "" ) {
		alert("내용을 입력해주세요.");
		f.ncontent.focus();
		return;
	}
	
	f.action = "<c:url value="/admin/notice/modify"/>";
	f.submit();
}
</script>
</html>