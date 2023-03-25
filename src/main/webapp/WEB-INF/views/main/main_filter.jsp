<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head >
<meta charset="UTF-8">
<title>Insert title here</title>
 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style type="text/css">
.button {
	padding: 10px;
	font-size: 24px;
	text-align: center;
	cursor: pointer;
}
/* 레이아웃 스타일 */
.personcontainer {
	display: flex;
	align-items: center;
	justify-content: center;
	margin-top: 20px;
    }
.ui-widget-header {
 background-color: #8A2BE2;
 color: #ffffff;
}    
span {
font-size: 20px;
}
a {
  color: black;
}
</style>
</head>



<body class="wd-75 row d-flex justify-content-center">
	
	
<form class="mb-5">

<div class="w-75 d-flex justify-content-center" style="margin: 0 auto;"> 

<!-- 지역 체크 박스 -->
 <div class="w-25">
    <button type="button" class="btn btn-outline-primary w-100" id="place" style="border: 1px solid #ced4da;">지역</button>  
	<div class="row">	
		<div class="col">
			<div id="place1" style="display:none;">
				<button type="button" class=" btn btn-outline-primary w-100" id="HiddenPlace1">서울</button>
				<div id="hidden_place1" style="display:none;">
			  	</div>
			</div>
		</div>
		<div class="col">
			<div id="place2" style="display:none;">
				<button type="button" class=" btn btn-outline-primary w-100" id="HiddenPlace2">대구</button>
				<div id="hidden_place2" style="display:none;">
			  	</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col">
			<div id="place3" style="display:none;">
				<button type="button" class="btn btn-outline-primary w-100" id="HiddenPlace3">원주</button>
				<div id="hidden_place3" style="display:none;">
				</div>
			</div>
		</div>	
		 <div class="col">
			<div id="place4" style="display:none;">
				<button type="button" class=" btn btn-outline-primary w-100" id="HiddenPlace4">광주</button>
				<div id="hidden_place4" style="display:none;">
			    </div>
			</div>
		</div>
	</div>
</div>

<!-- 인원 체크 박스 -->
<div class="w-25">
	<button type="button" class="btn btn-outline-primary w-75" id="person" style="border: 1px solid #ced4da; margin-left: 30px; display: none; ">인원</button>
	<div id="personcheck" style="display: none;">
		<div class="personcontainer" >
  			<div id="minus" class="button"><i class="bi bi-file-minus"></i></div>
			<input type="text" id="box" class="box w-25" name="pRepeople" value="0">
  			<div id="plus" class="button"><i class="bi bi-plus-square" style="margin-left: 10px;"></i></div>
    	</div>
     	<button type="button" id="peoplecheck" class="w-25" >확인</button>
	</div>     
</div>

	
<!-- 필터 박스 -->
<div class="w-25">
	<select class="form-control btn btn-outline-primary w-75" style="text-align: center; display: none; "  id="checkselect" onclick="showCalendar()">
		<option value="1">검색 필터</option>
		<option value="2">높은 가격순</option>
		<option value="3">낮은 가격순</option>
		<option value="4">베스트 공간순</option>
	</select>
</div>	
	
	
<!-- 달력 체크 박스 -->	
<div class="w-25">
 	<button type="button" class="btn btn-outline-primary w-75" id="calender" style="border: 1px solid #ced4da; margin-left: 0px; display: none;">달력</button>
	<div id="datecheck" style="display: none; ">
		<div id="datepicker" style="display: flex; justify-content: center;"></div>	
 		<button id="save-btn">확인</button>
	</div>
</div>


</div>
<input type="hidden" id="pRedate" name="pRedate" value="">


</form>	
		
<div id="noticetable" class="w-100" style="margin: 0 auto;"></div>
<div id="pageNumDiv"></div>
		
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</body>

<script>



$(document).ready(function() {
	$('#datepicker').datepicker({
		dateFormat: 'yy-mm-dd',
		minDate: 0,
		showOtherMonths: true,
		selectOtherMonths: true,
		onSelect: function(dateText) {
			$('#pRedate').val(dateText);
		}
	});

	

			});
			
var page=1;
noticeListDisplay(page);
			
