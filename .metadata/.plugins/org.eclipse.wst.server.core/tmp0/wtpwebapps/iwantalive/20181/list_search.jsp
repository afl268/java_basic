<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.* , java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이름검색</title>
</head>
<body>
<table>
<tr>
<th>회원 이름</th><th>회원 아이디</th><th>생년월일</th><th>주민번호</th><th>성별</th>
</tr>
<%
String uname1=request.getParameter("uname");
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String cUrl = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP1;password=1234";
Connection con=DriverManager.getConnection(cUrl);
Statement stmt = con.createStatement();
ResultSet rs = null;
String SQL = "select uid , uname , jm , bd , sex from member where uname like '%"+uname1+"%'";
rs = stmt.executeQuery(SQL);
while(rs.next()) {
	String uid = rs.getString("uid");
	String uname = rs.getString("uname");
	String jm = rs.getString("jm");
	String bd = rs.getString("bd");
	String sex = rs.getString("sex");

%>

<tr>
	<td><%=uname %></td><td><%=bd %></td><td><%=uid %></td><td><%=jm %></td><td><%=sex %></td>
	</tr>
<% }
%>
</table>

</body>
</html>