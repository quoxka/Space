<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 
	<meta charset="utf-8">
	 <link href="css/style.css" rel="stylesheet" type="text/css" />
	 
	<title>예약 관리 리스트</title>
	
	
<style type="text/css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	

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
</head>
<body>
	<div class="container">
		<h1>이용 후기 관리</h1>
		
		<!-- 예약 정보 검색 UI -->
		<div class="row mb-4">
			
				<div class="select-group">
					<div class="select"  style="background-color: #ebebeb;">
						<a href="{pageContext.request.contextPath}/host_review">이용 후기</a>
					</div>	
					<div class="select text-white">
						<a href="{pageContext.request.contextPath}/host_qna">Q&amp;A</a>
					</div>
				</div>
	
			</div>
			
			
			
		<div class="check-group">
			<div class="check">
				<select class="form-control">
					<option value="1">전체</option>
					<option value="2">미답변</option>
					<option value="3">답변</option>
				</select>
			</div>
		
		</div>
	</div>
	
		<div id="noticetable" class="w-100" style="margin: 0 auto;"></div>
		<div id="pageNumDiv"></div>
		

	</body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	
	<script type="text/javascript">
	var page=1;
	noticeListDisplay(page);
	
	function noticeListDisplay(pageNum) {
	    page = pageNum;
	    $.ajax({
	        type: "get",
	        url: "${pageContext.request.contextPath}/host_questionList?pageNum=" + pageNum,
	        dataType: "json",
	        success: function(result) {
	        	  if (result.questionList.length == 0) {
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
	        	  html += "<th scope='col'>공간 번호</th>";
	        	  html += "<th scope='col'>Q&A 번호</th>";
	        	  html += "<th scope='col'>제목</th>";
	        	  html += "<th scope='col'>내용</th>";
	        	  html += "<th scope='col'>답변 상태</th>";
	        	  html += "<th scope='col'>회원 ID</th>";
	        	  html += "<th scope='col'>상세</th>";
	        	  html += "</tr>";
	        	  html += "</thead>";
	        	  html += "<tbody>";
	        	  $(result.questionList).each(function() {
	        	    html += "<tr>";
	         	    html += "<td scope='row'>" + this.questionList[0].qsno + "</td>";
	        	    html += "<td scope='row'>" + this.questionList[0].qno + "</td>";
	        	    html += "<td scope='row'>" + this.questionList[0].qtitle + "</td>";
	        	    html += "<td scope='row'>" + this.questionList[0].qcontent + "</td>";
	        	    html += "<td scope='row'>" + this.questionList[0].qstatus + "</td>";
	        	    html += "<td scope='row'>" + this.questionList[0].qmid + "</td>";

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
	        	}

	        				
	        				
	        			,
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
			