<%@page import="xyz.itwill.dto.SpaceHost"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<!-- Hero End -->
	<form name="f" method="post">
	<!-- 공간번호, 호스트 아이디 -->
	<input type="hidden" name="pRedate" value="${pRedate}">
	<input type="hidden" name="pRepeople" value="${pRepeople}">
	<input type="hidden" name="pSno" value="${space.SNo}">
		<section class="section">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-md-7 col-12">
						<div class="section-title">
							<h1 class="mt-4 text-center">예약하기</h1>
							
							<!-- 예약공간  -->
							<div class="card mb-5">
								<div class="card-body">
									<h2 class="title mt-4">예약공간</h2>
									<hr>
									<div class="d-flex justify-content-between align-items-center">
										<h5 class="mt-4">${space.SName}</h5>
										<p class="text-muted mb-0">${space.SPrice}원 / 하루</p>
									</div>
									<hr>
									<img class="img-fluid w-75" src="${pageContext.request.contextPath}/images/img1/${space.SImg}">
									<hr>
									<div class="d-flex justify-content-between align-items-center">
										<h5 class="mt-4">공간유형</h5>
										<span class="text-muted mb-0">${sCate}</span>
									</div>
									<div class="d-flex justify-content-between align-items-center">
										<h5 class="mt-4">예약인원</h5>
										<p class="mb-0 text-danger">최대 ${space.SPerson}명 까지 가능합니다.</p>
									</div>
								</div>
							</div>
							
							<!-- 예약정보 -->
							<div class="card mb-5">
								<div class="card-body">
									<h2 class="title mt-4">예약정보</h2>
									<hr>
									<div class="d-flex justify-content-between align-items-center">
										<h5 class="mt-4">예약날짜</h5>
										<p class="text-muted mb-0">${pRedate}</p>
									</div>
									<div class="d-flex justify-content-between align-items-center">
										<h5 class="mt-4">예약인원</h5>
										<p class="text-muted mb-0">${pRepeople}명</p>
									</div>
								</div>
							</div>
							
							<!-- 예약자 정보 -->
							<div class="card mb-5">
								<div class="card-body">
									<h2 class="title mt-4">예약자 정보</h2>
									<hr>
									<div class="d-flex justify-content-between align-items-center">
										<h5 class="mt-4">예약자</h5>
										<input type="text" name="pRename" class="form-control" style="width: 85%;" placeholder="반드시 입력해주세요"></input>
									</div>
									<div class="d-flex justify-content-between align-items-center">
										<h5 class="mt-4">연락처</h5>
										<input type="text" name="pRephone" class="form-control" style="width: 85%;" placeholder="반드시 입력해주세요"></input>
									</div>
									<div class="d-flex justify-content-between align-items-center">
										<h5 class="mt-4">이메일</h5>
										<input type="text" name="pReemail" class="form-control" style="width: 85%;" placeholder="반드시 입력해주세요"></input>
									</div>
									<div class="d-flex justify-content-between align-items-center">
										<h5 class="mt-4">사용목적</h5>
										<input type="text" name="pPurpose" class="form-control" style="width: 85%;" placeholder="촬영, 파티, 모임, 수업 등 공간 사용 목적을 입력해주세요"></input>
									</div>
									<div class="d-flex justify-content-between align-items-center">
										<h5 class="mt-4">요청사항</h5>
										<textarea name="pRequest" class="form-control" style="width: 85%;" placeholder="남기고 싶은 말을 적어주세요(최대 500자)"></textarea>
									</div>

									<p class="mt-5 mb-0 text-danger">예약자 정보로 알림톡과 이메일이 발송됩니다. 정확한 정보인지 확인해주세요.</p>
								</div>
							</div>

							<!-- 호스트정보 -->
							<div class="card mb-5">
								<div class="card-body">
									<h2 class="title mt-4">호스트정보</h2>
									<hr>
									<div class="d-flex justify-content-between align-items-center">
										<h5 class="mt-4">공간상호</h5>
										<p class="text-muted mb-0">${host.HSpacename}</p>
									</div>
									<div class="d-flex justify-content-between align-items-center">
										<h5 class="mt-4">대표자명</h5>
										<p class="text-muted mb-0">${host.HCeoname}</p>
									</div>
									<div class="d-flex justify-content-between align-items-center">
										<h5 class="mt-4">사업자번호</h5>
										<p class="text-muted mb-0">${host.HNum}</p>
									</div>
									<div class="d-flex justify-content-between align-items-center">
										<h5 class="mt-4">연락처</h5>
										<p class="text-muted mb-0">${host.HPhone}</p>
									</div>
								</div>
							</div>

							<!-- 예약 시 주의사항 -->
							<div class="card mb-5">
								<div class="card-body">
									<h2 class="title mt-4">예약 시 주의사항</h2>
									<hr>
									<p class="text-dark mb-0">${space.SNotice}</p>
								</div>
								<p class="mt-5 text-danger">계좌이체의 경우, 모바일에서는 네이버페이 계좌 간편결제만 가능합니다!</p>
							</div>

						</div>
					</div>
					<!--end col-->

					<div class="col-lg-4 col-md-5 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
						<div class="sidebar sticky-sidebar">
							<div class="widget mb-4 pb-2">
								<h5 class="widget-title">결제 예정금액</h5>
								<div class="p-4 mt-4 rounded shadow">
									<ul class="list-unstyled mb-0 catagory">
										<li class="d-flex justify-content-between">
											<span>예약날짜</span>
											<span class="float-right">${pRedate}</span>
										</li>
										<!-- 
										<li class="d-flex justify-content-between">
											<span>예약시간</span>
											<span class="float-right">13시 ~ 15시, 2시간</span>
										</li>
										 -->
										<li class="d-flex justify-content-between">
											<span>예약인원</span>
											<span class="float-right">${pRepeople}명</span>
										</li>
										
										<hr>
										<li class="d-flex justify-content-between mb-5">
											<span>총 결제금액</span>
											<span style="font-size: 15px;">${space.SPrice}원</span>
										</li>
										<button type="button" class="btn btn-primary w-75" data-toggle="modal" data-target="#myModal">결제하기</button>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Modal -->
		<div class="modal fade" id="myModal">
		  <div class="modal-dialog modal-lg" style="width:600px;">
		    <div class="modal-content" style="height: 400px;">
				<!-- Modal Header -->
				<div class="modal-header">
				  <h5 class="modal-title text-center">결제가 진행 중 입니다. 창을 닫지 마세요.</h5>
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<!-- Modal body -->
				<div style="overflow-y: auto; height: 100%;">
				      <div class="modal-body">
				      	<div>
							  <!-- HTML 코드 -->
								<select id="pWay" class="form-control" name="pWay">
								  <option value="0">선택하세요</option>
								  <option value="1">신용카드</option>
								  <option value="2">계좌이체</option>
								</select>
								<div style="height: 50px;">
									<!-- 선택하세요 박스 -->
									<div id="box0" style="display: none;">
										<p class="mt-5 text-danger">반드시 선택하세요!!</p>
									</div>
									<!-- 신용카드 박스 -->
									<div id="box1" style="display: none;">
										<div class="container mt-3">
										    <div class="form-group">
										      <label for="cardNumber">카드번호</label>
										      <input type="text" class="form-control" id="cardNumber" placeholder="카드번호를 입력하세요">
										    </div>
										    <div class="form-group">
										      <label for="cardHolder">카드 소지자</label>
										      <input type="text" class="form-control" id="cardHolder" placeholder="카드 소지자 이름을 입력하세요">
										    </div>
										    <div class="form-row">
										      <div class="form-group col-md-6">
										        <label for="expiryMonth">만료 월</label>
										        <select id="expiryMonth" class="form-control">
										          <option selected>월</option>
										          <option>1월</option>
										          <option>2월</option>
										          <option>3월</option>
										          <option>4월</option>
										          <option>5월</option>
										          <option>6월</option>
										          <option>7월</option>
										          <option>8월</option>
										          <option>9월</option>
										          <option>10월</option>
										          <option>11월</option>
										          <option>12월</option>
										        </select>
										      </div>
										      <div class="form-group col-md-6">
										        <label for="expiryYear">만료 년도</label>
										        <input type="text" class="form-control" id="expiryYear" placeholder="YYYY">
										      </div>
										    </div>
										    <div class="form-group mb-5">
										      <label for="cvv">CVV</label>
										      <input type="text" class="form-control" id="cvv" placeholder="카드 뒷면의 3자리 숫자를 입력하세요">
										    </div>
										</div>
									</div>
									<!-- 계좌이체 박스 -->
									<div id="box2" style="display: none;">
										<div class="container mt-3">
											<div class="form-group">
											  <label for="bankName">은행명</label>
											  <input type="text" class="form-control" id="bankName" placeholder="은행명을 입력하세요">
											</div>
											<div class="form-group">
											  <label for="accountHolder">예금주</label>
											  <input type="text" class="form-control" id="accountHolder" placeholder="예금주 이름을 입력하세요">
											</div>
											<div class="form-group mb-5">
											  <label for="accountNumber">계좌번호</label>
											  <input type="text" class="form-control" id="accountNumber" placeholder="계좌번호를 입력하세요">
											</div>
										</div>
									</div>
								</div>
				              <script>
								$("#pWay").change(function() {
								  // 선택된 옵션 값 가져오기
								  var selectedOption = $(this).val();
								  
								  // 해당 select 태그 숨기기
								  //$(this).hide();
								  
								  // 선택된 옵션 값에 따라 다른 박스 보여주기
								  if(selectedOption == "0") {
								    $("#box0").show();
								    $("#box1").hide();
								    $("#box2").hide();
								  } else if(selectedOption == "1") {
								    $("#box1").show();
								    $("#box0").hide();
								    $("#box2").hide();
								  } else if(selectedOption == "2") {
								    $("#box2").show();
								    $("#box1").hide();
								    $("#box0").hide();
								  }
								});
							</script>
			            </div>
				      </div>
				</div>				      
				<!-- Modal footer -->
				<div class="modal-footer">
				  <button type="button" class="btn btn-danger" onclick="submitAction();">결제완료</button>
				</div>
		     </div>
		   </div>
		</div>
	</form>
	
<script type="text/javascript">
function submitAction() {

	if(confirm("결제하시겠습니까?")){
		if ( f.pRename.value == "" ) {
			alert("예약자명을 반드시 입력해주세요.");
			f.pRename.focus();
			return;
		} 
		if ( f.pRephone.value == "" ) {
			alert("연락처를 반드시 입력해주세요.");
			f.pRephone.focus();
			return;
		} 
		if ( f.pReemail.value == "" ) {
			alert("이메일을 반드시 입력해주세요.");
			f.pReemail.focus();
			return;
		} 
		if ( f.pPurpose.value == "" ) {
			alert("사용목적을 반드시 입력해주세요.");
			f.pPurpose.focus();
			return;
		} 
		if ( f.pRequest.value == "" ) {
			alert("요청사항을 반드시 입력해주세요.");
			f.pRequest.focus();
			return;
		} 
		
		f.action = "<c:url value="/order_go"/>";
		f.submit();
	} 
}


</script>	
	
</body>
</html>