<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP;user=JSP1;password=1234";
Connection con=DriverManager.getConnection(conURL);
ResultSet rs = null;
PreparedStatement pstmt = null;
String uid = request.getParameter("uid");
String pw = request.getParameter("pw");
String sql = "select uid, pw from logint where uid=? pw=?";
pstmt = con.prepareStatement(sql);
pstmt.setString(1,uid);
pstmt.setString(2,pw);
rs  = pstmt.executeQuery();
%>

</body>
</html>