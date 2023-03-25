<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Space Moon</title>
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
</style>
<!-- Datepicker 플러그인 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

<script>
$(document).ready(function(){
  $('.datepicker').datepicker({
	format: 'yyyy-mm-dd',  // 날짜 형식 설정
	autoclose: true,  // 선택한 날짜 자동 닫기
  });
});
</script>
</head>

<body>
<div class="select-group mb-5">
	<div class="select text-white">
		<a href="${pageContext.request.contextPath }/account/host_draft"  class="text-white fs-6 text-decoration-none">정산 예정 내역</a>
	</div>
	<div class="select" style="background-color: #ebebeb;">
		<a href="${pageContext.request.contextPath }/account/host_account" class="fs-6 text-decoration-none">정산 완료 내역</a>
	</div>
</div>

<div class="row">
	<div class="col-lg-8 col-md-6 col-12 mx-auto">
		<div class="card mb-5">
			<div class="card-body">
				<form action="" class="d-flex justify-content-around">
					<div class="w-50">
						<p style="text-align: center;">결제기준</p>
						<div class="d-flex justify-content-center">
						<input type="text" class="form-control datepicker d-inline w-25" style="font-size: 0.6em;" placeholder="날짜를 선택하세요">
						&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;
						<input type="text" class="form-control datepicker d-inline w-25" style="font-size: 0.6em;" placeholder="날짜를 선택하세요">
						</div>
					</div>
					<div class="w-25">
						<p>공간선택</p>
                        <select class="form-control" name="">
                            <option value="option1">공유주방</option>
                            <option value="option2">보컬연습실</option>
                            <option value="option3">렌탈스튜디오</option>
                            <option value="option3">회의실</option>
                            <option value="option3">라이브방송</option>
                            <option value="option3">카페</option>
                            <option value="option3">컨퍼런스</option>
                            <option value="option3">강의실</option>
                            <option value="option3">스몰웨딩</option>
                            <option value="option3">악기연습실</option>
                            <option value="option3">악기연습실</option>
                            <option value="option3">운동시설</option>
                            <option value="option3">녹음실</option>
                        </select>
					</div>
					<button type="submit" class="btn btn-primary">검색</button>
				</form>
			</div>
		</div>
	</div>
</div>

<div class="text-center mb-5">
	<p>2022.12.14 ~ 2023.03.14기간에 결제된 내역입니다.</p>
	<p class="text-danger">아래는 정산 예정 정보이며 실제 정산일 또는 정산금액과 다를 수 있습니다.</p>
	<p class="text-danger">확인했던 정산예정 내역이 안 보이시나요? 놀라지 마세요! 정산을 처리중입니다. 완료시, 정산완료 탭에서 확인할 수 있습니다.</p>
	<p>일반결제(NICE)는 24일, 10일 / 네이버페이결제(NPAY), 크레딧(CRD)는 이용 완료 후 2일 후에 정산됩니다.</p>
	<p class="text-danger">PC 접속 시, 정산내역을 더 편리하게 확인하실 수 있습니다.</p>
</div>

		<div id="noticetable" class="w-100" style="margin: 0 auto;"></div>
		<div id="pageNumDiv"></div>
		

			
	<button onclick="location.href='${pageContext.request.contextPath}/member_review_write'" type="button" id="writeBtn" class="btn btn-primary btn-sm">게시글등록</button>
	
	</body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	
	<script type="text/javascript">
	var page=1;
	noticeListDisplay(page);
	
	function noticeListDisplay(pageNum) {
	    page = pageNum;
	    $.ajax({
	        type: "get",
	        url: "${pageContext.request.contextPath}/order_List?pageNum=" + pageNum,
	        dataType: "json",
	        success: function(result) {
	        	  if (result.orderList.length == 0) {
	        	    var html = "<table>";
	        	    html += "<tr>";
	        	    html += "<th colspan='6'>작성된 게시글이 없습니다.</th>";
	        	    html += "</tr>";
	        	    html += "</table>";
	        	    $("#noticetable").html(html);
	        	    return;
	        	  }
	        	  var html = "<div class='row'>";
	        	  html += "<div class='col-lg-8 col-md-6 col-12 mx-auto'>";
	        	  html += "<div class='card mb-5'>";
	        	  html += "<div class='card-body'>";
	        	  html += "<table class='table'>";
	        	  html += "<thead>";
	        	  html += "<tr>";
	        	  html += "<th scope='col'>결제일</th>";
	        	  html += "<th scope='col'>예약번호</th>";
	        	  html += "<th scope='col'>공간명</th>";
	        	  html += "<th scope='col'>PG</th>";
	        	  html += "<th scope='col'>예약자명</th>";
	        	  html += "<th scope='col'>정산예정금액</th>";
	        	  html += "<th scope='col'>정산예정일</th>";
	        	  html += "<th scope='col'>상세</th>";
	        	  html += "</tr>";
	        	  html += "</thead>";
	        	  html += "<tbody>";
	        	  $(result.orderList).each(function() {
	        	    html += "<tr>";
	        	    html += "<td scope='row'>" + this.paymentDate + "</td>";
	        	    html += "<td scope='row'>" + this.reservationNo + "</td>";
	        	    html += "<td scope='row'>" + this.spaceName + "</td>";
	        	    html += "<td scope='row'>" + this.pg + "</td>";
	        	    html += "<td scope='row'>" + this.reserverName + "</td>";
	        	    html += "<td scope='row'>" + this.settlementAmount + "</td>";
	        	    html += "<td scope='row'>" + this.settlementDate +	 "</td>";
	        	    html += "<td scope='row'><a href='reservation_detail?reservationNo=" + this.reservationNo + "'>상세보기</a></td>";
	        	    html += "</tr>";
	        	  });
	        	  html += "</tbody>";
	        	  html += "</table>";
	        	  html += "</div>";
	        	  html += "</div>";
	        	  html += "</div>";
	        	  html += "</div>";
	        	  pageNumDisplay(result.pager)
	        	  $("#noticetable").html(html);
	        	},
	        error: function(xhr, status, error) {
	            console.log(error);
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
	
</html>
			
