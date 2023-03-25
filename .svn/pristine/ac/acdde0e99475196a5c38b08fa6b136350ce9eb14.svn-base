<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<title>내 공간정보 관리</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
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
.radio_select {
    padding: 15px 10px;
}
.radio_select input[type=radio]{
    display: none;
}
.radio_select input[type=radio]+label{
    display: inline-block;
    cursor: pointer;
    height: 24px;
    width: 90px;
    border: 1px solid #333;
    line-height: 24px;
    text-align: center;
    font-weight:bold;
    font-size:13px;
}
.radio_select input[type=radio]+label{
    background-color: #fff;
    color: #333;
}
.radio_select input[type=radio]:checked+label{
    background-color: #333;
    color: #fff;
}
.card-header img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

</style>
</head>
<body>
<div class="container w-75" style="margin: 0 auto;">
	<h1>내 공간정보 관리</h1>
	
	<form action='<c:url value="#"/>' method="post">
		<div class="row mb-4" style="display: block !important;" >
			<div class="select-group">
				<div class="select text-white">
					<a href="<c:url value="/sRegister/add"/>"><span class="hover">새 공간 등록하기</span></a>
				</div>	
			</div>
		</div>
			
			<div class="input-group w-75" style="margin: 0 auto; padding-bottom: 20px;">
				<input type="text" class="form-control" placeholder="공간 번호" name="keyword">
				<span class="input-group-btn">
					<button class="btn btn-primary" type="submit">검색</button>
				</span>
			</div>
	</form>
		<!-- 링크 설정 	
		<div class="check-group">
			<div class="check">
				<select class="form-control" name="sPstatus">
					<option value="4">전체</option>
					<option value="1">공개</option>
					<option value="2">비공개</option>
				</select>
			</div>
		</div>
	</form>
	-->
</div>
<!-- 호스트 페이지 : 공간정보 관리 목록 출력 -->
<!-- => 반복 처리 -->

<div id="mangageListDiv" class="w-100" style="margin: 0 auto;"></div>

<div id="pageNumDiv"></div>

<script type="text/javascript">

var page=1;
manageListDisplay(page);

function manageListDisplay(pageNum) {
	page=pageNum;
	$.ajax({
		type: "get",
		url: "${pageContext.request.contextPath}/sManage/manageList?pageNum="+pageNum,
		dataType: "json",
		success: function(result) {
			//삭제된 공간 검색되지 않도록 
			if(result.manageList.length==0 ){
				var html="<table class='table'>";
				html+="<tr>";
				html+="<th colspan='6'>검색된 공간이 없습니다.</th>";
				html+="</tr>";
				html+="</table>";
				$("mangageListDiv").html(html);
				return;
			}
			var html="<div class='row w-75' style='margin: 0 auto;'>";
			$(result.manageList).each(function() {
				if(this.spstatus==1 || this.spstatus==2)
				html+="<div class='col-md-4'>";
				html+="<div class='card mb-4'>";
				html+="<div class='card-header'>";
				html+="<img src='${pageContext.request.contextPath}/images/img1/"+this.simg+"'>";
				html+="</div>";
				html+="<div class='card-body'>";
				html+="<h5 class='card-title'>"+this.sname+"</h5>";
				html+="<p class='card-text'>"+this.sno+"</p>";
				html+="<p class='card-text'>"+this.sdate+"</p>";
				/*
				html+="<div class='radio_select'>";
				html+="<input type='radio' id='radio_select' name='1'><label for='radio_select1'>공개</label>>";
				html+="<input type='radio' id='radio_select2' name='2'><label for='radio_select2'>비공개</label>>";
				html+="</div>";
				*/
				html+="</div>";
				html+="<div class='card-header'>";
				
				html+="<a href='${pageContext.request.contextPath}/sManage/modify?sNo="+this.sno+"'>공간정보수정</a>";
				html+="<span>&nbsp;/&nbsp;</span>";
				html+="<a href='${pageContext.request.contextPath}/sManage/remove?sNo="+this.sno+"'>삭제</a>";
				
				html+="</div>";
			html+="</div>";
			html+="</div>";
			});
			html+="</div>";
			
			$("#mangageListDiv").html(html);
			
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
		html+="<a href='javascript:manageListDisplay("+pager.prevPage+")'>[이전]</a>";
	}
	for(i=pager.startPage;i<=pager.endPage;i++) {
		if(pager.pageNum!=i) {
			html+="<a href='javascript:manageListDisplay("+i+")'>[ "+i+" ]</a>";
		} else {
			html+="[ "+i+" ] ";
		}
	}
	if(pager.endPage != pager.totalPage) {
		html+="<a href='javascript:manageListDisplay("+pager.nextPage+")'>[다음]</a>";
	}
	$("#pageNumDiv").html(html);
}
</script>


</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</html>