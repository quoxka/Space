<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>

	<div id="datepicker"></div>

	<button id="save-btn">확인</button>




	<script type="text/javascript">
		$(document).ready(function() {
			$('#datepicker').datepicker({
				dateFormat: 'yy-mm-dd',
				minDate: 0,
				showOtherMonths: true,
				selectOtherMonths: true,
				onSelect: function(dateText) {
					$('#selected-date').val(dateText);
				}
			});

			$('#save-btn').click(function() {
				alert('선택한 날짜는 ' + $('#selected-date').val() + '입니다.');
			});
		});
	</script>

	<input type="hidden" id="selected-date" value="">
</body>
</html>
