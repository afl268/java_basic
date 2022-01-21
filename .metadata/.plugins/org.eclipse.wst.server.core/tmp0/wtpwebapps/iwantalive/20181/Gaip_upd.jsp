<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.* , java.sql.*"%>
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 변경</title>
</head>
<script language = "javascript">
function submit_list() {
	document.form1.action="gaiplist.jsp";
	document.form1.submit();
	
}
function submit_update() {
	document.form1.action="Update_ok.jsp";
	document.form1.submit();
	
}
function submit_delete() {
	document.form1.action="Delete.jsp";
	document.form1.submit();
	
}
</script>
<%
String uid= request.getParameter("uid");
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP1;password=1234";
Connection con=DriverManager.getConnection(conURL);
PreparedStatement pstmt = null;
ResultSet rs = null;
String sql  = "select * from member where uid=?";
pstmt = con.prepareStatement(sql);
pstmt.setString(1,uid);
rs = pstmt.executeQuery();
if (rs.next()==false)
out.print("등록되지 않은 회원입니다");
else
{
	String uname = rs.getString("uname");
	String pw = rs.getString("pw");
	String hp1 = rs.getString("hp1");
	String hp2 = rs.getString("hp2");
	String hp3 = rs.getString("hp3");
	String job = rs.getString("job");

%>

<body>
<h3>회원 정보 변경</h3>
<form width=500 name="form1" action = "Update_ok.jsp" method = "post">
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
<option value="대학생" <%if(job.equals("대학생")) out.print("selected");%>> 대학생</option>
  <option value="대학원생"  <%if(job.equals("대학원생")) out.print("selected");%>> 대학원생</option>
  <option value="회사원" <%if(job.equals("회사원")) out.print("selected");%>>회사원</option>
  <option value="군인" <%if(job.equals("군인")) out.print("selected");%>>군인</option>
  <option value="백수" <%if(job.equals("백수")) out.print("selected");%>>백수</option>
</select>

    <tr><td width = "33%" align = "center">
   <input type="button" value="수정하기"  onclick="submit_update()">
   </td>
    <tr><td width = "33%" align = "center">
      <input type="button" value="삭제하기"  onclick="submit_delete()">
      </td>
       <tr><td width = "33%" align = "center">
            <input type="button" value="목록으로"  onclick="submit_list()">
            </td></tr>
</table>

</form>
</body>
<%
}
%>
</html>