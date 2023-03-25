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
<div class="w-75" style="margin: 0 auto;">
<div class="container">
		<h1>FAQ</h1>

		<!-- faq 대상자 UI -->
			<div class="row mb-4">
				<div class="select-group">
					<div class="select text-white" >
						<a href="${pageContext.request.contextPath }/member_faq?fmstatus=1&fstatus=1">USER</a>
					</div>	
					<div class="select" style="background-color: #ebebeb;">
						<a href="${pageContext.request.contextPath }/host_faq?fmstatus=0&fstatus=1">HOST</a>
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

<!-- faq start -->
<div class="memberfaqlist" id="memberfaqlist"></div>
<div class="hostfaqlist" id="hostfaqlist"></div>
<div id="pageNumDiv"></div>
</div>


<script type="text/javascript">
var page=1;
faqListDisplay(page);

function faqListDisplay(pageNum) {
	page=pageNum;
	$.ajax({
		type: "get",
		url: "${pageContext.request.contextPath}/member_faqList?pageNum="+pageNum+"&fmstatus="+${fmstatus}+"&fstatus="+${fstatus},
		dataType: "json",
		success: function (result) {
			var html="<section class='section'>";
			html+=" <div class='container'>";
			html+="<div class='row justify-content-center'>";
			html+="<div class='col-lg-9 col-12'>";
			html+="<div class='faq-content'>";
			html+="<div class='accordion' id='accordionExample2' style='text-align: left;'>";
			
			$(result.faqList).each(function() {
				if(this.fmstatus==1){
			html+="<div class='card border rounded mb-2'>";
			html+="<a data-toggle='collapse' href='#a"+this.fno+"' class='faq position-relative collapsed' aria-expanded='false' aria-controls='a"+this.fno+"'>";
			html+="<div class='card-header border-0 bg-light p-3 pr-5' id=\""+this.fcontent+"\">";
			html+="<div class='media'>";
			html+="<h6 class='title mb-0'> "+this.ftitle+"</h6>";
			html+="</div>";
			html+="</div>";
			html+="</a>";
			html+="<div id='a"+this.fno+"' class='collapse' aria-labelledby=\""+this.fcontent+"\" data-parent='#accordionExample2'>";
			html+="<div class='card-body'>";
			html+="<p class='text-muted mb-0 faq-ans'>"+this.fcontent+"</p>";
			html+="</div>";
			html+="</div>";
			html+="</div>";	
				}
			});
			html+="</div>";
			html+="</div>";
			html+="</div>";
			html+="</div>";
			html+="</div>";
			html+="</section>";
				$("#memberfaqlist").html(html);
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
		html+="<a href='javascript:faqListDisplay("+pager.prevPage+")'>[이전]</a>";
	}
	for(i=pager.startPage;i<=pager.endPage;i++) {
		if(pager.pageNum!=i) {
			html+="<a href='javascript:faqListDisplay("+i+")'>[ "+i+" ]</a>";
		} else {
			html+="[ "+i+" ] ";
		}
	}
	if(pager.endPage != pager.totalPage) {
		html+="<a href='javascript:faqListDisplay("+pager.nextPage+")'>[다음]</a>";
	}
	$("#pageNumDiv").html(html);
}


function memberfaqList() {
	$("#hostfaqlist").hide();
	$("#memberfaqlist").show();
}

function hostfaqList() {
	$("#hostfaqlist").show();
	$("#memberfaqlist").hide();
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
            <br>
</body>
</html> 



