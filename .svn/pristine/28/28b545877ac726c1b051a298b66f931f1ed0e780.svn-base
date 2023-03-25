<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <link href="css/style.css" rel="stylesheet" type="text/css" />
<title>faq</title>
<style type="text/css">
.select-group {
    display: flex;
    justify-content: center;
   
}
.select {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 20px;
	padding: 5px 10px;
	border-radius: 5px;
	height: 50px;
	width: 500px;
}
.select.text-white {
	background-color: #704de4;
	color: white;
}
</style>
</head>
<body>
<!-- Start -->
<div class="container">
		<h1>공지사항</h1>

		<!-- notice 대상자 UI -->
			<div class="row mb-4">
				<div class="select-group">
					<div class="select text-white">
						<a href="${pageContext.request.contextPath }/member_notice?nmstatus=1&nstatus=1">USER</a>
					</div>
					<div class="select" style="background-color: #ebebeb;">
						<a href="${pageContext.request.contextPath }/host_notice?nmstatus=0&nstatus=1">HOST</a>
					</div>
				</div>
			</div>	
			<br>
		<!-- 검색어 입력-->
		<div class="col-12" style="display:flex; justify-content:center; position: relative; left: 300px;">
		    <div class="row align-items-center">
		        <div class="col-lg-9 col-md-7" style="width: 450px">
		            <div class="subcribe-form">
		                <form>
		                    <div class="form-group mb-0">
		                        <input name="name" id="name" type="text" class="rounded-lg shadow" style="opacity: 0.8;" placeholder="검색어를 입력해주세요">
		                        <button type="submit" class="btn btn-pills btn-primary" style="top: 2px;">Search 🔍</button>
		                    </div>
		                </form>
		            </div>
		        </div><!--end col-->
		    </div><!--end row-->
		</div><!--end col-->
<!-- 검색어 End -->
</div>

     	<!-- noticeList -->
		<div id="membernoticeList" class="membernoticeList"></div> 
		<div id="pageNumDiv"></div>        

<script type="text/javascript">
var page=1;
noticeListDisplay(page);

function noticeListDisplay(pageNum) {
	page=pageNum;
	$.ajax({
		type: "get",
		url: "${pageContext.request.contextPath}/member_noticeList?pageNum="+pageNum+"&nmstatus="+${nmstatus}+"&nstatus="+${nstatus},
		dataType: "json",
		success: function (result) {
			var html=" <section class='section'>";
			html+="<div class='container' style='width: 1100px;'>";
			$(result.noticeList).each(function () {
				if(this.nmstatus==1){
			html+="<div class='card event-schedule rounded border-0 shadow' style='height: 70px'>";
			html+="<div class='card-body' >";
			html+="<div class='media' style='display: table;'>";
			html+="<ul class='date text-center text-primary mr-3 mb-0 list-unstyled'>";
			html+=" <li class='day shadow h6 font-weight-bold mb-2' style='height: 40px; line-height: 40px'>[공지]</li>";
			html+="</ul>";
			html+="<div class='media-body content' style='display: table-cell; vertical-align: middle;'>";
			html+="<h5><a href='${pageContext.request.contextPath}/member_notice/view?nno="+this.nno+"' class='text-dark title' style='font-size: 18px'>"+this.ntitle+"</a></h5>";
			html+="</div>";
			html+="</div>";
			html+="</div>";
			html+="</div>";
				}
			});
			html+="</div>";
			html+="</section>";
				$("#membernoticeList").html(html);
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
	html+="<a href='javascript:noticeListDisplay("+pager.prevPage+")'>[이전]</a>";
}
for(i=pager.startPage;i<=pager.endPage;i++) {
	if(pager.pageNum!=i) {
		html+="<a href='javascript:noticeListDisplay("+i+")'>[ "+i+" ]</a>";
	} else {
		html+="[ "+i+" ] ";
	}
}
if(pager.endPage != pager.totalPage) {
	html+="<a href='javascript:noticeListDisplay("+pager.nextPage+")'>[다음]</a>";
}
$("#pageNumDiv").html(html);
}

            
            
</script>            
            <!-- contact 정보 start -->
            <div class="container mt-100 mt-60">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="media feature">
                            <div class="icons m-0 rounded-md h2 text-primary text-center px-3">
                                <i class="uil uil-phone"></i>
                            </div>
                            <div class="content ml-4">
                                <h5>대표전화</h5>
                                <p class="text-muted">도움이 필요하시면 언제든지 연락주세요.</p>
                                <a href="tel:+152534-468-854" class="text-primary">0507-1401-8061</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-12 mt-5 mt-sm-0">
                        <div class="media feature">
                            <div class="icons m-0 rounded-md h2 text-primary text-center px-3">
                                <i class="uil uil-envelope"></i>
                            </div>
                            <div class="content ml-4">
                                <h5>이메일</h5>
                                <p class="text-muted">전화가 어렵다면 이메일로 연락주세요.</p>
                                <a href="mailto:contact@example.com" class="text-primary"> space@itwill.com</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-12 mt-5 mt-lg-0">
                        <div class="media feature">
                            <div class="icons m-0 rounded-md h2 text-primary text-center px-3">
                                <i class="uil uil-map-marker"></i>
                            </div>
                            <div class="content ml-4">
                                <h5>영업소재지</h5>
                                <p class="text-muted mb-0">서울특별시 강남구 테헤란로 124 4층</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <br>
</body>
</html> 
<!--contact 정보 end-->