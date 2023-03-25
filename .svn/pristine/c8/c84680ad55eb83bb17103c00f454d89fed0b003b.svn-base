<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Space Moon</title>
<style type="text/css">
.section {
    padding: 20px 0;
    position: relative;
}

.heading_required {
	font-size: 20px;
}
.star {
	color: red;
}

.input-file-button{
  padding: 6px 25px;
  background-color:#FF6600;
  border-radius: 4px;
  color: white;
  cursor: pointer;
}

.select {
    padding: 15px 10px;
}
.select input[type=radio]{
    display: none;
}
.select input[type=radio]+label{
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
.select input[type=radio]+label{
    background-color: #fff;
    color: #333;
}
.select input[type=radio]:checked+label{
    background-color: #333;
    color: #fff;
}
.space_refund {
	border-color: #FF6600;
	outline: none;
}
li {
	display: inline-block;
	list-style: none;
}
#registerBtn {
	background-color: #35404E;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}
.msg{
	color: red;
	font-size: 0.8em;
	display: none;
}
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<div class="wrap w-75" style="margin: 0 auto;">
		<form action="<c:url value="/sRegister/add"/>" name="f" method="post" enctype="multipart/form-data" >
			<section>
			<div class="page_title"><h2>기본 정보</h2></div>
			
				<div class="heading">
					<span class="heading_required">공간 정보를 입력해주세요.</span>
				</div>
				
				
				
				<!-- 입력값 검증 -->
				<!-- 공간명 : sName -->
				<div class="section">
					<div class="section1">
						<span>공간명</span>
						<span id="characterCount">0</span><span>자/18자</span>
					</div>
					<input name="sName" id="sName" class="form-control" type="text" value="${space.SName}"
						placeholder="고유 업체명을 입력해주세요.(예시) 인디워커스 하이브 회의실" maxlength="18" aria-describedby="emailHelp">
					<small id="emailHelp" class="form-text text-muted" style="color: red;">사용 가능한 특수문자 : (,),[,],-,.(마침표),,(쉼표)</small>
				</div>
				<script type="text/javascript">
				var input = document.getElementById("sName");
				var countElement = document.getElementById("characterCount");

				input.addEventListener("input", function() {
				  var characterCount = input.value.length;

				  countElement.innerText = characterCount;
				});
				</script>
				
				
				
				<!-- 입력값 검증 -->
				<!-- 공간 가격 : sPrice -->
				<div class="section">
					<div class="section1">
						<span>가격</span>
						<span class="star">*</span>
					</div>
					<input name="sPrice" id="sPrice" class="form-control" type="text" placeholder="1박당 가격으로 작성해주세요."
					value="${space.SPrice}">
				</div>
				
				
				
				<!-- 공간 유형 : sCate -->
				<div class="section">
					<div class="section1">
						<span>공간 유형</span>
						<span class="star">*</span>
					</div>
					<div style="padding-bottom: 20px;">
						<p class="guide_warn">빠른 검수 통과를 위해 반드시 공간에 적합한 유형을 선택해주세요! 부적합한 유형 선택시 검수 반려 사유가 됩니다.</p>
					</div>
					<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <label class="input-group-text" for="sCate">공간 유형</label>
					  </div>
					  <select class="custom-select" id="sCate" name="sCate">
					    <option selected value="cate1">공유주방</option>
					    <option value="cate2">보컬연습실</option>
					    <option value="cate3">렌탈스튜디오</option>
					    <option value="cate4">회의실</option>
					    <option value="cate5">라이브방송</option>
					    <option value="cate6">카페</option>
					    <option value="cate7">컨퍼런스</option>
					    <option value="cate8">강의실</option>
					    <option value="cate9">스몰웨딩</option>
					    <option value="cate10">악기연습실</option>
					    <option value="cate11">운동시설</option>
					    <option value="cate12">녹음실</option>
					  </select>
					</div>
				</div>
				
				
				
				<!-- 공간 소개 : sInfo -->
				<div class="section">
					<div class="section1">
						<span>공간 소개</span>
					</div>
					<div class="form-group">
					    <label for="sInfo"></label>
					    <textarea name="sInfo" class="form-control" id="sInfo" rows="3" 
					    	placeholder="게스트들에게 필요한 공간 정보를 상세하게 소개해주세요.">${space.SInfo}</textarea>
					</div>
				</div>
				
				
				<!-- 공간 태그 : sTag -->
				<div class="section">
					<div class="section1">
						<span>공간 태그</span>
					</div>
					<div class="input-group mb-3">
						<input type="text" name="sTag" id="sTag" class="form-control" value="${space.STag}"
							placeholder="게스트들이 선호할만한 주요 특징을 키워드로 입력해주세요.(짧고 간결하게! 최대 15자)" maxlength="15">
					</div>
				</div>
				
				
				
				
				<!-- 시설 안내 : sGuide -->
				<div class="section">
					<div class="section1">
						<span>시설 안내</span>
					</div>
					<div class="form-group">
					    <label for="sGuide"></label>
					    <textarea name="sGuide" class="form-control" id="sGuide" rows="3" 
					    	placeholder="이용 가능한 시설에 대해 최대한 상세하게 입력해주세요.">${space.SGuide}</textarea>
					</div>
				</div>
				
				
				
				<!-- 사용 가능한 인원 수 : sPerson -->
				<div class="section">
					<div class="section1">
						<span>사용 가능한 인원 수</span>
					</div>
					<input type="text" class="form-control" name="sPerson" id="sPerson" placeholder="사용 가능한 인원수를 입력해주세요."
						value="${space.SPerson}">
				</div>
				
				
				
				<!-- 예약 시 주의사항 : sNotice -->
				<div class="section">
					<div class="section1">
						<span>예약 시 주의사항</span>
					</div>
					<div class="form-group">
					    <label for="sNotice"></label>
					    <textarea name="sNotice" class="form-control" id="sNotice" rows="3" 
					    	placeholder="게스트들이 예약 시 확인해야 하는 주의사항을 상세하게 입력해주세요.">
					    	${space.SNotice}
					    </textarea>
					</div>
				</div>
				
				
				
				<!-- 대표이미지 : sImg -->
				<div class="section">
					<div class="section1">
						<span>대표 이미지</span>
					</div>
					<div class="form-group">
					    <label for="exampleFormControlTextarea1"></label>
					    <input type="file" name=uploadFile1 id="sImg" value="${space.SImg}"
					    	style="padding: 6px 25px; background-color: #704de4; 
					    	border-radius: 4px; color: white; cursor: pointer; ">
					</div>
				</div>
				
				
				
				<!-- 상세이미지 : sImg2 -->
				<div class="section">
					<div class="section1">
						<span>상세 이미지</span>
					</div>
					<div class="form-group">
					    <label for="exampleFormControlTextarea1"></label>
					    <input type="file" name="uploadFile2" id="sImg2" value="${space.SImg2}"
					    	style="padding: 6px 25px; background-color: #704de4; 
					    	border-radius: 4px; color: white; cursor: pointer; ">
					</div>
				</div>
				
				
				
				<!-- 주소 & 상세주소 :  -->
				<div class="section">
					<div class="section1">
						<span>주소(위치)</span>
					</div>
					<div>
						<span class="star">공간 주소는 최초 등록 이후 직접 변경할 수 없습니다.</span>
						<span style="color: #0000EE">고객센터</span><span class="star">를 통해 주소 변경을 요청해주세요.</span><br>
				  	    <label for="sample6_postcode"></label>
				 	    <input type="text" name="sMap" class="form-control" id="addr1" 
				 	    value="${space.SMap}" readonly>
				 	    <br>
				 	    <input type="text" name="sDetailMap" class="form-control" id="sample6_detailAddress" 
				 	    value="${space.SDetailMap}" readonly>
				    </div>
				</div>
				
				
				
				
				<!-- 위치정보 -->
				<div class="section">
					<div class="section1">
						<span>위치정보</span>
					</div>
					<div class="form-group">
						<input name="sLocation" id="sLocation" class="form-control" type="text" 
							value="${space.SLocation}" placeholder="ex.강남역 도보 5분 거리(최대 20자)" maxlength="20">
					</div>
				</div>
				
				
				
				<div class="page_title"><h2>이용 안내</h2></div>
				<div class="heading">
					<span class="heading_required">이용 정보를 입력해주세요.</span>
					<span class="heading_icon" style="color: red;">*&nbsp;필수입력</span>
				</div>
				<div class="alert alert-primary" role="alert">
				  Space Moon은 정기휴무 없이 연중무휴입니다. 이 점 참고하여 등록해주시기 바랍니다. 
				</div>
				
				
				
				<!-- 주차 여부 : sParking -->
				<div class="section">
					<div class="section1">
						<span>주차여부</span>
					</div>
					<div class="form-group">
					    <label for="sParking"></label>
					    <select name="sParking" class="form-control" id="sParking">
							<option selected="selected">주차 여부를 선택해주세요.</option>
							<option value="0">주차 불가</option>
							<option value="1">1대</option>
							<option value="2">2대</option>
							<option value="3">3대</option>
							<option value="4">4대 이상</option>
					    </select>
					    <div id="input-container"></div>
					</div>
				</div>
				
				
				
				
				<!-- 엘리베이터 여부 : sElevator -->
				<div class="section">
					<div class="section1">
						<span class="space_tag">엘리베이터 여부</span>
					</div>
					<div class="select">
					     <input type="radio" id="select" name="sElevator" value="elevator_exist"><label for="select">있음</label>
					     <input type="radio" id="select2" name="sElevator" value="elevator_noexist"><label for="select2">없음</label>
					</div>
				</div>
				
				
				
				<div class="page_title"><h2>예약/정산 정보</h2></div>
				<div class="alert alert-primary" role="alert">
				  Space Moon은 바로결제 방법으로만 결제 방식을 택합니다. 이 점 참고하여 등록해주시기 바랍니다.<br>
				</div>
				<div class="heading">
					<span class="heading_required">정산 정보를 입력해주세요.</span>
				</div>






				
				<!-- 상호명 : hSpacename -->
				<div class="section">
					<div class="section1">
						<span>상호명(개인/법인)</span>
						<span class="star">*</span>
					</div>
					<input name="hSpacename" id="hSpacename" class="form-control" type="text" 
						placeholder="상호명을 입력해주세요.(최대 28자)" value="${loginHost.HSpacename}" maxlength="28">
				</div>
				<div class="mb-5">
				</div>
				
				
				
				<!-- 입력값 검증 -->
				<!-- 대표자명 : hCeoname -->
				<div class="section">
					<div class="section1">
						<span>대표자명</span>
					</div>
					<input name="hCeoname" id="hCeoname" value="${loginHost.HCeoname}" class="form-control" type="text"
						placeholder="대표자명을 입력해주세요.">
				</div>
				<div class="mb-5">
					<span id="hCeonameValidMsg" class="msg">대표자명을 형식에 맞게 입력해 주세요.</span>	
				</div>
				
				
				
				<!-- 입력값 검증 -->
				<!-- 사업자 등록번호 : hNum -->
				<div class="section">
					<div class="section1">
						<span>사업자 등록번호</span>
					</div>
					<!-- 입력값 검증 - 전화번호 참고 -->
					<input name="hNum" id="hNum" value="${loginHost.HNum}" class="form-control" type="text">
				</div>
				<div class="mb-5">
					<span id="hNumValidMsg" class="msg">3~4 자리의 숫자로만 입력 가능합니다.</span>
				</div>
				
				
				
				<div class="heading">
					<span class="heading_required">계좌 정보를 입력해주세요.</span>
				</div>
				
				
				
				<!-- 은행명 : hBank -->
				<div class="section">
					<div class="section1">
						<span>은행명</span>
					</div>
					<div class="form-group">
					    <label for="hBank"></label>
					    <select class="form-control" id="hBank" name="hBank" >
					      <option value="bank1">농협은행</option>
					      <option value="bank2">신한은행</option>
					      <option value="bank3">카카오뱅크</option>
					      <option value="bank4">케이뱅크</option>
					      <option value="bank5">우리은행</option>
					    </select>
					</div>
				</div>
				<div class="mb-5">
				</div>
				
				
				
				<!-- 입력값 검증 -->
				<!-- 계좌번호 : hAccount -->
				<div class="section">
					<div class="section1">
						<span>계좌번호</span>
					</div>
					<input name="hAccount" id="hAccount" class="form-control" value="${loginHost.HAccount}" type="text">
				</div>
				<div class="mb-5">
					<span id="hAccountValidMsg" class="msg">3~4 자리의 숫자로만 입력 가능합니다.</span>
				</div>
				
				
				
				<!-- 입력값 검증 -->
				<!-- 예금주 : hAccountname -->
				<div class="section">
					<div class="section1">
						<span>예금주</span>
						<span class="star">*</span>
					</div>
					<input name="hAccountname" id="hAccountname" class="form-control" value="${loginHost.HAccountname}" type="text">
				</div>
				<div class="mb-5">
					<span id="hAccountnameValidMsg" class="msg">이름을 형식에 맞게 입력해 주세요.</span>
				</div>
				
				
				
				<!-- 환불 기준 : sRefund -->
				<!-- 값 저장 해야함 -->
				<div class="page_title"><h2>환불 기준</h2></div>
				<input name="sRefund" id="sRefund" class="form-control" readonly 
					value="Space Moon은 이용 8일 전 환불 시 총 금액의 100% 환불가능하지만 7일 전~이용 당일 환불 불가능합니다. 이 점 참고하여 등록해주시기 바랍니다.">
				
				
				<div class="btn">
					<button type="submit" id="registerBtn">등록하기</button>
				</div>
			</section>
		</form>
	</div>
	
	<!-- 입력값 형식 검증 -->
	<script type="text/javascript">
	$("#sName").focus();
	var submitResult;
	
	$("#registerBtn").submit(function() {
		submitResult=true;
		$(".msg").css("display","none");
		
		//공간명 
		var sNameReg=/(!=[!@#$%^&*+=?;:]){2,19}$/g;
		if(!sNameReg.test($("#sName").val())) { //입력값이 형식에 맞지 않는 경우
			$("#sNameValidMsg").css("display","block");
			submitResult=false;
		} 
		
		//공간 가격 
		
		
		//대표자명
		var hCeonameReg=/^[가-힣]{2,10}$/g;
		if(!hCeoNameNameReg.test($("#hCeoname").val())) { //입력값이 형식에 맞지 않는 경우
			$("#hCeonameValidMsg").css("display","block");
			submitResult=false;
		} 
		
		//사업자 등록번호 
		var hNumReg=/[0-9]{1,2}-[^0][0-9]{2,3}-[0-9]{3,4}/;
		if(!hNumReg.test($("#hNum").val())) { //입력값이 형식에 맞지 않는 경우
			$("#hNumValidMsg").css("display","block");
			submitResult=false;
		}
		
		//계좌번호 hAccount
		var hAccountReg=/[0-9]{1,2}-[^0][0-9]{2,3}-[0-9]{3,4}/;
		if(!hAccountReg.test($("#hAccount").val())) { //입력값이 형식에 맞지 않는 경우
			$("#hAccountValidMsg").css("display","block");
			submitResult=false;
		}
		
		//예금주 hAccountName
		var hAccountNameReg=/^[가-힣]{2,10}$/g;
		if(!hAccountNameReg.test($("#hAccountname").val())) { //입력값이 형식에 맞지 않는 경우
			$("#hAccountnameValidMsg").css("display","block");
			submitResult=false;
		} 
		
		return submitResult;
	});
	
	</script>
</body>
</html>