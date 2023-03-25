<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
 	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
	 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <style type="text/css">
  
	  a{
	  text-decoration: none; /* 밑줄 없애기 */
	  color: inherit; /* 색깔 상속 */
	}
		.navbar-toggler {
	  color: #000000 !important;
	}
	.navbar {
	    width: 100%;
	    height: 80px; /* 헤더의 높이에 맞게 조정 */
	  }
	.service_menu {
    padding: 18px 0 20px;
    text-align: center;
    color: #949494;
    background: #f6f6f6;
    height: 200px;
    
}

	.bi{
	color:#6563ff; 
	font-size: 40px;
	 width: 50px;
	  height: 30px;
	
	}

  form.d-flex.justify-content-center {
    width: 600px;
    height: 100px;
  }
</style>
 
  </head>
 <body class="container-fluid ">
	  <!-- 왼쪽 상단 배너 -->
	  <nav class="navbar fixed-top">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="${pageContext.request.contextPath }" style="margin-left:180px;  color: #6563ff !important; font-size: 30px;">Space Moon</a>
	    
	   <!-- 검색 박스 -->
		<form class="d-flex justify-content-center" method="get" action="${pageContext.request.contextPath }/filter">
	  <input class="form-control me-2" type="search" name="search_query" placeholder="지역,공간유형,공간명" style="margin-top: 30px; background-color: #f6f6f6">
	  <button class="btn btn-outline-success" type="submit"><i class="bi bi-search"></i></button>
	</form>
	
	  
    <!-- 토글버튼  -->      
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" style="margin-right: 150px;">
      <i class="bi bi-list"></i>
    </button>
    
    <!--토글버튼 클릭 시 나타나는 버튼  -->
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel" >
    <div class="offcanvas-header" style="background-color: #f6f6f6; text-align: center;">     	 		
     
		
		<div>	<a href="#"> 	
     		  <h5> Space Moon</h5>
     </a> 	</div>	
     	<div>
	 <button type="button" class="btn-close text-dark" data-bs-dismiss="offcanvas" aria-label="Close"></button>
		</div>	
	 	  
  </div>
      
      
      <!-- 메뉴 바(내 정보) -->
		
		
			<!-- 메뉴 바(관리) -->
			<div class="row" style="margin-top: 30px; margin-bottom: 40px">
				  
				 <div class="col-sm-6">
					    <a href="${pageContext.request.contextPath }/member_mypage">
					  		  <i class="bi bi-person-video" ></i>
					 	      <p>마이페이지</p></a>
				 </div>
				
				  <div class="col-sm-6">
					  <a href="${pageContext.request.contextPath }/member_reserve" >   
					        <i class="bi bi-calendar-check" ></i>
				 		  <p>예약 리스트</p></a> 
				 </div>
				 
				 
				 
				   <div class="col-sm-6">
					       <a href="${pageContext.request.contextPath }/member_review" >
							<i class="bi bi-person-hearts" ></i>
				 	 	  <p>이용 후기/Q&A</p></a>
				 </div>
			
			
				    <div class="col-sm-6">
					  <a href="${pageContext.request.contextPath }/member_heart">
				   		 <i class="bi bi-house-heart" ></i>
				 	 	  <p>찜 리스트</p></a>
				 </div>
			
				  <div class="col-sm-6 " style="text-align: center;">
				    <a href="${pageContext.request.contextPath }/member_notice?nmstatus=1&nstatus=1" >   
				     <i class="bi bi-info-circle" ></i>
				   <p>공지사항</p></a> 
				  </div>
				  
				  <div class="col-sm-6">
				    <a href="${pageContext.request.contextPath }/member_faq?fmstatus=1&fstatus=1" >
				     <i class="bi bi-question-diamond" ></i>
				 	   <p>FAQ</p></a>
				  </div>
				  
				  <div class="col-sm-6">
					  <c:choose>
					    <c:when test="${not empty loginMember}">
					      <!-- 로그인한 경우 -->
					      <a href="${pageContext.request.contextPath}/logout/member">
					        <i class="bi bi-box-arrow-right"></i>
					        <p>로그아웃</p>
					      </a>
					    </c:when>
					    <c:otherwise>
					      <!-- 로그인하지 않은 경우 -->
					      <a href="${pageContext.request.contextPath}/login/member">
					        <i class="bi bi-person-check"></i>
					        <p>로그인</p>
					      </a>
					    </c:otherwise>
					  </c:choose>
				 </div>
				  
				  <div class="col-sm-6 ">
				    <a href="${pageContext.request.contextPath }">
				    <i class="bi bi-houses" ></i>
				 	   <p>Home</p></a>
				  </div>
				
				
				   
			</div>	      
      
        <!--Host센터 이동 --> 
      <div class="service_menu">
      <a href="${pageContext.request.contextPath }/host">Host센터로 이동하기</a>
       <p class="copyright">Powered by © itwill Corp.</p>
       </div>
      <div>
      	
      </div>
       
    </div>
     <!-- 토글버튼 종료 -->
  </div>
</nav>
  
  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>