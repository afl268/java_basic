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
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP;password=1234";
Connection con= DriverManager.getConnection(conURL);
//객체 생성
PreparedStatement pstmt = null;
// 입력값을 받아서 변수에 저장
String nickname = request.getParameter("nickname");
String userid = request.getParameter("userid");
String userpassword = request.getParameter("userpassword");
String phnumber = request.getParameter("phnumber");
String phnumber2 = request.getParameter("phnumber2");
String phnumber3 = request.getParameter("phnumber3");
Calendar today = Calendar.getInstance();
String today_in = Integer.toString(today.get(Calendar.YEAR))+"-";
today_in=today_in+Integer.toString(today.get(Calendar.MONTH)+1)+"-";
today_in=today_in+Integer.toString(today.get(Calendar.DATE));

// SQL문 생성
String sql = "insert into userDB(nickname,userid,userpassword,phnumber,phnumber2,phnumber3,joinday) values(?,?,?,?,?,?,?)";
pstmt = con.prepareStatement(sql);
// ?에 값을 설정
pstmt.setString(1,nickname);
pstmt.setString(2,userid);
pstmt.setString(3,userpassword);
pstmt.setString(4,phnumber);
pstmt.setString(5,phnumber2);
pstmt.setString(6,phnumber3);
pstmt.setString(7,today_in);

// 실행
pstmt.executeUpdate();
// 종료
pstmt.close();
con.close();
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가입이 완료됐습니다</title>
</head>
<body>

<a href="javascript:window.close();">창닫기</a>


</body>
</html>