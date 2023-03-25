<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<title>찜 리스트</title>
<style type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
.check {
	margin-right:20px;
	margin-top:30px;
	display: inline-block;
}
.check-group {
	display: flex;
	justify-content: flex-end;
	 margin-bottom: 30px;
}
.select-group {
    display: flex;
    justify-content: center;
   
}
.input-group {
	margin-top: 30px;
	width:1200px;
	text-align: center;
	margin-left: 60px;
}
.select {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 20px;
	padding: 5px 10px;
	border-radius: 5px;
	height: 50px;
	width: 600px;
}
.select.text-white {
	background-color: #704de4;
	color: white;
}
a span.hover:hover {
	color: white;
}
a span {
	color: white;
}
</style>
</head>
<body>
<div class="container w-75" style="margin: 0 auto;">
	<h1>찜 리스트</h1>
</div>

<div id="HeartListDiv" class="w-100" style="margin: 0 auto;"></div>

<div id="pageNumDiv"></div>

<script type="text/javascript">
	var page=1;
	heartListDisplay(page);
	
	function heartListDisplay(pageNum) {
		page=pageNum;
		$.ajax({
			type: "get",
			url: "${pageContext.request.contextPath}/heartList?pageNum="+pageNum,
			dataType: "json",
			success: function(result) {
				if(result.heartList.length==0) {
					var html="<table class='table'>";
					html+="<tr>";
					html+="<th colspan='6'>내가 가고 싶은 공간이 존재하지 않습니다.<br>가고 싶은 공간을 발견하면 하트로 찜해두세요:)</th>";
					html+="</tr>";
					html+="</table>";
					$("heartListDiv").html(html);
					return;
				}
				var html="<div class='row'>";
				html+="<div class='col-md-4'>";
				html+="<div class='card mb-4'>";
				$(result.heartList).each(function() {
					html+="<div class='card-header'>";
					html+="<img src='#'>";
					html+="</div>";
					html+="<div class='card-body'>";
					html+="<h5 class='card-title'>"+this.sname+"</h5>";
					html+="<p class='card-text'>"+this.stag+"</p>";
					html+="<p class='card-text'>"+this.sprice+"</p>";
					html+="</div>";
				});
				html+="</div>";
				html+="</div>";
				html+="</div>";
				
				$("#heartListDiv").html(html);
				
				pageNumDisplay(result.pager)
			},
			error: function(xhr) {
				alert("에러코드(게시글 목록 검색) = "+xhr.status)
			}
		});
	}
	
	function pageNumDisplay(pager) {
		var html="";
		
		if(pager.startPage > pager.blockSize) {
			html+="<a href='javascript:heartListDisplay("+pager.prevPage+")'>[이전]</a>";
		}
		for(i=pager.startPage;i<=pager.endPage;i++) {
			if(pager.pageNum!=i) {
				html+="<a href='javascript:heartListDisplay("+i+")'>[ "+i+" ]</a>";
			} else {
				html+="[ "+i+" ] ";
			}
		}
		if(pager.endPage != pager.totalPage) {
			html+="<a href='javascript:heartListDisplay("+pager.nextPage+")'>[다음]</a>";
		}
		$("#pageNumDiv").html(html);
	}
	
</script>



</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</html>