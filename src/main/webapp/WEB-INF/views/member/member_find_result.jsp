<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="${pageContext.request.contextPath}member_find_end" method="post">
		<h1>회원 정보</h1>
		 <p id="mId">id = ${mId}</p>
 	     <p id="mPw">password = ${mPw}</p>
 	     
		  <input type="hidden" name="mId" value="${mId}" />
		  <input type="hidden" name="mPw" value="${mPw}" />
		  <input type="hidden" name="mStatus" value="${mStatus}" />
  <button type="submit">확인</button>
		</form>
	
</body>
</html>