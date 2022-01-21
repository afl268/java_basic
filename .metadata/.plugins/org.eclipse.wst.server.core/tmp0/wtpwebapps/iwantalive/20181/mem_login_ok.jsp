<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.* , java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP1;password=1234";
Connection con=DriverManager.getConnection(conURL);
PreparedStatement pstmt = null;
ResultSet rs=null;

String uid = request.getParameter("uid");
String pw = request.getParameter("pw");

String sql  = "select uname from member where uid=? and pw=?";
pstmt = con.prepareStatement(sql);
pstmt.setString(1,uid);
pstmt.setString(2,pw);
rs = pstmt.executeQuery();
if (rs.next()==true) {
	session.setAttribute("G_uid",uid);
	session.setAttribute("G_uname", rs.getString("uname"));
	session.setMaxInactiveInterval(60*10);
	String uname = rs.getString("uname"); // 기말
out.print(uname+" 님   로그인에 성공");
}
else
	out.print("로그인 실패");
pstmt.close();
rs.close();
con.close();

%>


</body>
</html>