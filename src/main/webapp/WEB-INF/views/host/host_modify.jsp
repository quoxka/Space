<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>>SPACE</title>        
<style>
.form {
	display : block;
	width: 500px;
	margin: 0 auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
}

label {
	display: flex;
	justify-content:space-between;
	font-weight: bold;
}
label>p {
	display: inline-block;
}

.join {
	width: 300px;
	height: 40px;
	padding: 10px;
	margin-bottom: 20px;
	border-radius: 5px;
	border: 1px solid #ccc;
}

.mobile {
	width: 80px;
}
#joinBtn {
	background-color: #35404E;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.msg{
	color: red;
	font-size: 0.8em;
	display: none;
}
</style>
<script type="text/javascript">
function hostModify() {
	if(f.hName.value == "" ) {
		alert("이름을 입력하십시오.");
		f.hName.focus();
		return false;
	}
	f.action = "<c:url value="/host/modify"/>";
	f.submit();
}
</script>
</head>
<body>
<form id="modifyBtn" name="f" class="form" method="post">
	<h3 class="mb-5" style="text-align: center; font-size: 10px; font-weight:900; color: #706FFF;">호스트 회원정보 수정</h3>
	<label for="id">
		<p>아이디</p>
		<span>${loginHost.HId}</span>
	</label>
	
	<label for="password">
		<p>비밀번호</p>	
		<input class="join" type="password" id="passwd" name="hPw">
		<span style="color: red;">** 비밀번호를 변경하지 않을 경우 입력하지 마세요. **</span>
	</label>
	<div class="mb-5">
		<span id="passwdValidMsg" class="msg">비밀번호는 영문자,숫자,특수문자가 반드시 하나이상 포함된 6~20 범위의 문자로만 작성 가능합니다.</span>
	</div>	
	<label for="confirm-password">
		<p>비밀번호확인</p>	
		<input class="join" type="password" id="rePasswd" name="rePasswd">
	</label>
	<div class="mb-5">
		<span id="repasswdMatchMsg" class="msg">비밀번호와 비밀번호확인이 서로 맞지 않습니다.</span>
	</div>	
	
	<label for="name">
		<p>이름</p>	
		<input class="join" type="text" id="name" name="hName" value="${loginHost.HName}">
	</label>
	<div class="mb-5">
		<span id="nameValidMsg" class="msg">이름을 형식에 맞게 입력해 주세요.</span>
	</div>
	
	<label for="email">
		<p>이메일</p>	
		<input class="join" type="email" id="email" name="hEmail" value="${loginHost.HEmail}">
	</label>
	<div class="mb-5">
		<span id="emailValidMsg" class="msg">이메일을 형식에 맞게 입력해 주세요.</span>
	</div>	
	<label for="phone">
		<p>휴대폰 번호</p>	
		<input class="join" type="text" id="phone" name="hPhone" value="${loginHost.HPhone}">
	</label>
	<div class="mb-5">
		<span id="phoneValidMsg" class="msg">휴대폰 번호는 01로 시작하며, 3~4 자리의 숫자로만 입력 가능합니다.</span>	
	</div>	
	
	<hr>
	
	<label for="CeoName">
		<p>상호명</p>	
		<input class="join" type="text" name="hSpacename" value="${loginHost.HSpacename}">
	</label>
	<label for="CeoName">
		<p>대표자명</p>	
		<input class="join" type="text" name="hCeoname" value="${loginHost.HCeoname}">
	</label>
	<label for="CeoName">
		<p>사업자 등록 번호</p>	
		<input class="join" type="text" name="hNum" value="${loginHost.HNum}">
	</label>
	<label for="CeoName">
		<p>계좌번호</p>	
		<input class="join" type="text" name="hAccount" value="${loginHost.HAccount}">
	</label>
	<label for="CeoName">
		<p>은행명</p>	
		<input class="join" type="text" name="hBank" value="${loginHost.HBank}">
	</label>
	<label for="CeoName">
		<p>예금주</p>	
		<input class="join" type="text" name="hAccountname" value="${loginHost.HAccountname}">
	</label>
	<button type="submit" id="modifyBtn" onclick="hostModify();">수정</button>
</form>


<script type="text/javascript">
	$("#id").focus();
	var submitResult;
	
	$("#modifyBtn").submit(function() {
		
		submitResult=true;
		$(".msg").css("display","none");

		var passwdReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
		if(!passwdReg.test($("#passwd").val())) {//입력값이 형식에 맞지 않는 경우
			$("#passwdValidMsg").css("display","block");
			submitResult=false;
		} 
		
		if($("#passwd").val()!=$("#rePasswd").val()) {//repasswd입력값과 passwd입력값이 다른 경우
			$("#repasswdMatchMsg").css("display","block");
			submitResult=false;
		}
		
		
		var nameReg=/^[가-힣]{2,10}$/g;
		if(!nameReg.test($("#name").val())) {//입력값이 형식에 맞지 않는 경우
			$("#nameValidMsg").css("display","block");
			submitResult=false;
		} 
		
		var emailReg=/^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+(\.[-a-zA-Z0-9]+)+)*$/g;
		if(!emailReg.test($("#email").val())) {//입력값이 형식에 맞지 않는 경우
			$("#emailValidMsg").css("display","block");
			submitResult=false;
		}

		var phoneReg=/01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;
		if(!phoneReg.test($("#phone").val())) {//입력값이 형식에 맞지 않는 경우
			$("#phoneValidMsg").css("display","block");
			submitResult=false;
		}		
		
		//입력값 검사 더 필요 
		
		return submitResult;
		
	});
	
	
</script>
</body>
</html> 
    