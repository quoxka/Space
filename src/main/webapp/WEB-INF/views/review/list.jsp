<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>구매후기 목록</title>
</head>
<body>
    <h1>구매후기 목록</h1>
    <table>
        <thead>
            <tr>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>답변여부</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${reviews}" var="review">
                <tr>
                    <td>${review.title}</td>
                    <td>${review.writer}</td>
                    <td>${review.createDate}</td>
					<td>${review.replyContent == null ? "미답변" : "답변완료"}</td>
					<td><a href="${review.replyContent == null ? '/seller/review/' + review.id + '/reply' : '#'}">답변하기</a></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
		<p><a href="/review/write">구매후기 작성하기</a></p>

</body>
</html>