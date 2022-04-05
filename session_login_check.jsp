<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_login_check</title>
</head>
<body>
	<%
	//DB사용대신 임시로 DB의 정보를 구현한 것임.
	String user_id = "by18.박현용";
	String user_pw = "0000";
	String user_name = "관리자";

	// 사용자 입력 로그인 정보 가지고 오기
	String cust_id = request.getParameter("cust_id");
	String cust_pw = request.getParameter("cust_pw");

	//DB에 있는 비밀번호와 입력된 비밀번호를 비교하여 로그인 승인
	if (user_id.equals(cust_id) && user_pw.equals(cust_pw)) {
		session.setMaxInactiveInterval(600);//세션 유지시간 지정(10분으로 지정)
		session.setAttribute("cust_id", user_id); //세션에 아이디와 이름을 지정
		session.setAttribute("cust_name", user_name);

		out.print("<b>" + session.getAttribute("cust_id") + "(" + session.getAttribute("cust_name") + ")님 환영합니다.</b><p>");
	} else {
		out.print("로그인 후 사용하세요<p>");
		//response.sendRedirect("session_login_form.jsp"); //이와같은 문법을 사용하면 자동으로 해당 페이지로 이동된다.

	}
	%>
	<a href="session_logout.jsp">[로그아웃]</a>
	<a href="session_login_form.jsp">[로그인 페이지로 돌아가기]</a><br>
</body>
</html>