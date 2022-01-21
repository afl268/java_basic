<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.* , java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구매 완료 페이지</title>
</head>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP;password=1234";
Connection con = DriverManager.getConnection(conURL);
PreparedStatement pstmt = null;
try {
	int num = Integer.parseInt(request.getParameter("num"));
	String name=request.getParameter("name");
	String phnum = request.getParameter("phnum");
	String bank = request.getParameter("bank");
	String addr = request.getParameter("addr");
	String sql = "update buycom set name=? phnum=?, bank=?, addr=? where num=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, phnum);
	pstmt.setString(3, bank);
	pstmt.setString(4, addr);
	pstmt.setInt(5,num);
	pstmt.executeUpdate();
	
} catch (SQLException e) {
	out.print(e.getMessage());
}finally {
if (pstmt != null) pstmt.close();
if (con != null) con.close();
response.sendRedirect("Buy.jsp");
}

%>
<body>

</body>
</html>