<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Space Moon</title>
</head>
<body>

<div class="content" style="width: 1300px; margin: 0 auto; position: relative; text-align: center;" >
<br>
<h3>공지사항 관리</h3>
<br>
<br>
<p class="d-flex justify-content-between">
	<span style="font-weight: 600;">전체 게시글 : ${totalNoticeCount } 개</span> 
	<span style=""><input type="text">  <button type="button" class="btn btn-primary btn-sm">검색</button></span>
</p>
<div>
	<form class="row gx-3 gy-2 align-items-center">
	
	<div id="noticetable" class="w-100" style="margin: 0 auto;"></div>
	
	</form>
	<div style="text-align: center;">
	<br>
		<p><button onclick="location.href='${pageContext.request.contextPath }/admin/notice/write';" type="button" id="writeBtn" class="btn btn-primary btn-sm">게시글등록</button>
		<button type="button" id="removeBtn" class="btn btn-primary btn-sm" onclick='remove();'>선택게시글삭제</button></p>
	</div>
	</div>
	</div>
	<div id="pageNumDiv"></div>
	
	<script type="text/javascript">
	var page=1;
	noticeListDisplay(page);
	
	function noticeListDisplay(pageNum) {
		page=pageNum;
		$.ajax({
			type: "get",
			url: "${pageContext.request.contextPath}/admin/noticeList?pageNum="+pageNum+"&nmstatus="+${nmstatus}+"&nstatus="+${nstatus},
			dataType: "json",
			success: function (result) {
				if(result.noticeList.length==0){
					var html="<table>";
					html+="<tr>";
					html+="<th colspan='6'>작성된 게시글이 없습니다.</th>";
					html+="</tr>";
					html+="</table>";
					$("#noticetable").html(html);
					return;
				}
				var html="<table class='table table-hover' >";
				html+="<thead>";
				html+="<tr>";
				html+="<th><input type='checkbox' id='allCheck' name='allCheck' class='check'></th>";
				html+="<th scope='col'>No</th>";
				html+="<th scope='col'>";
				html+="<select class='form-select' id='nmstatusfilter' style='width: 100px; height: 25px; border-radius: 5px; font-weight: bold; text-align: center;'>";
				html+="<option value='2' selected='selected'>공지 대상</option>";
				html+="<option value='1' >사용자</option>";
				html+="<option value='0' >호스트</option>";
				html+="<option value='2' >전체선택</option>";
				html+="</select>";
				html+="</th>";
				html+="<th scope='col'>제목</th>";
				html+="<th scope='col'>작성일자</th>";
				html+="<th scope='col'>";
				html+="<select class='form-select' id='nstatusfilter' style='height: 25px; border-radius: 5px; font-weight: bold;'>";
				html+="<option selected='selected'>상태</option>"	;
				html+="<option value='1' >일반글</option>";
				html+="<option value='0' >삭제글</option>";		
				html+="<option value='2' >전체선택</option>";		
				html+="</select>";		
				html+="</th>";
				html+="</tr>";		
				html+="</thead>";		
				html+="<tbody>";		
				$(result.noticeList).each(function() {
				html+="<tr>";
				html+="<td><input type='checkbox' name='checkId' id='"+this.nno+"' class='check'></td>";
				html+="<td scope='row'>"+this.rn+"</td>";
				html+="<td>";
				html+="<select class='selectnmstatus' id='selectnmstatus_"+this.nno+"' name='"+this.nno+"' style='border-radius: 5px; width: 100px; text-align: center;'>";
				if(this.nmstatus==1){
				html+="<option value='1' selected='selected'>사용자</option>";
				html+="<option value='0' >호스트</option>";
				} else {
				html+="<option value='1' >사용자</option>";
				html+="<option value='0' selected='selected'>호스트</option>";	
				}
				html+="</select>";
				html+="</td>";
				html+="<td style='text-align: left;'><a href='${pageContext.request.contextPath }/admin/notice/view?nno="+this.nno+"';>"+this.ntitle+"</a></td>";
				html+="<td scope='row'>"+(this.ndate).substring(0,10) +"</td>";
				html+="<td>";
				html+="<select class='selectnstatus' id='selectnstatus_"+this.nno+"' name='"+this.nno+"' style=' border-radius: 5px;'>";
				if(this.nstatus==1){
				html+="<option value='1' selected='selected'>일반글</option>";
				html+="<option value='0' >삭제글</option>";
				} else {
				html+="<option value='1'>일반글</option>";
				html+="<option value='0'  selected='selected'>삭제글</option>";
				}				
				html+="</select>";
				html+="</td>";
				html+="</tr>";
				});
				html+="</tbody>";
				html+="</table>";
				
				$("#noticetable").html(html);
				pageNumDisplay(result.pager)
				
				//전체선택
				$("#allCheck").change(function() {
				      if ($(this).is(":checked")) {
				        $(".check").prop("checked", true);
				      } else {
				        $(".check").prop("checked", false);
				      }
				});
				
				//공지대상상태 변경처리
				$(".selectnmstatus").change(function() {
					var nno=$(this).attr("name");
					var nmstatus=$(this).val();
					modify(nno);
				});
				
				//공지글 상태 변경처리
				$(".selectnstatus").change(function() {
					var nno=$(this).attr("name");
					var nstatus=$(this).val();
					modify(nno);
				});
				
				
				//전체 리스트에 대한 상태변경시 필터링하여 검색 (공지대상)
				const selectElement = document.querySelector("#nmstatusfilter");
				selectElement.addEventListener('change', () => {
					  const selectedValue = selectElement.value;
					  const searchQuery = new URLSearchParams(window.location.search);
					  searchQuery.set('nmstatus', selectedValue);
					  window.location.search = searchQuery.toString();
					});
				
				//전체 리스트에 대한 상태변경시 필터링하여 검색 (게시글상태)
				const mselectElement = document.querySelector("#nstatusfilter");
				mselectElement.addEventListener('change', () => {
					  const mselectedValue = mselectElement.value;
					  const msearchQuery = new URLSearchParams(window.location.search);
					  msearchQuery.set('nstatus', mselectedValue);
					  window.location.search = msearchQuery.toString();
					});
				
			},
			error: function(xhr) {
				alert("에러코드(게시글 목록 검색) = "+xhr.status)
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
	
	
	function modify(nno) {
		var nno=nno;
		var nmstatus=$("#selectnmstatus_"+nno).val();
		var nstatus=$("#selectnstatus_"+nno).val();

		$.ajax({
			type: "put",
			url: "${pageContext.request.contextPath}/admin/notice/modifystatus/"+nno,
			contentType: "application/json",
			data : JSON.stringify({"nmstatus":nmstatus,"nstatus":nstatus }),
			dataType: "text",
			success: function (result) {
				if(result=="success"){
				noticeListDisplay(page);
				}
			},
			error: function(xhr) {
				alert("에러코드(게시글 변경) = "+xhr.status)
			}
		});
	}
	
	
	function remove() {
		var count=$("input[name='checkId']:checked").length;
		var removearray= new Array();
		$("input[name='checkId']:checked").each(function () {
			removearray.push($(this).attr('id'));
		});
		if(count==0){
			alert("선택된 게시글이 없습니다.");
		} else{
			if(confirm("게시글을 삭제 하시겠습니까?")) {
				$.ajax({
					type: "post",
					url: "${pageContext.request.contextPath}/admin/noticeremove",
					data: {notice : removearray},
					dataType: "text",
					success: function(result) {
						if(result=="success") {
							noticeListDisplay(page);
						}
					}, 
					error: function(xhr) {
						alert("에러코드(게시글 삭제) = "+xhr.status)
					}
				});
			}
		}
	}
	
	</script>	
</body>
</html>