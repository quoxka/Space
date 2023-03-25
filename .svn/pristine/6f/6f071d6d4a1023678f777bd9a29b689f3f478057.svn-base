<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Space Moon</title>
</head>
<body>
<div class="content w-75" style="margin: 0 auto; position: relative; text-align: center;" >
<br>
<h3>호스트 관리</h3>
<br>
<br>
<p class="d-flex justify-content-between">
	<span style="font-weight: 600;">전체 호스트 : ${totalHostCount } 명</span> 
	<span style=""><input type="text">  <button type="button" class="btn btn-primary btn-sm">검색</button></span>
</p>

<div id="hostlisttable"></div>
<div id="pageNumDiv"></div>
<input type="hidden" name="hstatus" value="${hstatus}">

<script type="text/javascript">
	var page=1;
	hostListDisplay(page);
	
	function hostListDisplay(pageNum) {
		page=pageNum;
		$.ajax({
			type: "get",
			url: "${pageContext.request.contextPath}/admin/hostList?pageNum="+pageNum+"&hstatus="+${hstatus},
			dataType: "json",
			success: function (result) {
				if(result.hostList.length==0){
					var html="<table class='table'>";
					html+="<tr>";
					html+="<th colspan='13'>등록된 호스트가 없습니다.</th>";
					html+="</tr>";
					html+="</table>";
					$("#hostlisttable").html(html);
					return;
				}
				
				var html="<form class='row gx-3 gy-2 align-items-center'>";
				html="<table class='table table-hover'>";
				html+="<thead>";
				html+="<tr>";
				html+="<th><input type='checkbox' id='allCheck' name='allCheck' class='check'></th>";
				html+="<th scope='col'>No</th>";
				html+="<th scope='col'>ID</th>";
				html+="<th scope='col'>이름</th>";
				html+="<th scope='col'>이메일</th>";
				html+="<th scope='col'>전화번호</th>";
				html+="<th scope='col'>상호명</th>";
				html+="<th scope='col'>대표자명</th>";
				html+="<th scope='col'>사업자 등록번호</th>";
				html+="<th scope='col'>계좌번호</th>";
				html+="<th scope='col'>은행명</th>";
				html+="<th scope='col'>예금주</th>";
				html+="<th scope='col'>";
				html+="<select class='statusfilter' id='statusfilter' style='height: 25px; border-radius: 5px; font-weight: bold;'>";
				html+="<option selected='selected' id='allselect' value='2'>상태</option>";
				html+="<option value='1' >일반호스트</option>";
				html+="<option value='0' >탈퇴호스트</option>";
				html+="<option value='9' >관리자</option>";
				html+="<option value='3' >전체선택</option>";
				html+="</select>";
				html+="</th>";
				html+="</tr>";
				html+="</thead>";
				html+="<tbody>";
					
				$(result.hostList).each(function() {
				html+="<tr>";
				html+="<td><input type='checkbox' name='checkId' id='"+this.hid+"' class='check'></td>";
				html+="<td scope='row'>"+this.rn+"</td>";
				html+="<td>"+this.hid+"</td>";
				html+="<td>"+this.hname+"</td>";
				html+="<td>"+this.hemail+"</td>";
				html+="<td>"+this.hphone+"</td>";
				
				if(this.hspacename==null){ this.hspacename="";}
				else { this.hspacename=this.hspacename;}
				html+="<td>"+this.hspacename+"</td>";
				
				if(this.hceoname==null){ this.hceoname="";}
				else { this.hceoname=this.hceoname;}
				html+="<td>"+this.hceoname+"</td>";
				
				if(this.hnum==null){ this.hnum="";}
				else { this.hnum=this.hnum;}
				html+="<td>"+this.hnum+"</td>";
				
				if(this.haccount==null){ this.haccount="";}
				else { this.haccount=this.haccount;}
				html+="<td>"+this.haccount+"</td>";
				
				if(this.hbank==null){ this.hbank="";}
				else { this.hbank=this.hbank;}
				html+="<td>"+this.hbank+"</td>";
				
				if(this.haccountname==null){ this.haccountname="";}
				else { this.haccountname=this.haccountname;}
				html+="<td>"+this.haccountname+"</td>";
				html+="<td>";
				html+="<select class='hstatus' id='hstatus_"+this.hid+"' name='"+this.hid+"' style='border-radius: 5px;'>";
				if(this.hstatus==1){
				html+="<option value='1' selected='selected'>일반호스트</option>";
				html+="<option value='0'>탈퇴호스트</option>";
				html+="<option value='9'>관리자</option>";
				}
				if(this.hstatus==0){
					html+="<option value='1'>일반호스트</option>";
					html+="<option value='0' selected='selected'>탈퇴호스트</option>";
					html+="<option value='9'>관리자</option>";
				}
				if(this.hstatus==9){
					html+="<option value='1' >일반호스트</option>";
					html+="<option value='0' >탈퇴호스트</option>";
					html+="<option value='9' selected='selected'>관리자</option>";
				}
				html+="</select>";
				html+="</td>";
				html+="</tr>";
				});
				html+="</tbody>";
				html+="</table>";
				html+="</form>";
				html+="<div style='text-align: center;'>";
				html+="<br>";
				html+="<p><button type='button' id='removeBtn' class='btn btn-primary btn-sm' onclick='remove();'>선택회원삭제</button></p>";
				html+="</div>";
				
				$("#hostlisttable").html(html);
				pageNumDisplay(result.pager)
				
				//전체선택
				$("#allCheck").change(function() {
				    if ($(this).is(":checked")) {
				      $(".check").prop("checked", true);
				    } else {
				      $(".check").prop("checked", false);
				    }
				});
				
				//회원상태변경
				$(".hstatus").change(function() {
					var hid=$(this).attr("name");
					var hstatus=$(this).val();
					modify(hid);
				});
				
				
				//전체 리스트에 대한 상태변경시 필터링하여 검색
				const selectElement = document.querySelector("#statusfilter");
				
				selectElement.addEventListener('change', () => {
					  const selectedValue = selectElement.value;
					  const searchQuery = new URLSearchParams(window.location.search);
					  searchQuery.set('hstatus', selectedValue);
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
		html+="<a href='javascript:hostListDisplay("+pager.prevPage+")'>[이전]</a>";
	}
	for(i=pager.startPage;i<=pager.endPage;i++) {
		if(pager.pageNum!=i) {
			html+="<a href='javascript:hostListDisplay("+i+")'>[ "+i+" ]</a>";
		} else {
			html+="[ "+i+" ] ";
		}
	}
	if(pager.endPage != pager.totalPage) {
		html+="<a href='javascript:hostListDisplay("+pager.nextPage+")'>[다음]</a>";
	}
	$("#pageNumDiv").html(html);
}

//호스트상태정보 수정
function modify(hid) {
	var hid=hid;
	var hstatus=$("#hstatus_"+hid).val();

	$.ajax({
		type: "put",
		url: "${pageContext.request.contextPath}/admin/host/modifystatus/"+hid,
		contentType: "application/json",
		data : JSON.stringify({"hstatus":hstatus}),
		dataType: "text",
		success: function (result) {
			if(result=="success"){
			hostListDisplay(page);
			}
		},
		error: function(xhr) {
			alert("에러코드(호스트 상태 변경) = "+xhr.status)
		}
	});
}



//호스트정보 삭제
function remove() {
	var count=$("input[name='checkId']:checked").length;
	var removearray= new Array();
	$("input[name='checkId']:checked").each(function () {
		removearray.push($(this).attr('id'));
	});
	if(count==0){
		alert("선택된 호스트가 없습니다.");
	} else{
		if(confirm("호스트 정보를 삭제 하시겠습니까?")) {
			$.ajax({
				type: "post",
				url: "${pageContext.request.contextPath}/admin/hostremove",
				data: {host : removearray},
				dataType: "text",
				success: function(result) {
					if(result=="success") {
						hostListDisplay(page);
					}
				}, 
				error: function(xhr) {
					alert("에러코드(호스트회원 정보 삭제) = "+xhr.status)
				}
			});
		}
	}
}


</script>
</div>
</body>
</html>