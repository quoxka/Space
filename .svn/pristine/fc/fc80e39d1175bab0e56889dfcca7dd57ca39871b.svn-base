<%@page import="xyz.itwill.service.AdminService"%>
<%@page import="xyz.itwill.dto.Pay"%>
<%@page import="xyz.itwill.service.SpaceService"%>
<%@page import="xyz.itwill.dto.Space"%>
<%@page import="java.util.List"%>
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
<h3>정산 관리</h3>
<br>
<br>
<p class="d-flex justify-content-between">
	<span style="font-weight: 600;">정산 미완료 : ${totalnonpayCount} 건</span> 
	<span style=""><input type="text">  <button type="button" class="btn btn-primary btn-sm">검색</button></span>
</p>
 
<div id="paylisttable"></div>
<div id="pageNumDiv"></div>
<input type="hidden" name="pwstatus" value="${pwstatus}">
<script type="text/javascript">
	var page=1;
	payListDisplay(page);
	
	function payListDisplay(pageNum) {
		page=pageNum;
		$.ajax({
			type: "get",
			url: "${pageContext.request.contextPath}/admin/payList?pageNum="+pageNum+"&pwstatus="+${pwstatus},
			dataType: "json",
			success: function (result) {
				if(result.payList.length==0){
					var html="<table class='table'>";
					html+="<tr>";
					html+="<th colspan='6'>등록된 정산내용이 없습니다.</th>";
					html+="</tr>";
					html+="</table>";
					$("#payListDisplay").html(html);
					return;
				}
				
				var html="<form class='row gx-3 gy-2 align-items-center'>";
				html="<table class='table table-hover' >";
				html+="<thead>";
				html+="<tr>";
				html+="<th scope='col'>No</th>";
				html+="<th scope='col'>호스트 ID</th>";
				html+="<th scope='col'>결제번호</th>";
				//html+="<th scope='col'>정산금액</th>";
				html+="<th scope='col'>정산일자</th>";
				html+="<th scope='col'>";
				html+="<select class='form-select' id='statusfilter' style='height: 25px; border-radius: 5px; font-weight: bold;'>";
				html+="<option value='2' selected='selected'>정산상태</option>";
				html+="<option value='0' >미완료</option>";
				html+="<option value='9' >완료</option>";
				html+="<option value='2' >전체선택</option>";
				html+="</select>";
				html+="</th>";
				html+="</tr>";
				html+="</thead>";
				html+="<tbody>";
				
				$(result.payList).each(function() {
					if(this.pwstatus==0 || this.pwstatus==9 ){
				html+="<tr>";
				html+="<td scope='row'>"+this.rn+"</td>";
				html+="<td>"+this.pmid+"</td>";
				html+="<td>"+this.pno+"</td>";
				//html+="<td>"+this.sprice+"</td>";
				html+="<td>"+this.pwdate+"</td>";
				html+="<td>";		
				html+="<select class='pwstatus' id='pwstatus_"+this.pno+"' name='"+this.pno+"' style='height: 25px; border-radius: 5px;'>";	
				if(this.pwstatus==0){
				html+="<option value='0' selected > 미완료 </option>";		
				html+="<option value='9' >완료</option>";		
				}
				if(this.pwstatus==9){
					html+="<option value='0' selected > 미완료 </option>";		
					html+="<option value='9' selected >완료</option>";		
				}
				html+="</select>";		
				html+="</td>";		
				html+="</tr>";
					}
				});
				html+="</tbody>";		
				html+="</table>";		
				html+="</form>";							
				
				$("#paylisttable").html(html);
				pageNumDisplay(result.pager)
				
				//정산상태변경
				$(".pwstatus").change(function() {
					var pno=$(this).attr("name");
					var pwstatus=$(this).val();
					modify(pno);
				});
				
				//전체 리스트에 대한 상태변경시 필터링하여 검색
				const selectElement = document.querySelector("#statusfilter");
				
				selectElement.addEventListener('change', () => {
					  const selectedValue = selectElement.value;
					  const searchQuery = new URLSearchParams(window.location.search);
					  searchQuery.set('pwstatus', selectedValue);
					  window.location.search = searchQuery.toString();
					});
				
				
			},
			error: function(xhr) {
				alert("에러코드(호스트 정보 목록 검색) = "+xhr.status)
			}
		});
	}
	
	
	
function pageNumDisplay(pager) {
	var html="";
	
	if(pager.startPage > pager.blockSize) {
		html+="<a href='javascript:payListDisplay("+pager.prevPage+")'>[이전]</a>";
	}
	for(i=pager.startPage;i<=pager.endPage;i++) {
		if(pager.pageNum!=i) {
			html+="<a href='javascript:payListDisplay("+i+")'>[ "+i+" ]</a>";
		} else {
			html+="[ "+i+" ] ";
		}
	}
	if(pager.endPage != pager.totalPage) {
		html+="<a href='javascript:payListDisplay("+pager.nextPage+")'>[다음]</a>";
	}
	$("#pageNumDiv").html(html);
}

//정산상태정보 수정
function modify(pno) {
	var pno=pno;
	var pwstatus=$("#pwstatus_"+pno).val();

	$.ajax({
		type: "put",
		url: "${pageContext.request.contextPath}/admin/pay/modifystatus/"+pno,
		contentType: "application/json",
		data : JSON.stringify({"pwstatus":pwstatus}),
		dataType: "text",
		success: function (result) {
			if(result=="success"){
				payListDisplay(page);
			}
		},
		error: function(xhr) {
			alert("에러코드(호스트 상태 변경) = "+xhr.status)
		}
	});
}

	
	</script>

	
	
	
	</div>
</body>
</html>