
<%

//JDBC 드라이버 로딩
 Class.forName("com.mysql.jdbc.Driver");
//DB연결
String url = "jdbc:mysql://127.0.0.1:3306/university";
 String id = "root";
 String pw = "0000";

 Connection conn = null;  // 디비 연결 객체
 PreparedStatement pstmt = null; // 디비에 전달할 SQL 구문객체
 ResultSet rset = null;   // 디비에서 꺼내올 데이터들을 담을 객체
 
 conn = DriverManager.getConnection(url, id, pw);

%>