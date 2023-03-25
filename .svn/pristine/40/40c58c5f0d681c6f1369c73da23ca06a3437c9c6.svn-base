<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">      
<html>
<head>
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
<h3>공지사항 등록</h3>
<br>
<br>
<div>
	<form class="row gx-3 gy-2 align-items-center" name="f" method="post" enctype="multipart/form-data">
		<input type="hidden" name="nhid" value="관리자">
		<table class="table table-bordered">
			<tr>
				<th>공지 대상</th>
				<td>
					<select name="nmstatus" style="width: 120px; height: 30px; border-radius: 5px; text-align: center;">
						<option value="1" <c:if test="${ notice.nmstatus==1}"> selected</c:if> >사용자</option>
						<option value="0" <c:if test="${ notice.nmstatus==0}"> selected</c:if> >호스트</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="ntitle" id="ntitle" style="width: 1150px;">
				</td>
			</tr>
			<tr>
				<th>첨부이미지</th>
				<td>
					<input type="file" name="uploadFile" id="nimg">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea rows="18" cols="131" name="ncontent" id="ncontent"></textarea>
				</td>
			</tr>
		</table>	
	</form>
	<div style="text-align: center;">
	<br>
		<p><button onclick="noticeAdd();" type="button" id="writeBtn" class="btn btn-primary btn-sm">게시글등록</button>
		<button type="button" id="resetBtn" class="btn btn-primary btn-sm" onclick="reset();">다시작성</button>
		<button type="button" id="listBtn" class="btn btn-primary btn-sm" onclick="location.href='${pageContext.request.contextPath }/admin/notice?nmstatus=2&nstatus=2';">게시글목록</button></p>
	</div>
	</div>
	</div>
</body>
<script type="text/javascript">
function noticeAdd() {
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
	f.action = "<c:url value="/admin/upload"/>"
	f.submit();
}

function reset() {
	document.getElementById("ncontent").value = "";
	document.getElementById("ntitle").value = "";
}

</script>
</html>
