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
	<span style="font-weight: 600;">정산 미완료 : n 건</span> 
	<span style=""><input type="text">  <button type="button" class="btn btn-primary btn-sm">검색</button></span>
</p>
<div>
	<form class="row gx-3 gy-2 align-items-center">
	<table class="table" >
	  <thead>
		<tr>
			<th scope="col">No</th>
			<th scope="col">호스트 ID</th>
			<th scope="col">결제번호</th>
			<th scope="col">정산금액</th>
			<th scope="col">정산년도</th>
			<th scope="col">
				<select class="form-select" id="inlineFormSelectPref" style="width:80px; height: 25px; border-radius: 5px; font-weight: bold;">
					<option selected="selected">정산월</option>
					<option value="1">1월</option>
					<option value="2">2월</option>
					<option value="3">3월</option>
					<option value="4">4월</option>
					<option value="5">5월</option>
					<option value="6">6월</option>
					<option value="7">7월</option>
					<option value="8">8월</option>
					<option value="9">9월</option>
					<option value="10">10월</option>
					<option value="11">11월</option>
					<option value="12">12월</option>
				</select>				
			</th>
			<th scope="col">
				<select class="form-select" id="inlineFormSelectPref" style="height: 25px; border-radius: 5px; font-weight: bold;">
					<option value="" selected="selected">정산상태</option>
					<option value="1" >미완료</option>
					<option value="0" >완료</option>
				</select>			
			</th>
	    </tr>
	  </thead>
	  
	  <tbody>
	    <tr>
			<td scope="row">1</td>
			<td>Mark</td>
			<td>12345678</td>
			<td>100,000</td>
			<td>2023</td>
			<td>
				<select class="form-select" id="inlineFormSelectPref" style="height: 25px; border-radius: 5px;">
					<option value="1" selected="selected">1월</option>
					<option value="2">2월</option>
					<option value="3">3월</option>
					<option value="4">4월</option>
					<option value="5">5월</option>
					<option value="6">6월</option>
					<option value="7">7월</option>
					<option value="8">8월</option>
					<option value="9">9월</option>
					<option value="10">10월</option>
					<option value="11">11월</option>
					<option value="12">12월</option>
				</select>			
			</td>
			<td>
				<select class="form-select" id="inlineFormSelectPref" style="height: 25px; border-radius: 5px;">
					<option value="1" selected="selected" >미완료</option>
					<option value="0" >완료</option>
				</select>			
			</td>
	    </tr>
	    
	  </tbody>
	</table>
	</form>
	</div>
	</div>
</body>
</html>