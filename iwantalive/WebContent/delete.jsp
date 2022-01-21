<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.* , java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 삭제</title>
</head>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP;password=1234";
Connection con = DriverManager.getConnection(conURL);
PreparedStatement pstmt = null;
	int num = Integer.parseInt(request.getParameter("num"));
	String sql="delete from boardB where num=?";
	pstmt=con.prepareStatement(sql);
	pstmt.setInt(1,num);
	pstmt.executeUpdate(); //기말

	 response.sendRedirect("boardA.jsp");
%>
<body>

</body>
</html>