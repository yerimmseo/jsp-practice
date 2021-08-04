<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>당신의 회원가입 정보</title>
</head>
<body>

	당신의 회원가입 정보입니다.
	<hr>
	당신의 id는 <%=id %> <br>
	당신의 pw는 <%=pw %> <br>
	당신의 name은 <%=name %> <br>
	당신의 tel은 <%=tel %> <br>
	<a href="/web01/html/member.html">앞 페이지로</a>

</body>
</html>