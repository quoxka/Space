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
	
		.reservation-card {
	  color: #333;
	  text-decoration: none;
	  border: 1px solid #ccc;
	  border-radius: 4px;
	  display: block;
	  transition: all 0.2s ease-in-out;
	}
	
	.reservation-card:hover {
	  border-color: #555;
	  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	}
	
</style>
</head>
<body>
	<div class="container">
		<h1>예약 내역 리스트</h1>

	
			
		<div class="check-group">
			<div class="check">
				<select class="form-control">
					<option value="1">예약번호순정렬</option>
					<option value="2">이용일자순정렬</option>
				</select>
			</div>
			<div class="check">
				<select class="form-control">
					<option value="1">전체상태</option>
					<option value="2">결제대기</option>
					<option value="3">예약확정</option>
					<option value="4">이용완료</option>
					<option value="5">취소환불</option>
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
	        url: "${pageContext.request.contextPath}/member_reserveList?pageNum=" + pageNum,
	        dataType: "json",
	        success: function(result) {
	            if (result.reserveList.length == 0) {
	                var html = "<table>";
	                html += "<tr>";
	                html += "<th colspan='6'>작성된 게시글이 없습니다.</th>";
	                html += "</tr>";
	                html += "</table>";
	                $("#noticetable").html(html);
	                return;
	            }
	            var html = "<div class='row'>";
	            var count = 0;
	            $(result.reserveList).each(function() {
	                if (count == 3) {
	                    html += "</div><div class='row'>";
	                    count = 0;
	                }
	                html += "<div class='col-md-4'>";
	                html += "  <div class='card mb-4'>";
	                html += "    <div class='card-header'>";
	                html += "      예약번호: " + this.reserveList[0].pno;
	                html += "    </div>";

	                html += "    <div class='card-body'>";
	                

	                html += "      <h5 id='pSno'>공간번호: " + this.reserveList[0].psno + "</h5>";
	                html += "      <h5 id='pRename'>예약자명: " + this.reserveList[0].prename + "</h5>";
	                html += "      <h5 id='pRedate'><i class='bi bi-calendar2-heart'></i>: " + this.reserveList[0].predate + "</h5>";
	                html += "      <h5 id='pRepeople'><i class='bi bi-person-circle'></i> : " + this.reserveList[0].prepeople + "명 </h5>";
	                html +="<button type='button' onclick='remove("+this.rno+");' id='removeBtn' class='btn btn-primary btn-sm'>글 삭제</button>";
	                html += "    </div>";
	                html += "  </div>";

	                html += "</div>";
	               
	                count++;
	            });
	            html += "</div>";	
	            $("#noticetable").html(html);
	            pageNumDisplay(result.pager);
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
			