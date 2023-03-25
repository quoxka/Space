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
	<!--  
    <div class="select" style="background-color: #ebebeb;">
        <a href="${pageContext.request.contextPath }/host/host_draft" class="fs-6 text-decoration-none">정산 예정 내역</a>
    </div>
    -->
    <div class="select text-white w-75">
        <div class="text-white text-decoration-none">정산 리스트</div>
    </div>

</div>
<div class="row">
    <div class="col-lg-8 col-md-6 col-12 mx-auto">
        <div class="card mb-5">
            <div class="card-body">
                <form action="" class="d-flex justify-content-around">
                    <div class="w-25">
                        <p>결제기간</p>
                        <div class="d-flex">
                        <input type="text" class="form-control datepicker d-inline w-50" style="font-size: 0.6em;" placeholder="날짜를 선택하세요">
                        &nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;
                        <input type="text" class="form-control datepicker d-inline w-50" style="font-size: 0.6em;" placeholder="날짜를 선택하세요">
                        </div>
                    </div>
                    <div class="w-25">
                        <p>결제수단</p>
                        <select class="form-control" name="">
                            <option value="1">신용카드</option>
                            <option value="2">계좌이체</option>
                        </select>
                    </div>
                    <div class="w-25">
                        <p>공간선택</p>
					  <select class="form-control custom-select" name="sCate">
					    <option selected value="category1">공유주방</option>
					    <option value="category2">보컬연습실</option>
					    <option value="category3">렌탈스튜디오</option>
					    <option value="category4">회의실</option>
					    <option value="category5">라이브방송</option>
					    <option value="category6">카페</option>
					    <option value="category7">컨퍼런스</option>
					    <option value="category8">강의실</option>
					    <option value="category9">스몰웨딩</option>
					    <option value="category10">악기연습실</option>
					    <option value="category11">운동시설</option>
					    <option value="category12">녹음실</option>
					  </select>
                    </div>
                    <button type="submit" class="btn btn-primary">검색</button>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="text-center mb-5">
    <p class="text-danger">일반결제(NICE)는 24일, 10일 / 네이버페이(NPAY)는 이용 완료 후 2일 후에 정산됩니다. 정산 받으신 날짜를 선택하세요.</p>
    <p class="text-danger">확인했던 정산예정 내역이 안 보이시나요? 놀라지 마세요! 정산을 처리중입니다. 완료시, 정산완료 탭에서 확인할 수 있습니다.</p>
</div>

<div class="row">
	
    <div class="col-lg-8 col-md-6 col-12 mx-auto">
        <div class="card mb-5">
            <div class="card-body">
            	<p> <b>${loginHost.HName} (${loginHost.HId})</b> 호스트님 안녕하세요 :)</p>
                <table class="table" >
                    <thead>
                        <tr>
                            <th scope="col">결제번호</th>
                            <th scope="col">결제날짜</th>
                            <th scope="col">예약자명</th>
                            <th scope="col">공간명</th>
                            <th scope="col">결제수단</th>
                            <th scope="col">정산금액</th>
                            <th scope="col">결제여부</th>
                            <th scope="col">호스트 정산상태</th>
                        </tr>
                    </thead>
                    
                    <tbody id="noticetable" class="w-100" style="margin: 0 auto;">
                    </tbody>
                    
                    </table>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
var page=1;
accountListDisplay(page);

function accountListDisplay(pageNum) {
    page = pageNum;
    $.ajax({
        type: "get",
        url: "${pageContext.request.contextPath}/host/account_List?pageNum=" + pageNum,
        dataType: "json",
        success: function(result) {
        	
        	  if (result["hostSpacePayList"][0]["spacePayList"][0]["pay"]["prephone"]==null) {
          	    var html = "<tr>";
        	    html += "<th colspan='6'>정산할 정보가 없습니다.</th>";
        	    html += "</tr>";
        	    $("#noticetable").html(html);
        	    return;
        	  }
        	  
        	  var html = "";
        	  $(result.hostSpacePayList).each(function() {
        	    html += "<tr>";
        	    html += "<td scope='row'>" + this.spacePayList[0].pay.pno+ "</td>";
        	    html += "<td scope='row'>" + this.spacePayList[0].pay.pdate+ "</td>";
        	    html += "<td scope='row'>" + this.spacePayList[0].pay.prename + "</td>";
        	    html += "<td scope='row'>" + this.spacePayList[0].space.sname + "</td>";
        	    
        	    if(this.spacePayList[0].pay.pway==1){
        	    	this.spacePayList[0].pay.pway="신용카드";
        	    }
        	    if(this.spacePayList[0].pay.pway==2){
        	    	this.spacePayList[0].pay.pway="계좌이체";
        	    }
        	    
        	    html += "<td scope='row'>" + this.spacePayList[0].pay.pway + "</td>";     	    
        	    html += "<td scope='row'>" + this.spacePayList[0].space.sprice + "</td>";
        	    
        	    
        	    if(this.spacePayList[0].pay.pstatus==0){
        	    	this.spacePayList[0].pay.pstatus="결제완료";
        	    } 
        	    if(this.spacePayList[0].pay.pstatus==1){
        	    	this.spacePayList[0].pay.pstatus="환불처리";
        	    } 
        	    
        	    html += "<td scope='row'>" + this.spacePayList[0].pay.pstatus + "</td>";   	    
        	    html+="<td>";
				html+="<select class='pwstatus form-select' id='pwstatus_"+this.spacePayList[0].pay.pno+"' name='"+this.spacePayList[0].pay.pno+"' style='border-radius: 5px;'>";
				if(this.spacePayList[0].pay.pwstatus==1){
				html+="<option value='1' selected='selected'>미완료</option>";
				html+="<option value='0'>완료</option>";
				}
				if(this.spacePayList[0].pay.pwstatus==0){
					html+="<option value='1'>미완료</option>";
					html+="<option value='0' selected='selected'>완료</option>";
				}
				html+="</select>";
				html+="</td>";
        	    html += "</tr>";
        	  });
        	  $("#noticetable").html(html);
        	  pageNumDisplay(result.pager);
				//회원상태변경
				$(".pwstatus").change(function() {
					var pno=$(this).attr("name");
					var pwstatus=$(this).val();
					modify(pno);
				});
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

//결제상태정보 수정
function modify(pno) {
	var pno=pno;
	var pwstatus=$("#pwstatus_"+pno).val();

	$.ajax({
		type: "put",
		url: "${pageContext.request.contextPath}/host/account_List/"+pno,
		contentType: "application/json",
		data : JSON.stringify({"pwstatus":pwstatus}),
		dataType: "text",
		success: function (result) {
			if(result=="success"){
				accountListDisplay(page);
			}
		},
		error: function(xhr) {
			alert("에러코드(호스트 상태 변경) = "+xhr.status)
		}
	});
}

</script>



<!-- BootStrap CDN : JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
</body>
</html>