<%@page import="xyz.itwill.dto.Space"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<style type="text/css">
body {
			margin: 0;
			padding: 0;
			height: 2000px; /* 콘텐츠 높이가 2000px 이라 가정 */
			font-family: 'Nanum Gothic', sans-serif;
			font-size: 1.5rem;
		}
		#btn-wrapper {
			position: fixed; /* 화면에서 고정 */
			top: 50%; /* 화면의 중앙에 위치 */
			transform: translateY(-50%); /* 버튼 높이의 절반 만큼 올라감 */
			left: 10px; /* 왼쪽에서 10px 위치 */
			background-color: #704DE4; /* 배경색 설정 */
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
  		
  		button {
  		background-color: #704DE4;
  		color: #F8C91E;
  		font-size: 20px;
  		font-family: 'Nanum Gothic', sans-serif;
		}
		
		.box1 {
  		border: 2px solid #704DE4;
 		margin: 10px;
 		border-radius: 5%;
 		padding: 20px;
		}
		.gg {
  border: 0.2em solid #F8C91E; 
  background-color: #F8C91E; 
  color: white; 
  width: 15%; /* 길이 조절 */
  text-align: left; /* 왼쪽 정렬 */
}

		.gg + div {
 		 margin-top: 40px; /* 공백 크기 조정 */
		}
	hr.no-border {
  border: none;
  
  
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
	
		
		
<form action="/" method="post" class="flex-container" id="form1" name="f" >
	<div style="background-color: #F6F6F6;">
		<!-- Hero End -->
		<div>
			<section class="section">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 col-md-7 col-12">
							<div class="section-title">
							
								<h1 class="mt-4 text-center" style="text-align: left;">${spaces.SName }</h1>
								
								<!-- 예약공간  -->
								<div class="card mb-5">
									<div class="card-body">
										<h2 class="title mt-4" style="text-align: left;">${spaces.STag }</h2>
										<div class="d-flex justify-content-between align-items-center">
											<!-- Space 상세 페이지에서 호스트가 등록한 이미지 출력 -->
											<img class="img-fluid w-100" src="${pageContext.request.contextPath}/images/img1/${spaces.SImg}" alt="s_name = ${spaces.SName }의 Space Image">
											<!-- 
											<div id="slider">
	 							 				<ul>
	  							  	 				<li><img src="${sliderImage1}" alt="Slider Image 1"></li>
	   								 			    <li><img src="${sliderImage2}" alt="Slider Image 2"></li>
	  								 			    <li><img src="${sliderImage3}" alt="Slider Image 3"></li>
	  							    			</ul>
											</div>
											-->
											<ul id="slideshow">
	  											<c:forEach var="img" items="${ImgList}">
	   											<li><img src="${img}" /></li>
	  											</c:forEach>
											</ul>
										</div>
									</div>
								</div>
								
		
										
								
								<section id="section1"></section>
								<!-- 호스트정보 -->
								<div class="card mb-5">
									<div class="card-body">
										<h2 class="title mt-4" style="text-align: left;">공간소개</h2>
										<p class="gg"></p>
										<div style="text-align: left;">${spaces.SInfo.replaceAll("\\.", "<br/>") }</div>
									</div>
								</div>
								
								<section id="section2"></section>
								<!-- 호스트 Space 정보 -->
								<div class="card mb-5">
									<div class="card-body">
										<h2 class="title mt-4" style="text-align: left;">시설안내</h2>
										<p class="gg"></p>
										<div style="text-align: left;">${spaces.SGuide.replaceAll("\\.", "<br/>") }</div>
									</div>
								</div>
								
								<section id="section3"></section>
								<!-- 호스트 Space 정보 -->
								<div class="card mb-5">
									<div class="card-body">
										<h2 class="title mt-4" style="text-align: left;">유의사항</h2>
										<p class="gg"></p>
										<div style="text-align: left;">
											<p>예약시 주의사항</p>
											${spaces.SNotice.replaceAll("\\.", "<br/>") }
										</div>
									</div>
								</div>
							
								<section id="section4"></section>
								<!-- 호스트 Space 정보 -->
								<div class="card mb-5">
									<div class="card-body">
										<h2 class="title mt-4" style="text-align: left;">환불정책</h2>
										<p class="gg"></p>
										<div style="text-align: left;">
											<p>환불 규정 안내</p>
											${spaces.SRefund.replaceAll("\\.", "<br/>") }
										</div>
									</div>
								</div>
								
								<!-- 호스트 Space 정보 -->
								<div class="card mb-5">
									<div class="card-body">
										<h2 class="title mt-4" style="text-align: left;">${spaces.SName }</h2>
										<h2 class="title mt-4" style="text-align: left;">${spaces.SMap }</h2>
										<h2 class="title mt-4" style="text-align: left;">${spaces.SDetailMap }</h2>
										<p class="gg"></p>
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
								<!-- 호스트 Space 정보 -->
								<div class="card mb-5">
									<div class="card-body">
										<h2 class="title mt-4" style="text-align: left;">Q&A</h2>
										<p class="gg"></p>
									</div>
								</div>
								
								<section id="section6"></section>
								<!-- 호스트 Space 정보 -->
								<div class="card mb-5">
									<div class="card-body">
										<h2 class="title mt-4" style="text-align: left;">이용후기</h2>
										<p class="gg"></p>
									</div>
								</div>
								
								<!-- 호스트 Space 정보 -->
								<div class="card mb-5">
									<div class="card-body">
										<h2 class="title mt-4">호스트의 다른 공간</h2>
										<hr>
	   									<c:forEach items="${spaceHostList}" var="spaceHost">
	 									 	<tr>		
	 									 		<td>${spaceHost.SName}</td>
	   											<td>${spaceHost.SPrice}</td> 	
											</tr>   											
										</c:forEach>
									</div>
								</div>
	
							
	
							</div>
						</div>
						
						<!--end col-->
	
						<div class="col-lg-4 col-md-5 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
							<div class="box1" style="background-color: white;">
								<div class="sidebar sticky-sidebar">
									<div class="widget mb-4 pb-2">
										<ul class="list-unstyled mb-0 catagory">
											<li>
												<span>예약날짜</span>
												<!-- <span class="float-right">${spaces.SPdate }</span> -->
												<span class="float-right">${param.pRedate}</span>
											</li>
											<li>
												<div>
													 <div>
														<label for="quantity" style="display: inline-block;">총 예약인원</label>
	 													 	<div class="personcontainer d-flex align-items-center">
	  													 		<div id="minus" class="button"><i class="bi bi-file-minus"></i></div>
	   													 			<input type="number" id="quantity" name="pRepeople" value="1" min="1" max="${spaces.SPerson}" required>
	   																<div id="plus" class="button"><i class="bi bi-plus-square" style="margin-left: 10px;"></i></div>
	  														</div>
													</div>	
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
		</div>
	</div>
	
	<div>
		<section class="section">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-5 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
						<div class="sidebar sticky-sidebar">
							<div class="widget mb-4 pb-2">
								<div class="box1" style="background-color: white;">
									<div class="p-4 mt-4 rounded shadow" style="background-color: #704DE4">
										<ul class="list-unstyled mb-0 catagory">
											<li><button onclick="goToOrderPage();">예약신청하기</button></li>
										</ul>
									</div>
									
								</div>
							</div>
								
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</form>			
	
<div id="container">
  <!-- 내용을 출력할 컨테이너 -->
</div>
<script>

//스크롤 이동
function scrollToSection(id) {
	const section = document.getElementById(id); // 클릭한 버튼에 해당하는 섹션 요소를 가져옴
	const sectionTop = section.offsetTop; // 섹션 요소의 위쪽에서의 거리(offset)를 가져옴
	window.scrollTo({ top: sectionTop, behavior: 'smooth' }); // 스크롤을 해당 섹션으로 이동
}

		
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
		*/
        
      //네이버 지도
    	
    	var HOME_PATH = window.HOME_PATH || '.';
    	var spacemap = new naver.maps.LatLng(37.65259599999992, 126.90814729999975),
        map = new naver.maps.Map('map', {
            center: spacemap.destinationPoint(0, 500),
            zoom: 18
        }),
        marker = new naver.maps.Marker({
            map: map,
            position: spacemap
        });

    	var contentString = [
    		'<div class="iw_inner">',
            '   <h3>　${spaces.SName}</h3>',
            '   <p>　${spaces.SMap }　</p><br />',
            '    　${spaces.SDetailMap} <br />',
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
    	
    	
    	//예약하기
    	function goToOrderPage() {
    		f.action = "<c:url value="/order"/>";
    		f.submit();
			//var url = "${pageContext.request.contextPath}/order?sNo="+sNo;
			//window.location.href = url;
		}
    	
    	$(document).ready(function() {
			  
    		  //예약인원 버튼과 예약신청하기 버튼을 오른쪽 상단에 배치하기위한 내용
    		  
    		  // form1의 box1 내용을 복사하여 container에 추가
    		  var content1 = $('#form1 .box1').clone();
    		  content1.find('#minus').on('click', function () {
    			  var $quantity = $(this).parent().find('#quantity');
    			  if ($quantity.val() > 1) {
    			    $quantity.val(parseInt($quantity.val()) - 1);
    			  }
    			});
    			content1.find('#plus').on('click', function () {
    			  var $quantity = $(this).parent().find('#quantity');
    			  if ($quantity.val() < parseInt($quantity.attr('max'))) {
    			    $quantity.val(parseInt($quantity.val()) + 1);
    			  }
    			});
    		  $('#container').empty().append(content1);

    		  // form2의 box1 내용을 복사하여 container에 추가
    		  var content2 = $('#form2 .box1').clone();
    		  $('#container').append(content2);

    		  // container 내용을 오른쪽 끝에서 위아래로 출력
    		  $('#container').css({position: 'absolute', right: '100px', top: '300px'});
				
    		  // 기존 content 숨기기
    		  $('#form1 .box1, #form2 .box1').css('display', 'none');
    		  
    		  var input = $("#quantity");
    		  var minus = $("#minus");
    		  var plus = $("#plus");

    		  minus.click(function() {
    		    if (input.val() > input.attr("min")) {
    		      input.val(parseInt(input.val()) - 1);
    		    }
    		  });

    		  plus.click(function() {
    		    if (input.val() < input.attr("max")) {
    		      input.val(parseInt(input.val()) + 1);
    		    }
    		  });
    		    
    		  
    		// 슬라이드 쇼 구현
			  $('#slider ul').bxSlider({
			    auto: true, // 자동으로 슬라이드 넘김
			    autoControls: true, // 시작 및 중지 버튼 표시
			    stopAutoOnClick: true, // 사용자가 슬라이드를 클릭할 때 자동 슬라이드 정지
			    pager: false, // 페이지 표시 기능 미사용
			    slideWidth: 600 // 슬라이드 너비 설정
			  });
    		  
    		//슬라이드 쇼 구현 2
			  $("#slideshow > li:gt(0)").hide();
			    setInterval(function() {
			      $('#slideshow > li:first')
			        .fadeOut(1000)
			        .next()
			        .fadeIn(1000)
			        .end()
			        .appendTo('#slideshow');
			    }, 3000);
    		
    	 		 
    		
    		
    		
    		});
    	
</script>
</body>
</html>