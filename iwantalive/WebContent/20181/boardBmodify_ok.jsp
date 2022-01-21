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
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP;password=1234";
Connection con = DriverManager.getConnection(conURL);
PreparedStatement pstmt = null;
try {
	int num = Integer.parseInt(request.getParameter("num"));
	String title=request.getParameter("title");
	String contents=request.getParameter("contents");
	Calendar dateIn=Calendar.getInstance();
	String today = Integer.toString(dateIn.get(Calendar.YEAR))+"-";
	today = today + Integer.toString(dateIn.get(Calendar.MONTH)+1)+"-";
	today = today + Integer.toString(dateIn.get(Calendar.DATE));
	String sql = "update boardB set title=?, contents=?,updatedtm=? where num=?"; // 기말
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1,title);
	pstmt.setString(2,contents);
	pstmt.setString(3,today);
	pstmt.setInt(4,num);
	pstmt.executeUpdate();
	
} catch (SQLException e) {
	out.print(e.getMessage());
}finally {
if (pstmt != null) pstmt.close();
if (con != null) con.close();
response.sendRedirect("boardBlist.jsp");
}

%>
<body>

</body>
</html>