<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.* , java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 수정완료</title>
</head>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP1;password=1234";
Connection con = DriverManager.getConnection(conURL);
PreparedStatement pstmt = null;

String uname = request.getParameter("uname");
String uid = request.getParameter("uid");
String pw = request.getParameter("pw");
String hp1 = request.getParameter("hp1");
String hp2 = request.getParameter("hp2");
String hp3 = request.getParameter("hp3");
String job = request.getParameter("job");

String SQL = "update member set ";
SQL = SQL+"uname =?";
SQL = SQL+",uid =?";
SQL = SQL+",pw =?";
SQL = SQL+",hp1 =?";
SQL = SQL+",hp2 =?";
SQL = SQL+",hp3 =?";
SQL = SQL+",job =?";


pstmt = con.prepareStatement(SQL);

pstmt.setString(1,uname);
pstmt.setString(2,uid);
pstmt.setString(3,pw);
pstmt.setString(4,hp1);
pstmt.setString(5,hp2);
pstmt.setString(6,hp3);
pstmt.setString(7,job);

int cnt = pstmt.executeUpdate();

pstmt.close();
con.close();

if(cnt > 0)
	out.print("변경 완료 됐습니다");

else
	out.print("변경 실패 입니다");
%>
<body>

</body>
</html>