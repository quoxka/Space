<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>판매후기 답변</title>
</head>
<body>
    <h1>판매후기 답변</h1>
    <form method="post" action="/seller/review/${review.id}/reply">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <div>
            <label for="replyContent">답변 내용</label>
            <textarea id="replyContent" name="replyContent" required></textarea>
        </div>
        <button type="submit">답변 완료</button>
    </form>
</body>
</html>