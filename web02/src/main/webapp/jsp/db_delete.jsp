<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
%>
1. 커넥터 설정 성공! <br>
<% 
	// 2. db 연결 (url, id, password)
	String url = "jdbc:oracle:thin:@localhost:1521/XEPDB1";
	String user = "java1";
	String password = "1234";

	Connection conn = DriverManager.getConnection(url, user, password);
	out.print("2. db연결 성공 <br>");
	
	// 3. sql문 생성
	String sql = "DELETE FROM sign_up_member WHERE mem_id = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	out.print("3. sql문 생성 성공 <br>");
	
	// 4. sql문을 sqlplus서버에 전송
	int result = pstmt.executeUpdate();
	out.print("4. sql문을 sqlplus서버에 전송 성공 <br>");
	
	if (result == 1) {
		out.print("회원탈퇴 성공함.@@@@@@");
	} else {
		out.print("회원탈퇴 실패함.@@@@@@");
	}
%>