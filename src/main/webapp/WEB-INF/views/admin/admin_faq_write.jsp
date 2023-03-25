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

<div class="content" style="width: 930px; margin: 0 auto; position: relative; text-align: center;" >
<br>
<h3>FAQ 등록</h3>
<br>
<br>
<div>
	<form class="row gx-3 gy-2 align-items-center" name="f" method="post">
		<input type="hidden" name="fHid" value="관리자">
		<table class="table table-bordered">
			<tr>
				<th>공지 대상</th>
				<td>
					<select name="fMstatus" style="width: 120px; height: 30px; border-radius: 5px; text-align: center;">
						<option value="1" <c:if test="${faq.fMstatus==1}">selected</c:if>>사용자</option>
						<option value="0" <c:if test="${faq.fMstatus==0}">selected</c:if>>호스트</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="fTitle" id="fTitle" style="width: 800px;">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea rows="5" cols="91" name="fContent" id="fContent"></textarea>
				</td>
			</tr>
		</table>	
	</form>
	<div style="text-align: center;">
	<br>
		<p><button onclick="faqAdd();" type="button" id="writeBtn" class="btn btn-primary btn-sm">게시글등록</button>
		<button type="button" id="resetBtn" class="btn btn-primary btn-sm"  onclick="reset();">다시작성</button></p>
	</div>
	</div>
	</div>
</body>
<script language="JavaScript">
function faqAdd() {
	if ( f.fTitle.value == "" ) {
		alert("제목을 입력해주세요.");
		f.fTitle.focus();
		return;
	} 
	if ( f.fContent.value == "" ) {
		alert("내용을 입력해주세요.");
		f.fContent.focus();
		return;
	}
	
	f.action = "<c:url value="/admin/faq/write"/>";
	f.submit();
}
function reset() {
	  document.getElementById("fContent").value = "";
	  document.getElementById("fTitle").value = "";
	}
</script>
</html>