<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- jQuery 라이브러리 추가 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- bxSlider 라이브러리 추가 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	
<style>
.nav_area li :after {
  	 content: "";
  	 position: absolute;
  	 top: 10px;
 	 right: 0;
 	 width: 1px;
 	 height: 20px;
  	 background-color: #704de4;
   	 text-align: center;
   	 vertical-align: middle;
}
.pc .nav_area li :after {
 	top: 15px;
	font-family: NanumBarunGothic,"나눔바른고딕",NanumGothic,"돋움",Dotum,Helvetica,"Apple SD Gothic Neo",Sans-serif!important;
	font-size: 16px;
    height: 50px;
    padding: 11px 15px;
}
body {
    background: #f6f6f6;
    font-family: NanumBarunGothic,"나눔바른고딕",NanumGothic,"돋움",Dotum,Helvetica,"Apple SD Gothic Neo",Sans-serif!important;
    font-size: 12px;
    line-height: 18px;
    overflow-x: hidden;
    min-width: 300px;
    -webkit-font-smoothing: antialiased;
}
a:hover {
    cursor: pointer;
}
li {
    text-align: -webkit-match-parent;
}
.nav_area {
    display: table;
    position: relative;
    width: 100%;
    color: #656565;
    table-layout: fixed;
}
ol, ul {
    list-style: none;
}
ul {
    list-style-type: disc;
}
.nav_wrapper.fixed {
    position: fixed;
    left: 0;
    vertical-align: middle;
    top: 47px;
    background: #fff;
    font-size: 14px;
    z-index: 105;
}
.pc, .pc body {
    font-size: 16px;
    overflow-x: auto;
}
.fixed-navbar {
			position: fixed;
			top: 0;
			left: 0;
			width: 100%;
			height: 50px;
			background-color: #333;
			color: #fff;
			display: flex;
			align-items: center;
			justify-content: center;
			z-index: 999;
}
.navbar-button {
			padding: 10px;
			margin: 0 10px;
			background-color: #555;
			color: #fff;
			cursor: pointer;
			border: none;
			border-radius: 5px;
			font-size: 16px;
			text-align: center;
			text-decoration: none;
}	
	
		
</style>
</head>

	<script>
		function scrollToTarget1() {
			// 이동할 위치의 요소 선택
			var target = document.getElementById("scrollTarget1");
			// 해당 요소로 스크롤링
			target.scrollIntoView({behavior: "smooth", block: "start", inline: "nearest"});
		}
		function scrollToTarget2() {
			// 이동할 위치의 요소 선택
			var target = document.getElementById("scrollTarget2");
			// 해당 요소로 스크롤링
			target.scrollIntoView({behavior: "smooth", block: "start", inline: "nearest"});
		}
		function scrollToTarget3() {
			// 이동할 위치의 요소 선택
			var target = document.getElementById("scrollTarget3");
			// 해당 요소로 스크롤링
			target.scrollIntoView({behavior: "smooth", block: "start", inline: "nearest"});
		}
		function scrollToTarget4() {
			// 이동할 위치의 요소 선택
			var target = document.getElementById("scrollTarget4");	
			// 해당 요소로 스크롤링
			target.scrollIntoView({behavior: "smooth", block: "start", inline: "nearest"});
		}
		function scrollToTarget5() {
			// 이동할 위치의 요소 선택
			var target = document.getElementById("scrollTarget5");
			// 해당 요소로 스크롤링
			target.scrollIntoView({behavior: "smooth", block: "start", inline: "nearest"});
		}
		function scrollToTarget6() {
			// 이동할 위치의 요소 선택
			var target = document.getElementById("scrollTarget6");
			// 해당 요소로 스크롤링
			target.scrollIntoView({behavior: "smooth", block: "start", inline: "nearest"});
		}
		
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
	</script>
	<div id="__layout">
		<div style="">
			<ul id="u_skip">
				<li><a href="#content_wraper">컨텐츠 바로가기</a></li>
			</ul>
			<div class="wrap main ">
				<!---->
				<div class="wrap main detail meetspace" data-v-7f60aa2e="">
					<div id="content_wraper" role="main" data-v-7f60aa2e="">
						<div data-v-7f60aa2e="" class="section_cover">
							<div data-v-7f60aa2e="" class="spot_wrap">
								<span data-v-7f60aa2e="" data-stellar-background-ratio="0.5"
									class="spot_img"
									style="background-image:${space.sImg}?type=m&amp;amp;w=900&amp;amp;h=900&amp;amp;autorotate=true&amp;amp;quality=90&amp;quot;);">
								</span>
							</div>
							
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
							
							
							<h1>${space.sName}</h1>
								<img src="${space.sImg}" alt="이미지">
								<p>가격: ${space.sPrice}</p>
								<hr>
					
								<h2>이용 후기</h2>
								<c:if test="${not empty space.reviews}">
								<c:forEach var="review" items="${space.reviews}">
								<p>${review.rContent}</p>
								<p>${review.rMid} (${review.rDate})</p>
								<hr>
								</c:forEach>
								</c:if>
	
								<form action="${pageContext.request.contextPath}/order/${space.sNo}" method="post">
									<input type="submit" value="예약하기">
								</form>
							
						</div>
						<div class="section_cont" data-v-7f60aa2e="">
							<div class="inner_width" data-v-7f60aa2e="">
								<a class="btn_share_detail naver-splugin meet"
									data-v-7f60aa2e=""> <span class="naver-splugin-c"
									data-v-7f60aa2e=""></span>
								</a>
								<!---->
								<a class="btn_love_detail meet" data-v-7f60aa2e=""> <i
									class="sp_icon ico_love_detail_new" data-v-7f60aa2e="">좋아요</i></a>
								<a href="https://forms.gle/Tu6miuMz4YykC9QeA" target="_blank"
									class="btn_notify_detail meet" data-v-7f60aa2e=""></a>
								<div class="h_area" style="overflow: hidden" data-v-7f60aa2e="">
									<div class="h_space" data-v-7f60aa2e="">
										<!---->
										<h2 class="space_name" data-v-7f60aa2e="">${space.sName }</h2>
									</div>
								</div>
							</div>
							<!---->
							<div class="detail_forms" data-v-7f60aa2e="">
								<div class="box_form right_fixed detail_space"
									style="transition: transform 0.5s cubic-bezier(0.39, 0.575, 0.565, 1) 0.5s;"
									data-v-7f60aa2e="">
									<div class="ly_right_wrap meet" data-v-7f60aa2e="">
										<div class="ly_right_fixed">
											
											<div class="scroll_box">
												<div class="scroll_inner">
													<!---->
													<!---->
													<div class="respond_infos">
														<div class="p_respond">
															<p class="info_text_describe">${space.sRefund }</p>
															
														</div>
													</div>
													<ul class="reserv_list">
														<li class="lst active">
															<div class="flex_box">
																<div class="flex">
																	<input id="sp35427" type="radio" name="space_reserv"
																		value="[object Object]" class="radio"> <label
																		for="sp35427">${space.sName }</label>
																</div>
																<form action="/space_detailpage" method="post">
  																	 <label for="guests">총 예약 인원</label>
  																	 <input type="number" id="guests" name="guests" value="${guests}">
 																	 <button onclick="incrementGuests()">+</button>
 																	 <button onclick="decrementGuests()">-</button>
 																	 <button type="submit">바로 예약하기</button>
																</form>
																<div>
																	<button type="submit" onclick="location.href='${pageContext.request.contextPath}/member_heart?s_no='+${space.sNo }">찜</button>
																	
																</div>
																
																<div class="flex align_right">
																	<strong>${space.sPrice }</strong>
																</div>
															</div>													
															
															</li>
															</ul>
												</div>
											</div>
										</div>

										<!---->
									</div>
									<!---->
									<!---->
									<!---->
									<!---->
								</div>
								<!---->
							</div>
							<div class="photo_box_wrap type9" data-v-7f60aa2e="">
								<div class="nav_wrapper" data-v-7f60aa2e="">
									<div class="fixed-navbar">
									<ul class="nav_area" data-v-7f60aa2e="">
										<a data-v-7f60aa2e="">
										<button class="navbar-button" onclick="scrollToTarget1()">공간소개</button>
										
										<button class="navbar-button" onclick="scrollToTarget2()">시설안내</button>
										
										<button class="navbar-button" onclick="scrollToTarget3()">유의사항</button>
										
										<button class="navbar-button" onclick="scrollToTarget4()">환불정책</button>
										
										<button class="navbar-button" onclick="scrollToTarget5()">Q&A</button>
										
										<button class="navbar-button" onclick="scrollToTarget6()">이용후기</button>
										</a>
									</ul>
									</div>
								</div>
								<div class="meetspace" data-v-7f60aa2e="">
									<div id="s_intro" class="text_box" data-v-7f60aa2e="">
										<ul class="info_list officehours" data-v-7f60aa2e="">
											<li data-v-7f60aa2e="">
											<span class="data"style="display:;" data-v-7f60aa2e="">
											<div id="scrollTarget1" class="scroll-target">
												<p>.</p>
												<h4 class="h_intro" data-v-7f60aa2e="">공간 소개</h4>
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
											</span></li>
										</ul>
										<div class="info_icon_area" data-v-7f60aa2e="">
											<!---->
											<!---->
											<!---->
										</div>
									</div>
									<div id="s_info" class="text_box" data-v-7f60aa2e="">
										<ol class="info_list" data-v-7f60aa2e=""><li>
										<div id="scrollTarget2" class="scroll-target">
												<p>.</p>
												<h4 class="h_intro" data-v-7f60aa2e="">시설 안내</h4>
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
										</li></ol>

									</div>
									<div id="s_caution" class="text_box" data-v-7f60aa2e="">
										<ol class="info_list" data-v-7f60aa2e=""><li>
										<div id="scrollTarget3" class="scroll-target">
												<p>.</p>
												<h4 class="h_intro" data-v-7f60aa2e="">예약시 주의사항</h4>
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
										</li></ol>
									</div>
									<div id="s_refund" class="text_box" data-v-7f60aa2e="">
										<ol class="info_list" data-v-7f60aa2e=""><li>
										<div id="scrollTarget4" class="scroll-target">
												<p>.</p>
												<h4 class="h_intro" data-v-7f60aa2e="">환불 정책</h4>
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
										</li></ol>
									</div>
									<!---->
								</div>
								<!---->
								<div class="detail_box map_box" data-v-7f60aa2e="">
									<h4 class="h_intro blind">공간 위치 정보</h4>
									<div class="host_profile">
										<div class="inner">
											<div class="sp_location">
												<p class="sp_name">${space.sName }</p>
												<p class="sp_address">${space.sHaddress1 }</p>
												<p>${space.sHaddress2 }</p>
												<!---->
											</div>								
										</div>
									</div>
									<div class="map">
										<div id="map"
											style="width: 100%; height: 640px; position: relative; overflow: hidden; background: url(&amp; quot; https: //ssl.pstatic.net/sta tic/maps/mantle/1x/pattern_1.png&amp;quot;) 0px 0px repeat transparent;"
											tabindex="0">
											<div
												style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0; cursor: url(&amp; quot; https: //ssl.pstatic.net/static/maps/man tle/1x/openhand.cur&amp;quot;), default;">
												<div
													style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0;">
													<div
														style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1;">
														<div
															style="overflow: visible; width: 100%; height: 0px; position: absolute; display: none; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 0; user-select: none;">
														</div>
														<div
															style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1; user-select: none;">
															<div
																style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 0px; height: 0px; overflow: visible; box-sizing: content-box !important;">
																<div draggable="false" unselectable="on"
																	style="position: absolute; top: 310px; left: 57px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
																	<img draggable="false" unselectable="on" alt=""
																		crossorigin="anonymous" width="256" height="256"
																		src="https://nrbe.pstatic.net/styles/basic/1677213789/16/55877/25381.png?mt=bg.ol.sw.ar.lko"
																		style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
																</div>
																<div draggable="false" unselectable="on"
																	style="position: absolute; top: 54px; left: 57px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
																	<img draggable="false" unselectable="on" alt=""
																		crossorigin="anonymous" width="256" height="256"
																		src="https://nrbe.pstatic.net/styles/basic/1677213789/16/55877/25380.png?mt=bg.ol.sw.ar.lko"
																		style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
																</div>
																<div draggable="false" unselectable="on"
																	style="position: absolute; top: 566px; left: 57px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
																	<img draggable="false" unselectable="on" alt=""
																		crossorigin="anonymous" width="256" height="256"
																		src="https://nrbe.pstatic.net/styles/basic/1677213789/16/55877/25382.png?mt=bg.ol.sw.ar.lko"
																		style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
																</div>
																<div draggable="false" unselectable="on"
																	style="position: absolute; top: -202px; left: 57px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
																	<img draggable="false" unselectable="on" alt=""
																		crossorigin="anonymous" width="256" height="256"
																		src="https://nrbe.pstatic.net/styles/basic/1677213789/16/55877/25379.png?mt=bg.ol.sw.ar.lko"
																		style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
																</div>
																<div draggable="false" unselectable="on"
																	style="position: absolute; top: -202px; left: 313px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
																	<img draggable="false" unselectable="on" alt=""
																		crossorigin="anonymous" width="256" height="256"
																		src="https://nrbe.pstatic.net/styles/basic/1677213789/16/55878/25379.png?mt=bg.ol.sw.ar.lko"
																		style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
																</div>
																<div draggable="false" unselectable="on"
																	style="position: absolute; top: 566px; left: -199px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
																	<img draggable="false" unselectable="on" alt=""
																		crossorigin="anonymous" width="256" height="256"
																		src="https://nrbe.pstatic.net/styles/basic/1677213789/16/55876/25382.png?mt=bg.ol.sw.ar.lko"
																		style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
																</div>
																<div draggable="false" unselectable="on"
																	style="position: absolute; top: 54px; left: 313px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
																	<img draggable="false" unselectable="on" alt=""
																		crossorigin="anonymous" width="256" height="256"
																		src="https://nrbe.pstatic.net/styles/basic/1677213789/16/55878/25380.png?mt=bg.ol.sw.ar.lko"
																		style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
																</div>
																<div draggable="false" unselectable="on"
																	style="position: absolute; top: 310px; left: -199px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
																	<img draggable="false" unselectable="on" alt=""
																		crossorigin="anonymous" width="256" height="256"
																		src="https://nrbe.pstatic.net/styles/basic/1677213789/16/55876/25381.png?mt=bg.ol.sw.ar.lko"
																		style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
																</div>
																<div draggable="false" unselectable="on"
																	style="position: absolute; top: 310px; left: 313px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
																	<img draggable="false" unselectable="on" alt=""
																		crossorigin="anonymous" width="256" height="256"
																		src="https://nrbe.pstatic.net/styles/basic/1677213789/16/55878/25381.png?mt=bg.ol.sw.ar.lko"
																		style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
																</div>
																<div draggable="false" unselectable="on"
																	style="position: absolute; top: 54px; left: -199px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
																	<img draggable="false" unselectable="on" alt=""
																		crossorigin="anonymous" width="256" height="256"
																		src="https://nrbe.pstatic.net/styles/basic/1677213789/16/55876/25380.png?mt=bg.ol.sw.ar.lko"
																		style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
																</div>
																<div draggable="false" unselectable="on"
																	style="position: absolute; top: 566px; left: 313px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
																	<img draggable="false" unselectable="on" alt=""
																		crossorigin="anonymous" width="256" height="256"
																		src="https://nrbe.pstatic.net/styles/basic/1677213789/16/55878/25382.png?mt=bg.ol.sw.ar.lko"
																		style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
																</div>
																<div draggable="false" unselectable="on"
																	style="position: absolute; top: -202px; left: -199px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
																	<img draggable="false" unselectable="on" alt=""
																		crossorigin="anonymous" width="256" height="256"
																		src="https://nrbe.pstatic.net/styles/basic/1677213789/16/55876/25379.png?mt=bg.ol.sw.ar.lko"
																		style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
																</div>
															</div>
														</div>
														<div
															style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 100;">
															<div
																style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 101;"></div>
															<div
																style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 103;">
																<div title="선택 지점"
																	style="position: absolute; overflow: hidden; box-sizing: content-box !important; cursor: inherit; left: 176px; top: 273px; width: 36px; height: 47px;">
																	<img draggable="false" unselectable="on"
																		src="/_nuxt/img/map_marker.82cfb74.png" alt=""
																		style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; position: absolute; cursor: pointer; width: 36px; height: 47px; left: 0px; top: 0px;">
																</div>
															</div>
															<div
																style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 106;"></div>
														</div>
													</div>
													<div
														style="position: absolute; display: none; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: rgb(255, 255, 255); z-index: 10000; opacity: 0.5;"></div>
												</div>
											</div>
											<div
												style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; left: 0px;">
												<div
													style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: left; height: 21px;">
													<div
														style="position: relative; width: 53px; height: 14px; margin: 0px 12px 7px 2px; overflow: hidden; pointer-events: auto;">
														<span
															style="display: block; margin: 0; padding: 0 4px; text-align: center; font-size: 10px; line-height: 11px; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic,&amp; amp; quot; 나눔고딕 &amp;amp; quot; , Dotum ,&amp;amp; quot; 돋움 &amp;amp; quot; , sans-serif; font-weight: bold; color: #000; text-shadow: -1px 0 rgba(255, 255, 255, 0.3), 0 1px rgba(255, 255, 255, 0.3), 1px 0 rgba(255, 255, 255, 0.3), 0 -1px rgba(255, 255, 255, 0.3);">
															100m</span><img
															src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-b.png"
															width="45" height="4" alt=""
															style="position: absolute; left: 4px; bottom: 0px; z-index: 2; display: block; width: 45px; height: 4px; overflow: hidden; margin: 0px; padding: 0px; border: 0px none; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><img
															src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-l.png"
															width="4" height="10" alt=""
															style="position: absolute; left: 0; bottom: 0; z-index: 2; display: block; width: 4px; height: 10px; overflow: hidden; margin: 0; padding: 0; border: 0 none; max-width: none !important; max-height: none !important; min-width: 0 !important; min-height: 0 !important;">
														<img
															src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-r.png"
															width="4" height="10" alt=""
															style="position: absolute; right: 0; bottom: 0; z-index: 2; display: block; width: 4px; height: 10px; overflow: hidden; margin: 0; padding: 0; border: 0 none; max-width: none !important; max-height: none !important; min-width: 0 !important; min-height: 0 !important;">
													</div>
												</div>
												<div
													style="border: 0px none; margin: -1px 0px 0px; padding: 0px; pointer-events: none; float: left; height: 22px;">
													<a
														href="https://ssl.pstatic.net/static/maps/mantle/notice/legal.html"
														target="_blank"
														style="display: block; width: 48px; height: 17px; overflow: hidden; margin: 0px 5px 5px 12px; pointer-events: auto;"><img
														src="https://ssl.pstatic.net/static/maps/mantle/1x/naver-normal-new.png"
														width="48" height="17" alt="NAVER"
														style="display: block; width: 48px; height: 17px; overflow: hidden; border: 0 none; margin: 0; padding: 0; max-width: none !important; max-height: none !important; min-width: 0 !important; min-height: 0 !important;"></a>
												</div>
											</div>
										</div>
										<!---->
										<div class="btn_util">
											<a title="지도잠금설정" class="btn_lock"> <i
												class="sp_icon ico_lock_on">지도잠금설정</i></a> <span
												class="btn_zoom"><a title="지도확대" class="zoomin">
													<i class="sp_icon ico_zoomin">지도확대</i>
											</a> <a title="지도축소" class="zoomout"> <i
													class="sp_icon ico_zoomout">지도축소</i></a></span>
										</div>
									</div>
								</div>
								
								
								
								
								<div class="container">
  									<section class="section" id="section-3">
 									     <h1>오시는 길</h1>
     										 <div id="map" style="width: 70%; height: 300px; margin:auto"></div>
      											<code id="snippet" class="snippet"></code>
 								    </section>
								</div>

									<!-- 각자 발급받은 Client ID 값 넣기 [spacemoon의 client id : suw8zvq1lh] -->
								<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=suw8zvq1lh"></script>
									<div id="map" style="width:100%;height:450px;"></div>
    								
    								<!-- 
    								<script id="code">
   										   var mapDiv = document.getElementById('map');
    									  var map = new naver.maps.Map(mapDiv);
								</script>
								 -->
								
								
								
								<div question="" data-v-7f60aa2e="">
									<div id="scrollTarget5" class="scroll-target">
										<h4 class="h_intro">
											Q&amp;A 
										</h4>
										<a class="btn_qna_write"><span class="sp_icon icon_write"></span>
											<span>질문 작성하기</span></a>
									</div>
									<div class="review_box">
										<ul class="review_list">
											<li class="rlist" style="display:;">
												<div class="rbox_mine">
													<!---->
													<strong class="guest_name">${question.qMid }</strong>
													<p class="p_review">${question.qContent }</p>
													<!---->
													<div class="rbox_info_base">
														<span class="time_info">${question.qDate }</span>
														<!---->
													</div>
												</div>
											</li>				
										</ul>
										<div class="paging">
											<a class="btn_prev_list_end">
											 <i class="sp_icon ico_prev_list">이전목록 5개로 이동</i></a>
											  <a class="btn_prev_list">
												<i class="sp_icon ico_prev_list">이전페이지로 이동</i></a> 
													<a class="num active" style="display:;">1</a>
													<a class="num" style="display:;">2</a>
												 <a class="num" style="display:;">3</a>
												<a class="num" style="display:;">4</a>
											<a class="num" style="display:;">5</a> 
											<a class="btn_next_list active">
												 <i class="sp_icon ico_next_list">다음 페이지로 이동</i></a>
												<a class="btn_next_list_end active"> 
												<i class="sp_icon ico_next_list">다음목록 5개로 이동</i></a>
										</div>
										<!---->
									</div>
								</div>
								<div data-v-7f60aa2e="">
									<div id="scrollTarget6" class="scroll-target">
										<div class="reviews">
   											 <h3>이용 후기</h3>
   											 <c:forEach var="review" items="${reviews}">
   										     <div class="review">
    								         <p>${review.rContent}</p>
     								         <p>${review.rMid} (${review.rDate})</p>
     								         <p>별점: ${review.rStar}</p>
     								         <img src="${review.rImg}" alt="이미지">
    									     </div>
   											 </c:forEach>
										</div>
									</div>
									<div class="review_box">
										<ul class="review_list">
											<li class="rlist" style="display:;"><div
													class="rbox_mine">
													<!---->												
													<strong class="guest_name">${review.rMid }</strong>
													<p class="p_review">${review.rContent }</p>
													<!---->
													<!---->
													<div class="rbox_info_base">
														<span class="time_info"> ${review.rDate } </span>
													</div>
													<span class="rate_area"><span class="blind">평점</span>
														<span class="rate active"><em
															class="sp_icon ico_star_off">1점</em></span><span
														class="rate active"><em
															class="sp_icon ico_star_off">2점</em></span><span
														class="rate active"><em
															class="sp_icon ico_star_off">3점</em></span><span
														class="rate active"><em
															class="sp_icon ico_star_off">4점</em></span><span
														class="rate active"><em
															class="sp_icon ico_star_off">5점</em></span></span>
												</div>
												<div class="rbox_reply" style="display:;">
													<p class="p_tit_reply">
														<em>호스트님</em>의 답글
													</p>
													<p class="p_review">${reviewanswer.aContent }</p>
													<div class="rbox_info_base">
														<p class="time_info">${reviewanswer.aDate }</p>
													</div>
												</div></li>						
										</ul>
										<div class="paging">
											<a class="btn_prev_list_end"><i
												class="sp_icon ico_prev_list">이전목록 5개로 이동</i></a> <a
												class="btn_prev_list"><i class="sp_icon ico_prev_list">이전페이지로
													이동</i></a> <a class="num active" style="display:;">1</a><a
												class="num" style="display:;">2</a><a class="num"
												style="display:;">3</a><a class="num" style="display:;">4</a><a
												class="num" style="display:;">5</a> <a
												class="btn_next_list active"><i
												class="sp_icon ico_next_list">다음 페이지로 이동</i></a> <a
												class="btn_next_list_end active"><i
												class="sp_icon ico_next_list">다음목록 5개로 이동</i></a>
										</div>
									</div>
									<!---->
									<!---->
								</div>
							</div>
							<div class="host_profile" data-v-7f60aa2e="">
								<div class="inner" data-v-7f60aa2e="">
									<div class="host_area" data-v-7f60aa2e="">
										<div class="pf_left"
											style="background-image: url(https://moplqfgeemqv2103108.cdn.ntruss.com/service/160932891_0f5f5ba14f394cc44c3c8e302a447e5e.jpg?type=m&amp;amp;w=900&amp;amp;h=900&amp;amp;autorotate=true&amp;amp;quality=90);"
											data-v-7f60aa2e=""></div>
										<div class="pf_right" data-v-7f60aa2e="">
											<strong class="pf_host" data-v-7f60aa2e="">HOST</strong> <span
												class="pf_name" data-v-7f60aa2e="">호스트</span>
											<p class="pf_txt" data-v-7f60aa2e=""></p>
										</div>
									</div>
									<a href="/host/danceple" class="btn btn_rounded btn_link"
										data-v-7f60aa2e=""><span class="btn_inner"
										data-v-7f60aa2e="">호스트 페이지로 이동</span></a>
								</div>
							</div>
						</div>
						<div class="others_wrap" data-v-7f60aa2e="">
							<div class="text_box" data-v-7f60aa2e="">
								<h4 class="h_intro" data-v-7f60aa2e="">
									<em data-v-7f60aa2e="">호스트</em>의 다른 공간
								</h4>
							</div>
							<div class="space_list swiper_list" data-v-7f60aa2e="">
								<div class="flex_wrap column3 fluid" data-v-7f60aa2e="">
									<div data-v-7f60aa2e=""
										class="swiper swiper-container swiper-container-initialized swiper-container-horizontal">
										<div data-v-7f60aa2e="" class="swiper-wrapper"
											style="transition-duration: 0ms; transform: translate3d(8.906px, 0px, 0px);">
											<div data-v-7f60aa2e=""
												class="swiper-slide swiper-slide-active" style="width: 95%;">
												<article data-v-7f60aa2e="" data-space="17103"
													class="box box_space">
													<div class="inner">
														<a><div class="img_box">
																<span class="img"
																	style="background-image:${space.sImg} );"></span>
																<div class="button_area">
																	<button type="button"
																		class="button_img button_img_prev">
																		<i class="sp_icon ico_img_prev">이전 이미지 보기</i>
																	</button>
																	<button type="button"
																		class="button_img button_img_next">
																		<i class="sp_icon ico_img_next">다음 이미지 보기</i>
																	</button>
																</div>
															</div> <span class="btns_reserv"> <!----> <span
																class="btn_reserv_confirm"> 바로 <br>결제
															</span> <span class="btn_coupon"> 쿠폰 <br>할인
															</span>
														</span>
															<div class="info_area">
																<h3 class="tit_space">${space.sName }</h3>
																
																<div class="info_price_hour">
																	<strong class="price">${space.sPrice }</strong> <span
																		class="txt_unit">원/시간</span>
																</div>
																<div class="info_number_love">
																	<span class="txt_number_maxUser"><i
																		class="sp_icon ico_user">최대이용가능수</i> <em>${space.sPerson }</em></span> <span
																		class="txt_number_review"><i
																		class="sp_icon ico_review">리뷰수</i> <em>${review.rCount }</em></span> <span
																		class="txt_number_love"><i
																		class="sp_icon ico_love">좋아요</i> <em>${space.sHeart }</em></span>
																</div>
															</div></a>
													</div>
												</article>
											</div>
											
										</div>
										<span class="swiper-notification" aria-live="assertive"
											aria-atomic="true"></span>
									</div>
								</div>
							</div>
						</div>				
					</div>
				</div>
			</div>
			<div class="btn_order_area" data-v-7f60aa2e="">
				<a class="btn btn_default btn_call" data-v-7f60aa2e=""></a> <a
					class="btn btn_default btn_reserve" data-v-7f60aa2e="">예약신청하기</a>
			</div>
			<a class="btn_fixed_top bottom" data-v-7f60aa2e=""><span
				class="sp_icon ico_top">페이지 상단으로 이동</span></a>
			<!---->
			<!---->
			<!---->
			<!---->
			<!---->
			<div class="dimmed" data-v-7f60aa2e=""></div>
		</div>
		<!---->
		<div class="dimmed" style="display: none;"></div>
		<!---->
	</div>
	<!---->	
	<h1>QnA</h1>
	<hr>
	<div id="btnDiv">
		<button type="button" id="writeBtn">글쓰기</button>
	</div>
	
	<%-- 게시글 목록을 출력하는 태그 --%>
	<div id="questionListDiv"></div>

	<%-- 페이지 번호를 출력하는 태그 --%>
	<div id="pageNumDiv"></div>
	
	<%-- 신규 게시글을 입력받기 위한 태그 --%>
	<div id="insertDiv" class="inputDiv">
		<table>
			<tr>
				<td>작성자</td>
				<td>${member.mName}</td>
			</tr>
			<tr>
				<td>질문</td>
				<td><input type="text" id="insertContent" class="insert"></td>
			</tr>
			<tr>
				<td>단, 공간 및 예약에 대한 문의가 아닌 글은 무통보 삭제될 수 있습니다.</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="button" id="cancelInsertBtn">취소</button>
					<button type="button" id="insertBtn">등록</button>
				</td>
			</tr>
		</table>
	</div>
	
	<%-- 변경 게시글을 입력받기 위한 태그 --%>
	<div id="updateDiv" class="inputDiv">
		<input type="hidden" id="updateNum">
		<table>
			<tr>
				<td>작성자</td>
				<td>${member.mName}</td>
			</tr>
			<tr>
				<td>내용</td>
				<td><input type="text" id="updateContent" class="update"></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="button" id="cancelUpdateBtn">취소</button>
					<button type="button" id="updateBtn">수정</button>
				</td>
			</tr>
		</table>
	</div>
	
	<div>
		<h2>판매자의 다른 공간</h2>

   		 <c:forEach items="${relatedSpaces}" var="relatedSpace">
       		 <div>
        	    <a href="<c:url value='/space/${relatedSpace.sNo}'/>">
                <img src="${relatedSpace.sImg}" alt="${relatedSpace.sName}">
                <p>${relatedSpace.sName}</p>
                <p>${relatedSpace.sPrice}</p>
          	    </a>
    	    </div>
  		  </c:forEach>
		
	</div>
	
	<script type="text/javascript">
	//현재 요청 페이지의 번호를 저장하기 위한 전역변수 
	// => 모든 함수에서 사용 가능하며 프로그램 종료 전까지 값을 유지
	var page=1;
	
	//특정 페이지 번호의 게시글 목록을 출력하는 함수 호출
	questionListDisplay(page);
	
	//RESTBOARD 테이블에 저장된 게시글 목록을 페이징 처리하여 검색하고 처리결과를 JSON 형식의
	//데이타로 응답하는 페이지(board_list)를 AJAX 기능으로 요청 
	// => 응답받은 JSON 형식의 데이타로 게시글 목록 출력 태그를 변경
	function questionListDisplay(pageNum) {
		page=pageNum;
		$.ajax({
			type: "get",
			url: "${pageContext.request.contextPath}/space_list?pageNum="+pageNum,
			dataType: "json",
			success: function(result) {
				
				//매개변수로 제공받은 자바스크립트 객체를 HTML로 변경하여 게시글 목록 출력 태그 변경
				if(result.questionList.length==0) {//검색된 게시글이 없는 경우
					var html="<table id='questionTable'>";
					html+="<tr>";
					html+="<th width='800' colspan='6'>검색된 질문이 없습니다.</th>";
					html+="</tr>";
					html+="</table>";
					$("#questionListDiv").html(html);
					return;
				}
				
				var html="<table id='questionTable'>";
				html+="<tr>";
				html+="<th width='50'>번호</th>";
				html+="<th width='100'>작성자</th>";
				html+="<th width='350'>내용</th>";
				html+="<th width='200'>작성일</th>";
				html+="<th width='50'>수정</th>";
				html+="<th width='50'>삭제</th>";
				html+="</tr>";
				$(result.questionList).each(function() {//게시글 목록을 반복 처리
					html+="<tr>";
					html+="<td align='center'>"+this.num+"</td>";
					html+="<td align='center'>"+${member.mName}+"</td>";
					html+="<td>"+this.content+"</td>";
					html+="<td align='center'>"+this.regdate+"</td>";
					html+="<td align='center'><button type='button' onclick='modify("+this.num+");'>수정</button></td>";
					html+="<td align='center'><button type='button' onclick='remove("+this.num+");'>삭제</button></td>";
					html+="</tr>";
				});
				html+="</table>";
				
				$("#questionListDiv").html(html);
				
				//페이지 번호를 출력하는 함수 호출
				pageNumDisplay(result.pager)
			},
			error: function(xhr) {
				alert("에러코드(게시글 목록 검색) = "+xhr.status)
			}
		});
	}
	
	//페이지 번호를 출력하는 태그를 변경하는 함수 - 페이지 번호 출력
	function pageNumDisplay(pager) {
		var html="";
		
		if(pager.startPage > pager.blockSize) {
			html+="<a href='javascript:questionListDisplay("+pager.prevPage+")'>[이전]</a>";
		}
		
		for(i=pager.startPage;i<=pager.endPage;i++) {
			if(pager.pageNum!=i) {
				html+="<a href='javascript:questionListDisplay("+i+")'>["+i+"]</a>";
			} else {
				html+="["+i+"]";
			}
		}
		
		if(pager.endPage != pager.totalPage) {
			html+="<a href='javascript:questionListDisplay("+pager.nextPage+")'>[다음]</a>";
		}
		
		$("#pageNumDiv").html(html);
	}
	
	//[글쓰기] 태그를 클릭한 경우 호출되는 이벤트 처리 함수
	$("#writeBtn").click(function() {
		//변경 게시글을 입력받기 위한 태그 초기화
		$(".update").val("");//입력태그 초기화
		$("#updateDiv").hide();//태그 숨김
		
		//신규 게시글을 입력받기 위한 태그 출력
		$("#insertDiv").show();
	});
	
	//신규 게시글을 입력받기 위한 태그에서 [저장] 태그를 클릭한 경우 호출되는 이벤트 처리 함수
	// => 사용자 입력값을 얻어와 RESTBOARD 테이블에 삽입하는 페이지를 AJAX 기능으로 요청하여
	//처리결과를 제공받아 응답 처리
	$("#insertBtn").click(function() {
		var writer=${mName};
		var content=$("#insertContent").val();
		

		if(content=="") {
			alert("호스트에게 궁금한 점을 질문해보세요.");
			return;
		}
		
		$.ajax({
			type: "post",
			url: "${pageContext.request.contextPath}/space_add",
			//headers : 요청정보가 저장된 리퀘스트 메세지의 머릿부(Header)를 변경하기 위한 속성
			// => 리퀘스트 메세지의 머릿부에서 몸체부에 저장된 전달값에 대한 문서형식(MimeType)을 변경
			//headers: {"contentType":"application/json"},
			//contentType : 리퀘스트 몸체부에 저장된 전달값에 대한 문서형식을 변경하기 위한 속성
			// => 리퀘스트 몸체부에 저장된 전달값을 JSON 형식의 텍스트 데이타로 전달
			// => 요청 처리 메소드의 매개변수에서 @RequestBody 어노테이션을 사용하여 모든 전달값을
			//Java 객체로 제공받아 사용 - 전달값은 Java 객체의 필드값으로 저장
			contentType: "application/json",
			//JSON.stringify(object) : JavaScript 객체를 전달받아 JSON 형식의 텍스트 데이타로 변환하는 메소드
			data: JSON.stringify({"writer":writer,"content":content}),
			dataType: "text",
			success: function(result) {
				if(result=="success") {
					//신규 게시글을 입력받기 위한 태그 초기화
					$(".insert").val("");//입력태그 초기화
					$("#insertDiv").hide();//태그 숨김
					
					//특정 페이지 번호의 게시글 목록을 출력하는 함수 호출
					questionDisplay(page);
				}
			}, 
			error: function(xhr) {
				alert("에러코드(질문글 삽입) = "+xhr.status)
			}
		});
	});
	
	//신규 게시글을 입력받기 위한 태그에서 [취소] 태그를 클릭한 경우 호출되는 이벤트 처리 함수
	$("#cancelInsertBtn").click(function() {
		//신규 게시글을 입력받기 위한 태그 초기화
		$(".insert").val("");//입력태그 초기화
		$("#insertDiv").hide();//태그 숨김
	});
	
	//게시글의 [변경] 태그를 클릭한 경우 호출되는 이벤트 처리 함수
	// => 글번호를 전달받아 RESTBOARD 테이블에 저장된 해당 글번호의 게시글을 검색하여 반환하는
	//페이지를 AJAX 기능으로 요청하여 처리결과를 JSON 형식의 데이타로 응답받아 변경 게시글을 
	//입력받기 위한 태그의 입력값으로 초기화 처리
	function modify(num) {		
		//신규 게시글을 입력받기 위한 태그 초기화
		$(".insert").val("");//입력태그 초기화
		$("#insertDiv").hide();//태그 숨김
		
		//변경 게시글을 입력받기 위한 태그 출력
		$("#updateDiv").show();
		
		$.ajax({
			type: "get",
			//페이지 요청시 질의문자열(QueryString)을 사용하여 값 전달
			// => 요청 처리 메소드의 매개변수에 @RequestParam 어노테이션을 사용하여 값을 제공받아 사용
			url: "${pageContext.request.contextPath}/space_view?num="+num,
			dataType: "json",
			success: function(result) {
				$("#updateNum").val(result.num);
				${mName};
				$("#updateContent").val(result.content);
			}, 
			error: function(xhr) {
				alert("에러코드(질문글 검색) = "+xhr.status)
			}
		});
	}
	
	//변경 게시글을 입력받기 위한 태그에서 [변경] 태그를 클릭한 경우 호출되는 이벤트 처리 함수
	// => 사용자 입력값을 얻어와 RESTBOARD 테이블에 저장된 게시글 변경하는 페이지를 AJAX 
	//기능으로 요청하여 처리결과를 제공받아 응답 처리
	$("#updateBtn").click(function() {
		var num=$("#updateNum").val();
		var writer=${mName};
		var content=$("#updateContent").val();
		
		
		if(content=="") {
			alert("호스트에게 궁금한 점을 질문해 보세요.");
			return;
		}
		
		$.ajax({
			type: "put",
			url: "${pageContext.request.contextPath}/space_modify",
			contentType: "application/json",
			data: JSON.stringify({"num":num,"writer":writer,"content":content}),
			dataType: "text",
			success: function(result) {
				if(result=="success") {
					//변경 게시글을 입력받기 위한 태그 초기화
					$(".update").val("");//입력태그 초기화
					$("#updateDiv").hide();//태그 숨김
					
					//특정 페이지 번호의 게시글 목록을 출력하는 함수 호출
					questionDisplay(page);
				}
			}, 
			error: function(xhr) {
				alert("에러코드(질문 변경) = "+xhr.status)
			}
		});
	});
	
	//변경 게시글을 입력받기 위한 태그에서 [취소] 태그를 클릭한 경우 호출되는 이벤트 처리 함수
	$("#cancelUpdateBtn").click(function() {
		//변경 게시글을 입력받기 위한 태그 초기화
		$(".update").val("");//입력태그 초기화
		$("#updateDiv").hide();//태그 숨김
	});
	//게시글의 [삭제] 태그를 클릭한 경우 호출되는 이벤트 처리 함수
	//=> 글번호를 전달받아 RESTBOARD 테이블에 저장된 해당 글번호의 게시글을 삭제하는 페이지를
	//AJAX 기능으로 요청하여 응답결과를 일반 텍스트로 제공받아 응답 처리
	function remove(num) {	
		
		if(confirm("질문을 삭제 하시겠습니까?")){
		$.ajax({
			type: "delete",
			url: "${pageContext.request.contextPath}/space_remove/"+num,
			dataType: "text",
			success: function(result) {
				if(result=="success") {
					//특정 페이지 번호의 게시글 목록을 출력하는 함수 호출
					questionDisplay(page);
				}
			}, 
			error: function(xhr) {
				alert("에러코드(게시글 삭제) = "+xhr.status)
			}
		});
		}
	}
	
	//인원수 + - 체크
	function incrementGuests() {
 		 var guests = document.getElementById("guests");
  		 guests.value = parseInt(guests.value) + 1;
	}

	function decrementGuests() {
  		var guests = document.getElementById("guests");
 	    if (guests.value > 1) {
 	    guests.value = parseInt(guests.value) - 1;
 	 }
	}
	
	
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
	
	
	</script>
</body>
</html>