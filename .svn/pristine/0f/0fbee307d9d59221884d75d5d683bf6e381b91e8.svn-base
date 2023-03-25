<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SPACE</title>
</head>
<style type="text/css">
#loginForm{
	border: 1px solid #706FFF;
	width: 40%;
	padding: 20px;
	border-radius: 15px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
}
</style>
<body>
<div class="d-flex justify-content-center align-items-center" style= "height: 100vh">
	<form id="loginForm" class="form" action="${pageContext.request.contextPath }/host/login/host" method="post">
		<h1 style="text-align: center; font-size: 1.5em; font-weight:900; color: #706FFF;">호스트 로그인</h1>
		<input id="id" name="hId" value="${hId}" class="form-control mb-3 text-center" type="text" placeholder="아이디를 입력하세요" aria-label="default input example">
		<input id="passwd" name="hPw" class="form-control  mb-5 text-center" type="password" placeholder="비밀번호를 입력하세요" aria-label="default input example"> 
		<div class="d-flex justify-content-around align-items-center ">
			<button type="button" id="login_btn" class="btn btn-outline-secondary w-25">로그인</button>
			<button type="button" id="join_btn" class="btn btn-outline-secondary w-25">회원가입</button>
			<button type="button" class="btn btn-outline-secondary w-25" style="font-size:0.7em;">아이디/비밀번호찾기</button>
		</div>  
		<div id="message"class="mt-5 mb-0 text-danger">${message }</div>
	</form>
</div>


<script type="text/javascript">
$("#id").focus();

$("#login_btn").click(function() {
	if($("#id").val()=="") {
		$("#id").focus();
		return;
	}	
	if($("#passwd").val()=="") {
		$("#passwd").focus();
		return;
	}	
	$("#loginForm").submit();
});

$("#join_btn").click(function() {
	location.href="${pageContext.request.contextPath }/host/join/host";
});
</script>

</body>
</html>
