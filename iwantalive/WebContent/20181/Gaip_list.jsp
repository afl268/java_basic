<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원리스트 보여주기</title>
</head>
<body>
<h3> 회원 리스트</h3>
<table>
<tr>
<th>회원 아이디</th><th>회원 이름</th><th>생년월일</th><th>주민번호</th><th>성별</th>
</tr>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP1;password=1234";
Connection con=DriverManager.getConnection(conURL);
ResultSet rs = null;
Statement stmt = con.createStatement();
String SQL = "select uid , uname, bd, jm ,sex from member order by uid";
rs = stmt.executeQuery(SQL);
while(rs.next()) {
	String uid = rs.getString("uid");
	String uname = rs.getString("uname");
	String bd = rs.getString("bd");
	String jm = rs.getString("jm");
	String sex = rs.getString("sex");
	%>
	
	<tr>
	<td><a href="Update.jsp?uid=<%=uid %>"><%=uid %></td><td><%=uname %></td><td><%=bd %></td><td><%=jm %></td><td><%=sex %></td>
	</tr>
	<%
}
stmt.close();
rs.close();
con.close();
%>
</table>
<form name=form1 method="post" action = "list_search.jsp">

검색(이름) : <input type = "text" name="uname" > <br>
<input type ="submit" value = "검색">
</form>
</body>
</html>