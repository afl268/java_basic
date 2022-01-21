<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.sql.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8");
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP;user=JSP1;password=1234";
Connection con=DriverManager.getConnection(conURL);
ResultSet rs = null;
Statement stmt=con.createStatement();

String sql = "select uid, pw from logint";
rs = stmt.executeQuery(sql);
while(rs.next()) {
	String uid = rs.getString("uid");
	String pw = rs.getString("pw"); // result 부터 여기까지 외우셈 ㅎ

%>
아이디는 <%=uid %> 패스워드는 <%=pw %> <br>
<%
}
stmt.close();
rs.close();
con.close();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>