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
		<h1>공지사항</h1>

		<!-- faq 대상자 UI -->
			<div class="row mb-4">
				<div class="select-group">
					<div class="select text-white">
						<a href="#">USER</a>
					</div>	
					<div class="select" style="background-color: #ebebeb;">
						<a href="#">HOST</a>
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

<!-- notice start -->
 <section class="section">
     <div class="container" style="width: 1100px;">
     		
     <!-- start row-->
         <div class="card event-schedule rounded border-0 shadow" style="height: 70px">
             <div class="card-body" >
                 <div class="media" style="display: table;">
                     <ul class="date text-center text-primary mr-3 mb-0 list-unstyled">
                         <li class="day shadow h6 font-weight-bold mb-2" style="height: 40px; line-height: 40px">1 </li>
                     </ul>
                     <div class="media-body content" style="display: table-cell; vertical-align: middle;">
                         <h5><a href="${pageContext.request.contextPath}/noticeview" class="text-dark title" style="font-size: 18px">[공지] 소셜로그인 회원 대상 예약 전 휴대폰번호 인증 절차가 추가됩니다. (2월 27일부터)</a></h5>
                     </div>
                 </div>
             </div>    
         </div>
     <!--end row-->
     
     <!-- start row-->
         <div class="card event-schedule rounded border-0 shadow" style="height: 70px">
             <div class="card-body" >
                 <div class="media" style="display: table;">
                     <ul class="date text-center text-primary mr-3 mb-0 list-unstyled">
                         <li class="day shadow h6 font-weight-bold mb-2" style="height: 40px; line-height: 40px">2 </li>
                     </ul>
                     <div class="media-body content" style="display: table-cell; vertical-align: middle;">
                         <h5><a href="javascript:void(0)" class="text-dark title" style="font-size: 18px">[공지] 스페이스클라우드 서비스 운영정책 개정 안내 </a></h5>
                     </div>
                 </div>
             </div>    
         </div>
     <!--end row-->
     
    <!-- start row-->
         <div class="card event-schedule rounded border-0 shadow" style="height: 70px">
             <div class="card-body" >
                 <div class="media" style="display: table;">
                     <ul class="date text-center text-primary mr-3 mb-0 list-unstyled">
                         <li class="day shadow h6 font-weight-bold mb-2" style="height: 40px; line-height: 40px">3 </li>
                     </ul>
                     <div class="media-body content" style="display: table-cell; vertical-align: middle;">
                         <h5><a href="javascript:void(0)" class="text-dark title" style="font-size: 18px">[공지] 개인정보 처리 방침이 변경되었습니다. </a></h5>
                     </div>
                 </div>
             </div>    
         </div>
     <!--end row-->
</div><!--end container-->
<!-- notice end --> 
</div>

<!-- paging -->
<br> 
<br> 
                <div class="row">
                    <div class="col-12">
                        <ul class="pagination justify-content-center mb-0">
                            <li class="page-item"><a class="page-link" href="javascript:void(0)" aria-label="Previous"> << </a></li>
                            <li class="page-item active"><a class="page-link" href="javascript:void(0)">1</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">2</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)" aria-label="Next"> >> </a></li>
                        </ul>
                    </div><!--end col-->
                </div>      
            
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
        </section> 
        <br>
</body>
</html> 
<!--contact 정보 end-->