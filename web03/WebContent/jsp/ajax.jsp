<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax</title>
</head>
<body>

	<script type="text/javascript" src="/web03/js/jquery-3.5.1.js"></script>
	<script type="text/javascript">
		$(function() {
			$.ajax({
				url: "http://rss.hankyung.com/new/news_enter.xml",
				success: function() {
					alert('한경 사이트 연결 성공');
				}
			});
		});
	</script>

</body>
</html>