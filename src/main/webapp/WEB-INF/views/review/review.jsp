<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Product Reviews</title>
</head>
<body>
    <h1>Product Reviews</h1>
    <ul>
        <#list reviews as review>
            <li>
                <strong>${review.author}:</strong>
                ${review.content}<br/>
                <em>${review.createdDate?string("dd/MM/yyyy HH:mm:ss")}</em><br/>
                <#if review.sellerResponse??>
                    <strong>Seller:</strong>
                    ${review.sellerResponse}
                </#if>
                <#if currentUser == "seller">
                    <br/>
                    <a href="/product/${review.productId}/reviews/${review.id}/respond">Respond</a>
                </#if>
            </li>
        </#list>
    </ul>
    <#if currentUser == "buyer">
        <a href="/product/${reviews[0].productId}/reviews/new">Write a review</a>
    </#if>
</body>
</html>
