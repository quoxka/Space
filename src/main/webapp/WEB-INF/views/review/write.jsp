<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>구매후기 작성</title>
</head>
<body>
    <h1>구매후기 작성</h1>
    <form method="post" action="/review/write">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <div>
            <label for="title">제목</label>
            <input type="text" id="title" name="title" required />
        </div>
        <div>
            <label for="content">내용</label>
            <textarea id="content" name="content" required></textarea>
        </div>
        <button type="submit">작성 완료</button>
    </form>
</body>
</html>