function noticeListDisplay(pageNum) {
    page = pageNum;
    $.ajax({
        type: "get",
        url: "${pageContext.request.contextPath}/member_spaceList?pageNum=" + pageNum ,
        dataType: "json",
        success: function(result) {
            if (result.spaceList.length == 0) {
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
            $(result.spaceList).each(function() {
                if (count == 3) {
                    html += "</div><div class='row'>";
                    count = 0;
                }
                html += "<div class='col-md-4'>";
                html += " <a href='${pageContext.request.contextPath}/spaces?sno=" + this.sno + "&pRedate=" + $("#pRedate").val() + "&pRepeople=" + $("#pRepeople").val() + "' class='card-link'>";
                html += "  <div class='card mb-4'>";
                html+=	"  <div class='card-header'><img class='img-fluid w-75' src='${pageContext.request.contextPath}/images/img1/"+this.simg+"'></div>";
                html += "    <div class='card-body'>";
                

                html += "      <h5 id='pSno'> " + this.sname + "</h5>";
                html += "      <p id='pRename'><i class='bi bi-signpost-fill'></i> " + this.smap + "</p>";
                html += "      <span id='pRedate'><i class='bi bi-coin'></i> " + this.sprice + "원 / 일</span>";
                html += "      <span id='pRedate'><i class='bi bi-person'></i>: 최대 " + this.sperson + " 인</span>";
                html += "    </div>";
                html += "  </div>";
                html += "  </a>";

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


//id="place" 버튼에 클릭 이벤트 핸들러 등록
document.getElementById("place").addEventListener("click", function() {
// 지역 클래스의 내용을 보이거나 숨기도록 변경
var place1 = document.getElementById("place1");
if (place1.style.display === "none") {
  place1.style.display = "block";
} else {
  place1.style.display = "none";
}

var place2 = document.getElementById("place2");
if (place2.style.display === "none") {
  place2.style.display = "block";
} else {
  place2.style.display = "none";
}

var place3 = document.getElementById("place3");
if (place3.style.display === "none") {
  place3.style.display = "block";
} else {
  place3.style.display = "none";
}

var place4 = document.getElementById("place4");
if (place4.style.display === "none") {
  place4.style.display = "block";
} else {
  place4.style.display = "none";
}
});

//HiddenPlace1 버튼에 클릭 이벤트 핸들러 등록
document.getElementById("HiddenPlace1").addEventListener("click", function() {
// personcheck의 내용을 보이거나 숨기도록 변경
var person = document.getElementById("person");
	  person.style.display = "block";

});

//대구 버튼에 클릭 이벤트 핸들러 등록
document.getElementById("HiddenPlace2").addEventListener("click", function() {
// personcheck의 내용을 보이거나 숨기도록 변경
var person = document.getElementById("person");
	  person.style.display = "block";

});	
//원주 버튼에 클릭 이벤트 핸들러 등록
document.getElementById("HiddenPlace3").addEventListener("click", function() {
// personcheck의 내용을 보이거나 숨기도록 변경
var person = document.getElementById("person");
	  person.style.display = "block";

});
//광주 버튼에 클릭 이벤트 핸들러 등록
document.getElementById("HiddenPlace4").addEventListener("click", function() {
// personcheck의 내용을 보이거나 숨기도록 변경
var person = document.getElementById("person");
	  person.style.display = "block";
});





//box +,-이벤트 처리.
const box = document.getElementById("box");
const minusBtn = document.getElementById("minus");
const plusBtn = document.getElementById("plus");
let count = parseInt(box.value);
minusBtn.addEventListener("click", () => {
	if (count > 0){
		count--;
		box.value = count;
	}
});
plusBtn.addEventListener("click", () => {
		count++;
		box.value = count;
});


//id="person" 버튼에 클릭 이벤트 핸들러 등록
document.getElementById("person").addEventListener("click", function() {
// 지역 클래스의 내용을 보이거나 숨기도록 변경
var personcheck = document.getElementById("personcheck");
if (personcheck.style.display === "none") {
	  personcheck.style.display = "block";
} else {
	  personcheck.style.display = "none";
}
});


document.getElementById("peoplecheck").addEventListener("click", function() { 	
	  // box value 가져오기.
	  var value = document.getElementById("box").value;	  

	  // hidden 태그에 value 값 변경하기
	  $('#pPeople').val(value);
	  // checkselect 요소 보여주기
	  var checkselect = document.getElementById("checkselect");
	  checkselect.style.display = "block";
});



function showCalendar() {
    var calendar = document.getElementById("calender");
    calendar.style.display = "block";
  }



//id="calender" 버튼에 클릭 이벤트 핸들러 등록
document.getElementById("calender").addEventListener("click", function() {
// 지역 클래스의 내용을 보이거나 숨기도록 변경
var datecheck = document.getElementById("datecheck");
if (datecheck.style.display === "none") {
	  datecheck.style.display = "block";
} else {
	  datecheck.style.display = "none";
}

});			

$('#save-btn').on('click', function(event) { 
	  // 선택된 날짜 가져오기
	  var selectedDate = $('#pRedate').val();
	  
	  // hidden 태그에 value 값 변경하기
	  $('#pRedate').val(selectedDate);
	});


</script>

</html>
