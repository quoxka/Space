<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Space Moon</title>
<style type="text/css">
table {
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<div class="content_wraper">
		<section class="content_member_wrap">
			<h2>프로필 관리</h2>
			<div class="profile_inner">
				<div class="profile_box">
					<div class="def_info">
						<strong>${loginMember.getMName() }</strong>
						<!-- <strong>${member.mName }</strong> -->
					</div>
					<div class="det_info" style="text-align: center;">
						<table>
							<tr>
								<th scope="row" class="">아이디</th>
								<td>${loginMember.getMId() }</td>
							</tr>
							<tr>
								<th scope="row" class="">이메일</th>
								<td>${loginMember.getMEmail() }</td>
							</tr>
							<tr>
								<th scope="row" class="">연락처</th>
								<td>${loginMember.getMPhone() }</td>
							</tr>
						</table>
					</div>
					<div class="out_box">
						<a href="${pageContext.request.contextPath }/member_modify">호스트 정보 변경하기</a>
						<button type="button" onclick="location.href='${pageContext.request.contextPath}/member_remove'">서비스 탈퇴하기</button>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>