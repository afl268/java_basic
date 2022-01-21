<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import =" java.sql.* , java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 수정</title>
</head>
<script language="javascript">
function submit_list() {
	document.form1.action="View.jsp";
	document.form1.submit();
	
}
</script>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP;password=1234";
Connection con = DriverManager.getConnection(conURL);
ResultSet rs = null;
PreparedStatement pstmt = null;
try {
	int num = Integer.parseInt(request.getParameter("num"));
	String sql = "select title, contents, writer from boardB where num=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1,num);
	rs = pstmt.executeQuery();
	if (rs.next() == false)
			out.print("공지사항이 없습니다");
	else {
		String title = rs.getString("title");
		String contents = rs.getString("contents");
		String writer = rs.getString("writer"); //기말

%>
<body>
<h3> 공지사항 수정</h3>
<form width=500 name="form1" action = "modify_ok.jsp" method = "post">
<table width="500" border="1">
<tr>
<td width="40%" align="left"> 번호</td>
<td width="60%" align="left"> <%=num %></td>
<input type = "hidden" name="num" value="<%=num %>">
</tr>
<tr>
<td> 작성자명</td>
<td> <%=writer %></td>

</tr>
<tr>
<td width="40%" align="left"> 제목</td>
<td> 
<input type="text" name="title" value="<%=title %>">
</td>
<tr>
<td> 내용</td>
<td> 
<textarea name= "contents" rows=5 cols=50 >
<%=contents %>
</textarea>
</td>
</tr>
<tr>
<td width="100%" colspan="2" align="center">
<input type = "submit" value = "수정완료" >
<input type = "button" value = "목록으로" onclick="submit_list()">
</td>
</tr>
</table>
</form>
</body>
<% 
	}
}catch (SQLException e) {
out.print(e.getMessage());

}finally {
if (rs != null) rs.close();
if (pstmt != null) pstmt.close();
if (con != null) con.close();
}
%>
</html>