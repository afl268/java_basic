<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.* , java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 리스트</title>
</head>
<body>
<h3> 공지사항 리스트</h3>
<form name="form1" method="post" action="View.jsp">
<table border=1 width=600>
<tr>
<td width = "10%">번호</td>
<td width = "*%">제목</td>
<td width = "15%">작성자</td>
<td width = "17%">등록일</td>
<td width = "17%">수정일</td>
<td width = "10%">조회수</td>
</tr>
<% 
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP;password=1234";
Connection con= DriverManager.getConnection(conURL);
ResultSet rs1=null,rs2=null;
Statement stmt = null;
try{ 
stmt=con.createStatement();
String sql = " select count(*) from boardB "; 
rs2 = stmt.executeQuery(sql);
rs2.next();
if (rs2.getInt(1)==0) {
%>
<tr>
<td colspan=5 > 등록된 공지사항이 없습니다</td>
</tr>
<% }else {
	sql="select num, title, writer, writedtm, updatedtm, readcnt from boardB order by num desc";
	rs1 = stmt.executeQuery(sql);
	while (rs1.next()) {
		int num=rs1.getInt("num");
		String title = rs1.getString("title");
		String writer = rs1.getString("writer");
		String writedtm = rs1.getString("writedtm");
		String updatedtm = rs1.getString("updatedtm");
		int readcnt = rs1.getInt("readcnt"); // 까지 기말

	%>
	<tr>
	<td><a href="View.jsp?num=<%=num %>">
	<%=num %></a></td><td><%=title %></td><td><%=writer %></td>
	<td><%=writedtm %></td><td><%=updatedtm %></td><td><%=readcnt %></td>
	</tr>
	<%
	}}}
catch(SQLException e) {
	out.print(e.getMessage());
}finally{
	if (stmt != null) stmt.close();
	if (rs1 != null) rs1.close();
	if (rs2 != null) rs2.close();
	if (con != null) con.close();
}
	%>

</table>
</form>
<br><br>
<form name= "form2" action="boardAwrite.jsp" method = "post">
<input type= "submit" value = "새글쓰기">
</form>

</body>
</html>