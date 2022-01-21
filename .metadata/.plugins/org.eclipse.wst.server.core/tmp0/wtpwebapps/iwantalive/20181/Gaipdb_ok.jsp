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
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP1;password=1234";
Connection con=DriverManager.getConnection(conURL);
//객체 생성
PreparedStatement pstmt = null;
// 입력값을 받아서 변수에 저장
String uname = request.getParameter("uname");
String uid = request.getParameter("uid");
String pw = request.getParameter("pw");
String jm = request.getParameter("jm");
String bd = request.getParameter("bd");
String hp1 = request.getParameter("hp1");
String hp2 = request.getParameter("hp2");
String hp3 = request.getParameter("hp3");
String sex = request.getParameter("sex");
String job = request.getParameter("job");
String mail = request.getParameter("mail");
String ad = request.getParameter("ad");

// SQL문 생성
String sql = "insert into member(uid,pw,jm,bd,hp1,hp2,hp3,sex,uname,job,mail,ad) values(?,?,?,?,?,?,?,?,?,?,?,?)";
pstmt = con.prepareStatement(sql);
// ?에 값을 설정
pstmt.setString(1,uid);
pstmt.setString(2,pw);
pstmt.setString(3,jm);
pstmt.setString(4,bd);
pstmt.setString(5,hp1);
pstmt.setString(6,hp2);
pstmt.setString(7,hp3);
pstmt.setString(8,sex);
pstmt.setString(9,uname);
pstmt.setString(10,job);
pstmt.setString(11,mail);
pstmt.setString(12,ad);


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
<a href="test.jsp">메인페이지 행</a>
</body>
</html>