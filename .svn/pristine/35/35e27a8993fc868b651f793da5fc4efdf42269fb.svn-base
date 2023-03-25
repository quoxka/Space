<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Space Moon</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<div class="content" style="width: 1300px; margin: 0 auto; position: relative; text-align: center;" >
<br>
<h3>FAQ 관리</h3>
<br>
<br>
<p class="d-flex justify-content-between">
	<span style="font-weight: 600;">전체 게시글 : ${totalFaqCount } 개</span> 
	<span style=""><input type="text">  <button type="button" class="btn btn-primary btn-sm">검색</button></span>
</p>
<div>
<div class="accordion" id="accordionExample2" style="text-align: left;"></div>
<div id="pageNumDiv"></div>
	</div>
	</div>
	
	<script type="text/javascript">
	var page=1;
	faqListDisplay(page);
	
	function faqListDisplay(pageNum) {
		page=pageNum;
		$.ajax({
			type: "get",
			url: "${pageContext.request.contextPath}/admin/faqList?pageNum="+pageNum+"&fmstatus="+${fmstatus}+"&fstatus="+${fstatus},
			dataType: "json",
			success: function (result) {
				if(result.faqList.length==0){
					var html="<table class='table'>";
					html+="<tr>";
					html+="<th colspan='6'>작성된 게시글이 없습니다.</th>";
					html+="</tr>";
					html+="</table>";
					$("#accordionExample2").html(html);
					return;
				}
				
				var html="<form class='row gx-3 gy-2 align-items-center'>";
				html="<table class='table table-hover' >";
				html+="<thead>";
				html+="<tr>";
				html+="<th><input type='checkbox' id='allCheck' name='allCheck' class='check'></th>";
				html+="<th scope='col'>No</th>";
				html+="<th scope='col'>";
				html+="<select class='form-select' id='fmstatusfilter' style='width: 100px; height: 25px; border-radius: 5px; font-weight: bold; text-align: center;'>";
				html+="<option selected='selected'>FAQ 대상</option>";
				html+="<option value='1' >사용자</option>";
				html+="<option value='0' >호스트</option>";
				html+="<option value='2' >전체선택</option>";
				html+="</select>";
				html+="</th>";
				html+="<th scope='col' style='width: 600px; text-align: center;'>제목</th>";
				html+="<th scope='col'>작성일자</th>";
				html+="<th scope='col'>";
				html+="<select class='form-select' id='fstatusfilter' style='height: 25px; border-radius: 5px; font-weight: bold;'>";
				html+="<option selected='selected'>상태</option>";
				html+="<option value='1' >일반글</option>";
				html+="<option value='0' >삭제글</option>";
				html+="<option value='2' >전체선택</option>";
				html+="</select>";
				html+="</th>";
				html+="<th scope='col'>수정</th>";
				html+="</tr>";
				html+="</thead>";
				html+="<tbody>";
				$(result.faqList).each(function() {
					html+="<tr>";
					html+="<td><input type='checkbox' name='checkId' id='"+this.fno+"' class='check'></td>";
					html+="<td scope='row'>"+this.rn+"</td>";
					html+="<td>";
					html+="<select class='selectfmstatus' id='selectfmstatus_"+this.fno+"' name='"+this.fno+"' style=' border-radius: 5px; width: 100px; text-align: center;'>";
					if(this.fmstatus==1){
					html+="<option value='1' selected>사용자</option>";
					html+="<option value='0' >호스트</option>";
					} else {
					html+="<option value='1' >사용자</option>";
					html+="<option value='0' selected>호스트</option>";
					}
					html+="</select>";
					html+="</td>";
					html+="<td style='text-align: left;'>";
					html+="<div class='card border rounded mb-2'>";
					html+="<a data-toggle='collapse' href='#a"+this.rn+"' class='faq position-relative' aria-expanded='true' aria-controls='a"+this.rn+"'>";
					html+="<div class='card-header border-0 bg-light p-3 pr-5' id='"+this.rn+"'>";
					html+="<input type='text' value=\""+this.ftitle+"\" id='board_title_"+this.fno+"' style='width: 600px; height: 40px'>";
					html+="</div>";
					html+="</a>";
					html+="<div id='a"+this.rn+"' class='collapse' aria-labelledby=\""+this.rn+"\" data-parent='#accordionExample2'>";
					html+="<div class='card-body'>";
					html+="<textarea rows='3' cols='60' name='content' id='board_content_"+this.fno+"' style='width: 600px;' wrap='soft'>"+this.fcontent+"</textarea>";
					html+="</div>";
					html+="</div>";
					html+="</div>";
					html+="</td>";
					html+="<td scope='row'>"+(this.fdate).substring(0,10) +"</td>";
					html+="<td>";
					html+="<select class='selectfstatus' name='"+this.fno+"' id='selectfstatus_"+this.fno+"' style=' border-radius: 5px;'>";
					if(this.fstatus==1){
					html+="<option value='1' selected='selected'>일반글</option>";
					html+="<option value='0' >삭제글</option>";
					} else {
					html+="<option value='1' >일반글</option>";
					html+="<option value='0' selected='selected'>삭제글</option>";
					}
					html+="</select>";
					html+="</td>";
					html+="<td scope='row'><button type='button' id='faq_modify_btn' onClick='modify("+this.fno+");' style='border: 2px solid black; border-radius: 5px;'>수정</button> </td>";
					html+="</tr>";
				});
				html+="</tbody>";
				html+="</table>";
				html+="</form>";
				html+="<div style='text-align: center'>";
				html+="<p><button onclick='location.href=\"${pageContext.request.contextPath }/admin/faq/write\";' type='button' id='writeBtn' class='btn btn-primary btn-sm'>게시글등록</button>";
				html+=" "+"<button type='button' onclick='remove();' id='removeBtn' class='btn btn-primary btn-sm'>선택 게시글삭제</button></p>";
				html+="</div>";
					
				
				$("#accordionExample2").html(html);
				pageNumDisplay(result.pager) 
				
				
				//전체선택
				$("#allCheck").change(function() {
				      if ($(this).is(":checked")) {
				        $(".check").prop("checked", true);
				      } else {
				        $(".check").prop("checked", false);
				      }
				});
				
				//faq대상상태 변경처리
				$(".selectfmstatus").change(function() {
					var fno=$(this).attr("name");
					var fmstatus=$(this).val();
					modify(fno);
				});
				
				//faq 게시글 상태 변경처리
				$(".selectfstatus").change(function() {
					var fno=$(this).attr("name");
					var fstatus=$(this).val();
					modify(fno);
				});
				
				
				//전체 리스트에 대한 상태변경시 필터링하여 검색 (공지대상)
				const selectElement = document.querySelector("#fmstatusfilter");
				selectElement.addEventListener('change', () => {
					  const selectedValue = selectElement.value;
					  const searchQuery = new URLSearchParams(window.location.search);
					  searchQuery.set('fmstatus', selectedValue);
					  window.location.search = searchQuery.toString();
					});
				
				//전체 리스트에 대한 상태변경시 필터링하여 검색 (게시글상태)
				const mselectElement = document.querySelector("#fstatusfilter");
				mselectElement.addEventListener('change', () => {
					  const mselectedValue = mselectElement.value;
					  const msearchQuery = new URLSearchParams(window.location.search);
					  msearchQuery.set('fstatus', mselectedValue);
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
			html+="<a href='javascript:faqListDisplay("+pager.prevPage+")'>[이전]</a>";
		}
		for(i=pager.startPage;i<=pager.endPage;i++) {
			if(pager.pageNum!=i) {
				html+="<a href='javascript:faqListDisplay("+i+")'>[ "+i+" ]</a>";
			} else {
				html+="[ "+i+" ] ";
			}
		}
		if(pager.endPage != pager.totalPage) {
			html+="<a href='javascript:faqListDisplay("+pager.nextPage+")'>[다음]</a>";
		}
		$("#pageNumDiv").html(html);
	}

	

	
	function modify(fno) {
		var fno=fno;
		var ftitle=$("#board_title_"+fno).val();
		var fcontent=$("#board_content_"+fno).val();
		var fmstatus=$("#selectfmstatus_"+fno).val();
		var fstatus=$("#selectfstatus_"+fno).val();
		
		
		if(ftitle==""){
			alert("제목을 입력해 주세요.")
			return false;
		}
		if(fcontent==""){
			alert("내용을 입력해 주세요.")
			return false;
		}
		$.ajax({
			type: "put",
			url: "${pageContext.request.contextPath}/admin/faq/modify/"+fno,
			contentType: "application/json",
			data : JSON.stringify({"ftitle":ftitle, "fcontent":fcontent, "fmstatus":fmstatus,"fstatus":fstatus }),
			dataType: "text",
			success: function (result) {
				if(result=="success"){
				faqListDisplay(page);
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
					url: "${pageContext.request.contextPath}/admin/faqremove",
					data: {fno : removearray},
					dataType: "text",
					success: function(result) {
						if(result=="success") {
							faqListDisplay(page);
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