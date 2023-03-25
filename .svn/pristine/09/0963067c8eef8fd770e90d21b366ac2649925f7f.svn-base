<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<style type="text/css">
body {
			margin: 0;
			padding: 0;
			height: 2000px; /* 콘텐츠 높이가 2000px 이라 가정 */
		}
		#btn-wrapper {
			position: fixed; /* 화면에서 고정 */
			top: 50%; /* 화면의 중앙에 위치 */
			transform: translateY(-50%); /* 버튼 높이의 절반 만큼 올라감 */
			left: 10px; /* 왼쪽에서 10px 위치 */
			background-color: #ccc; /* 배경색 설정 */
			padding: 10px; /* 버튼 간격을 주기 위한 padding 설정 */
			border-radius: 10px; /* 모서리를 둥글게 설정 */
			box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3); /* 그림자 효과 */
			z-index: 9999; /* 다른 요소들보다 위에 위치 */
		}
		.btn {
			display: block;
			padding: 10px;
			margin-bottom: 10px;
			text-align: center;
			background-color: #fff;
			border: none;
			border-radius: 5px;
			cursor: pointer;
		}
  
</style>
<meta charset="UTF-8">
</head>
<body>
	
	<div id="btn-wrapper">
		<button class="btn" onclick="scrollToSection('section1')">공간소개</button>
		<button class="btn" onclick="scrollToSection('section2')">시설안내</button>
		<button class="btn" onclick="scrollToSection('section3')">유의사항</button>
		<button class="btn" onclick="scrollToSection('section4')">환불정책</button>
		<button class="btn" onclick="scrollToSection('section5')">Q&A</button>
		<button class="btn" onclick="scrollToSection('section6')">이용후기</button>
	</div>
	

	<!-- Hero End -->
	<form name="f" method="post">
		<input type="hidden" id="pRedate">
      	<input type="hidden" id="pRepeople">
		<section class="section">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-md-7 col-12">
						<div class="section-title">
							<h1 class="mt-4 text-center">[오픈특가]서울대입구 보다헌${space.sName }</h1>
							
							<!-- 예약공간  -->
							<div class="card mb-5">
								<div class="card-body">
									<h2 class="title mt-4">#클래스 #생일파티 #영화관 #모임 #포토존${space.sTag }</h2>
									<hr>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 숙소 상세 페이지에서 호스트가 등록한 이미지 출력 -->
										<img src="${space.sImg}" alt="Space Image">
										<div id="slider">
 							 				<ul>
 							  					<!-- 여러개의 이미지를 슬라이드 형태로 출력 -->
  							  	 				<li><img src="${sliderImage1}" alt="Slider Image 1"></li>
   								 			    <li><img src="${sliderImage2}" alt="Slider Image 2"></li>
  								 			    <li><img src="${sliderImage3}" alt="Slider Image 3"></li>
  							    			</ul>
										</div>
										
									</div>

							
								</div>
							</div>
							
	
							
							<section id="section1"></section>
							<!-- 호스트정보 -->
							<div class="card mb-5">
								<div class="card-body">
									<h2 class="title mt-4">공간 소개</h2>
									<hr>
											<div>
												<p>이공간은 어쩌구1</p>
												<p>이공간은 어쩌구1</p>
												<p>이공간은 어쩌구1</p>
												<p>이공간은 어쩌구1</p>
												<p>이공간은 어쩌구1</p>
												<p>이공간은 어쩌구1</p>
												<p>이공간은 어쩌구1</p>
												<p>이공간은 어쩌구1</p>
												${space.sInfo }
												
											</div>
								</div>
							</div>
							
							<section id="section2"></section>
							<!-- 호스트정보 -->
							<div class="card mb-5">
								<div class="card-body">
									<h2 class="title mt-4">시설안내</h2>
									<hr>
									<div>
												<p>.</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												<p>시설 안내</p>
												${space.sGuide }
											</div>
								</div>
							</div>
							
								<section id="section3"></section>
							<!-- 호스트정보 -->
							<div class="card mb-5">
								<div class="card-body">
									<h2 class="title mt-4">유의사항</h2>
									<hr>
									<div>
												<p>.</p>
												<p>예약시 주의사항</p>
												<p>주의 사항</p>
												<p>주의 사항</p>
												<p>주의 사항</p>
												<p>주의 사항</p>
												<p>주의 사항</p>
												<p>주의 사항</p>
												<p>주의 사항</p>
												<p>주의 사항</p>
												<p>주의 사항</p>
												<p>주의 사항</p>
												<p>주의 사항</p>
												<p>주의 사항</p>
												<p>주의 사항</p>
												<p>주의 사항</p>
												<p>주의 사항</p>
												<p>주의 사항</p>
												${space.sNotice }
											</div>
								</div>
							</div>
							
								<section id="section4"></section>
							<!-- 호스트정보 -->
							<div class="card mb-5">
								<div class="card-body">
									<h2 class="title mt-4">환불정책</h2>
									<hr>
									<div>
												<p>.</p>
												<p>환불 규정 안내</p>
												<p>환불 정책</p>
												<p>환불 정책</p>
												<p>환불 정책</p>
												<p>환불 정책</p>
												<p>환불 정책</p>
												<p>환불 정책</p>
												<p>환불 정책</p>
												<p>환불 정책</p>
												<p>환불 정책</p>
												<p>환불 정책</p>
												<p>환불 정책</p>
												<p>환불 정책</p>
												<p>환불 정책</p>
												<p>환불 정책</p>

												${space.sRefund }
											</div>
								</div>
							</div>
							
							<!-- 호스트정보 -->
							<div class="card mb-5">
								<div class="card-body">
									<h2 class="title mt-4">[오픈특가]서울대입구 보다헌${space.sName }</h2>
									<h2 class="title mt-4">서울 관악구 봉천로 447 3층${space.sMap }</h2>
									<hr>
									<!-- 각자 발급받은 Client ID 값 넣기 [spacemoon의 client id : suw8zvq1lh] -->
									<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=suw8zvq1lh"></script>
									<div id="map" style="width:100%;height:450px;"></div>
    								
    								<!-- 
    								<script id="code">
   										   var mapDiv = document.getElementById('map');
    									   var map = new naver.maps.Map(mapDiv);
									</script>
									 -->
								</div>
							</div>
							
							
								<section id="section5"></section>
							<!-- 호스트정보 -->
							<div class="card mb-5">
								<div class="card-body">
									<h2 class="title mt-4">Q&A</h2>
									<hr>
									
								</div>
							</div>
							
								<section id="section6"></section>
							<!-- 호스트정보 -->
							<div class="card mb-5">
								<div class="card-body">
									<h2 class="title mt-4">이용후기</h2>
									<hr>
									
								</div>
							</div>
							
								<!-- 호스트정보 -->
							<div class="card mb-5">
								<div class="card-body">
									<h2 class="title mt-4">호스트의 다른 공간</h2>
									<hr>

   									<c:forEach items="${relatedSpaces}" var="relatedSpace">
  										<c:url var="spaceUrl" value="/spaces/${relatedSpace.sNo}"/>
 											 <a href="${spaceUrl}">
 									 			 <c:out value="${relatedSpace.sName}" />
   												 <c:out value="${relatedSpace.sPrice}" />
									 		 </a>
									</c:forEach>
										
								</div>
							</div>

						

						</div>
					</div>
					<!--end col-->

					<div class="col-lg-4 col-md-5 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
						<div class="sidebar sticky-sidebar">
							
								<div class="widget mb-4 pb-2">
									
									<div class="p-4 mt-4 rounded shadow">
										<ul class="list-unstyled mb-0 catagory">
											<li>
												<span>예약날짜</span>
												<span class="float-right">2023.03.09 (목)${space.sPdate }</span>
											</li>		
											<li>
												 <div>
          										 	 <label for="quantity">총 예약 인원</label>
           										 	 <input type="number" id="quantity" name="quantity" value="1" min="1"
              									 	 oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
              									 	 maxLength="10" required>
              									 	 <button type="button" onclick="orderAction();" class="btn btn-primary w-75">주문페이지로 이동</button>
              									 	 <!-- maxLength : space.sPerson 으로 수정하기 @@ -->
       											 </div>
											</li>			
										</ul>
									</div>
									
								</div>
								
							</div>
						</div>
					</div>
			</div>
			
		</section>
	</form>
	<form action="${pageContext.request.contextPath}/order/${space.sNo}" method="post">
		<section class="section">
			<div class="container">
				<div class="row">
		<div class="col-lg-4 col-md-5 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
						<div class="sidebar sticky-sidebar">
							
								<div class="widget mb-4 pb-2">
									
									<div class="p-4 mt-4 rounded shadow">
									<ul class="list-unstyled mb-0 catagory">
										<li>
										<button onclick="goToOrderPage(${space.sNo})">예약하기</button>
										</li>
										</ul>
									</div>
									
								</div>
								
							</div>
						</div>
						</div>
						</div>
						</section>
		</form>
