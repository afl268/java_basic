<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.* , java.sql.*"%> 
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// JDBC 드라이버 로드
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
// 연결 설정 : db 연결
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP;user=JSP1;password=1234";
Connection con=DriverManager.getConnection(conURL);
//객체 생성
PreparedStatement pstmt = null;
// 입력값을 받아서 변수에 저장
String uid = request.getParameter("uid");
String pw = request.getParameter("pw");
// SQL문 생성
String sql = "insert into logint(uid,pw) values(?,?)";
pstmt = con.prepareStatement(sql);
// ?에 값을 설정
pstmt.setString(1,uid);
pstmt.setString(2,pw);
// 실행
pstmt.executeUpdate();
// 종료
pstmt.close();
con.close(); // 여기까지 다 외우셈 
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="test7list.jsp">리스트보기</a>
</body>
</html>