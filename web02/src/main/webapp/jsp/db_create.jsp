<%@page import="java.io.PrintWriter"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 입력한 데이터 서버에서 받아주자!
	// id=win&pw=win&name=win&tel=win
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	
	/*
	 * 스크립트릿: 자바코드가 들어가는 부분
	 * 릿(let): 작은 프로그램
	 * 자바에서 db를 연결해보자
	 * Java DB Connectivity(JDBC) 프로그래밍
	 */
	// 1. connector 설정
	Class.forName("oracle.jdbc.driver.OracleDriver");
%>
1. 커넥터 설정 성공! <br>
<% 
	// 2. db 연결 (url, id, password)
	String url = "jdbc:oracle:thin:@localhost:1521/XEPDB1";
	String user = "java1";
	String password = "1234";

	Connection conn = DriverManager.getConnection(url, user, password);
	// PrintWriter out = new PrintWriter();
	out.print("2. db연결 성공 <br>");
	
	// 3. sql문 생성
	String sql = "INSERT INTO sign_up_member VALUES (?, ?, ?, ?)";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, id);
	pstmt.setString(2, pw);
	pstmt.setString(3, name);
	pstmt.setString(4, tel);
	
	out.print("3. sql문 생성 성공 <br>");
	
	// 4. sql문을 sqlplus서버에 전송
	int result = 0;
	
	try {
		result = pstmt.executeUpdate(); // 성공했으면 1, 실패했으면 0
	} catch (Exception e) {
		out.print("db처리 전송 후 에러 발생함.");
	}
	
	out.print("4. sql문을 sqlplus서버에 전송 성공 <br>");
	
	if (result == 1) {
		out.print("회원가입 성공함!@@@@@@");
	} else {
		out.print("회원가입 실패함!@@@@@@");
	}
%>