<script>
		//스크롤 이동
function scrollToSection(id) {
	const section = document.getElementById(id); // 클릭한 버튼에 해당하는 섹션 요소를 가져옴
	const sectionTop = section.offsetTop; // 섹션 요소의 위쪽에서의 거리(offset)를 가져옴
	window.scrollTo({ top: sectionTop, behavior: 'smooth' }); // 스크롤을 해당 섹션으로 이동
}

		// 이미지 슬라이드
		
		$(document).ready(function(){
			  // 슬라이드 쇼 구현
			  $('#slider ul').bxSlider({
			    auto: true, // 자동으로 슬라이드 넘김
			    autoControls: true, // 시작 및 중지 버튼 표시
			    stopAutoOnClick: true, // 사용자가 슬라이드를 클릭할 때 자동 슬라이드 정지
			    pager: false, // 페이지 표시 기능 미사용
			    slideWidth: 600 // 슬라이드 너비 설정
			  });
			});
		
		/*
		// 기본인원 1명 에서   +, - 버튼이나 직접 입력하여 인원수를 결정하는데 6명 이상이 되면
		// 1명당 5000원 이 부과됩니다. (단, 호스트가 설정한 인원수를 넘을 수 없습니다.)
		 var quantityInput = document.getElementById('quantity');
        var totalPriceInput = document.getElementById('total-price');
        var pricePerUnit = ${product.price};
        var quantityThreshold = 6;
        var additionalPricePerUnit = 5000;

        quantityInput.addEventListener('input', function() {
            var quantity = parseInt(quantityInput.value);
            if (quantity >= quantityThreshold) {
                totalPriceInput.value = (pricePerUnit + (quantity - 1) * additionalPricePerUnit) * quantity;
            } else {
                totalPriceInput.value = pricePerUnit * quantity;
            }
        });
		
        
      //네이버 지도
    	
    	var HOME_PATH = window.HOME_PATH || '.';
    	var spacemap = new naver.maps.LatLng(37.690, 126.655),
        map = new naver.maps.Map('map', {
            center: spacemap.destinationPoint(0, 500),
            zoom: 18s
        }),
        marker = new naver.maps.Marker({
            map: map,
            position: spacemap
        });

    	var contentString = [
            '<div class="iw_inner">',
            '   <h3>　스페이스명</h3>',
            '   <p>　주소　<br />',
            '    　전화번호 <br />',
    	    '</div>'
    					
        ].join('');

    	var infowindow = new naver.maps.InfoWindow({
       		 content: contentString
    	});

    	naver.maps.Event.addListener(marker, "click", function(e) {
      	  if (infowindow.getMap()) {
       	  	   infowindow.close();
      	  } else {
        	    infowindow.open(map, marker);
      	  }
    	});

    	infowindow.open(map, marker);
    	*/
    	
    	//예약하기
    	
    	function goToOrderPage(sNo) {
			var url = "order?sNo=" + sNo;
			window.location.href = url;
		}
  
//예역하기
function orderAction(){
	f.action = "<c:url value="/order"/>";
	f.submit();
}

</script>
</body>
</html>
