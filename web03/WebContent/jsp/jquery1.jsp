<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquery1</title>
</head>
<body>

	아이디: <input type="text" id="id"> <br>
	패스워드: <input type="text" id="pw"> <br>
	<button id="b">로그인 처리</button>
	
	<hr>
	
	<div></div>
	
	<script type="text/javascript" src="/web03/js/jquery-3.5.1.js"></script>
	<script type="text/javascript">
		// 무명함수를 사용, 실행할 함수를 옆에 정의하기 때문에 이름이 필요없음.
		$(function() {
			alert('브라우저가 body부분을 다 읽었음.');
			
			$('#b').click(function() {
				idValue = $('#id').val();
				pwValue = $('#pw').val();
				
				if (idValue == 'root' && pwValue == '1234') {
					$('div').html('로그인 성공');
				} else {
					$('div').html('로그인 실패');
				}
			});
		});
	</script>

</body>
</html>