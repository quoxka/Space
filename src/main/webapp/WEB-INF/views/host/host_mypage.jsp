<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<!-- loginUserinfo 사용해서 값 불러오기만 하면 됨 -->
<body>
	<div class="content_wraper">
		<section class="content_member_wrap">
			<h2>프로필 관리</h2>
			<div class="profile_inner">
				<div class="profile_box">
					<div class="def_info">
						<strong>${loginHost.getHName() }</strong>
					</div>
					<div class="det_info" style="text-align: center;">
						<table>
							<tr>
								<th scope="row" class="">아이디</th>
								<td>${loginHost.getHId() }</td>
							</tr>
							<tr>
								<th scope="row" class="">이메일</th>
								<td>${loginHost.getHEmail() }</td>
							</tr>
							<tr>
								<th scope="row" class="">연락처</th>
								<td>${loginHost.getHPhone() }</td>
							</tr>
						</table>
					</div>
					<div class="out_box">
						<a href="${pageContext.request.contextPath }/host/modify">호스트 정보 변경하기</a>
						<button type="button" onclick="location.href='${pageContext.request.contextPath}/host/remove'">서비스 탈퇴하기</button>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>