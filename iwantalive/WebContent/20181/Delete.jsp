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
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP1;password=1234";
Connection con = DriverManager.getConnection(conURL);
PreparedStatement pstmt = null;
try {
	
	String uid= request.getParameter("uid");
	String sql="delete from member where uid=?";
	pstmt=con.prepareStatement(sql);
	pstmt.setString(1,uid);
	pstmt.executeUpdate(); //기말
}catch (SQLException e) {
	out.print(e.getMessage()); 
}finally{
	if (pstmt != null) pstmt.close();
	if (con != null) con.close();
	 response.sendRedirect("gaiplist.jsp");
}
%>
<body>

</body>
</html>