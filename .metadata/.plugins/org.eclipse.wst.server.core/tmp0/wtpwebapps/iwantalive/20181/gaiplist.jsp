<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.* , java.sql.*"%>
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 리스트</title>
</head>
<body>
<H3> 간단하긴 뭐가 간단한 회원 리스트</H3>
<table border = "1" cellspacing ="1" cellpadding = "2" width = "600">

<tr bgcolor = "cccccc">
<th><font size= 2><center><b>회원ID</b></center></font></th>
<th><font size= 2><center><b>회원명</b></center></font></th>
<th><font size= 2><center><b>생년월일</b></center></font></th>
<th><font size= 2><center><b>주민번호</b></center></font></th>
<th><font size= 2><center><b>성별</b></center></font></th>

</tr>

<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP1;password=1234";
Connection con=DriverManager.getConnection(conURL);
ResultSet rs = null;

Statement stmt = con.createStatement();

String SQL = "select uid, uname, bd, jm , sex from member order by uid ";

rs = stmt.executeQuery(SQL);

while(rs.next()) {
	
	String uid = rs.getString("uid");
	String uname = rs.getString("uname");
	String bd = rs.getString("bd");
	String jm = rs.getString("jm");
	String sex = rs.getString("sex");

%>

<tr>
	<td><a href="Gaip_upd.jsp?uid=<%=uid %>"><%=uid %></a></td><td><%=uname %></td><td><%=bd %></td><td><%=jm %></td><td><%=sex %></td>
	</tr>
	<%
	}
	stmt.close();
	rs.close();
	con.close();
	%>
	<form name=form1 method="post" action = "list_search.jsp">

검색(이름) : <input type = "text" name="uname" > <br>
<input type ="submit" value = "검색">
</form>
</table>

</body>
</html>