<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8"); // 한글 구동용
%>


<%
	//DB 연결 테스트
Connection conn = null;
Statement stmt = null;

String url = "jdbc:mysql://127.0.0.1:3306";
String id = "root";
String pw = "0000";

Class.forName("com.mysql.jdbc.Driver");

PreparedStatement pstmt = null; //구문객체

conn = DriverManager.getConnection(url, id, pw);

String sql = "CREATE DATABASE university"; // DB 생성 SQL 구문
// String sql = "DROP DATABASE univ"; // DB 삭제 SQL 구문
pstmt = conn.prepareStatement(sql); // 구문을 객체에 넣어서

pstmt.executeUpdate(); // 구문객체 실행

if (conn != null)
	conn.close();
%>