<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.* , java.sql.*"%> 
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script language="javascript">
function submit_list() {
	document.form1.action="gaiplist.jsp";
	document.form1.submit();
	
}
</script>
<body>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP1;password=1234";
Connection con=DriverManager.getConnection(conURL);
PreparedStatement pstmt = null;
String sql = "update member set uname=?, pw=? , hp1=?, hp2=?, hp3=?, ad=?, job=? where uid=?"; // and pw 히든으로 넘기셈
String uname = request.getParameter("uname");
String uid = request.getParameter("uid");
String pw = request.getParameter("pw");
String hp1 = request.getParameter("hp1");
String hp2 = request.getParameter("hp2");
String hp3 = request.getParameter("hp3");
String ad = request.getParameter("ad");
String job = request.getParameter("job");
pstmt = con.prepareStatement(sql);

pstmt.setString(1,uname);
pstmt.setString(2,uid);
pstmt.setString(3,pw);
pstmt.setString(4,ad);
pstmt.setString(5,hp1);
pstmt.setString(6,hp2);
pstmt.setString(7,hp3);
pstmt.setString(8,job);

pstmt.executeUpdate();

pstmt.close();
con.close();


%>

<h3>회원 정보 변경</h3>
<form method="post" action = "Update_ok.jsp" name="form1">
<table width=500 border = 1>
<tr>
<td width="40%">아이디</td>
<td>
<input type="text" name="uid" value="<%=uid %>" ReadOnly>
</td>
</tr>
<tr>
<td width="40%">패스워드</td>
<td>
<input type="text" name="pw" value="<%=pw %>">
</td>
</tr>
<tr>
<td width="40%">이름</td>
<td>
<input type="text" name="uname" value="<%=uname %>" ReadOnly >
</td>
<tr>
<td width="40%">핸드폰번호</td>
<td>
<input type="text" name="hp1" value="<%=hp1 %>" >
<input type="text" name="hp2" value="<%=hp2 %>" >
<input type="text" name="hp3" value="<%=hp3 %>" >
</td>
</tr>
<tr>
<td width = "40%"> 직업 </td>
<td>
<select name = "job">
<option value="">직업을 선택해주세요</option>
<option value="1" <%if(job.equals("1")) out.print("selected");%>> 대학생</option>
  <option value="2"  <%if(job.equals("2")) out.print("selected");%>> 대학원생</option>
  <option value="3" <%if(job.equals("3")) out.print("selected");%>>회사원</option>
  <option value="4" <%if(job.equals("4")) out.print("selected");%>>군인</option>
  <option value="5" <%if(job.equals("5")) out.print("selected");%>>백수</option>
</select>
</td>
</tr>
<tr>
<td colspan="2">
</td>
</tr>
</table>
<input type="button" value="변경" onclick="valid_check()">
</form>
</body>
</html>