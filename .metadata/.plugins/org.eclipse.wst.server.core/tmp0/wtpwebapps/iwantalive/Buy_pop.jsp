<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.sql.*"%>
    <%request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TS조경 구매 페이지</title>
<style>
div.right {
	float : right;
}
h3 {
text-align:center;
color: black;
font-family: Bell MT;
font-size : 30px
}
h3 a {
text-decoration : none;
color : white;
}
h3 a:hover {
color : white;
}
u1 {
text-decroation : none;
color:white;
text-align: center;
border-top: 1px solid rasybrown;
border-bottom: 1px solid rasybrown;
padding: 10px 0;
}
</style>
<script language="javascript">
function valid_check() {
	if(document.form1.name.value.length<4) {
		alert("이름은 2글자 이상 입력해주세요");
		document.form1.name.focus(); // //버튼 펑션 밸류 체크 정규식 리퀘스트.겟파라메타
		return false;
	}
			var exp = /^[0-9]+$/;
			if(!document.form1.pnum.value.match(exp)) {
				alert("핸드폰 번호 입력시 숫자만 입력해주세요.");
				document.form1.pnum.focus();
				return false;
			}
			if(!document.form1.bank.value.match(exp)) {
				alert("통장 번호 입력시 숫자만 입력해주세요.");
				document.form1.bank.focus();
				return false;
			}
			if(document.form1.addr.value.length>=50) {
				alert("주소 입력 시 50자 이하로 작성해주세요.");
				document.form1.addr.focus();
				return false;
			}
			

				document.form1.submit();
}
			
			
</script>
</head>
<body bgcolor="#ffffff">
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP;password=1234";
Connection con = DriverManager.getConnection(conURL);
Statement stmt = null;
ResultSet rs=null;
try {
	String sql = " select num from buy "; 
	stmt=con.createStatement();
	rs = stmt.executeQuery(sql);
	rs.next();
	int pnum = Integer.parseInt(request.getParameter("num"));
%>
 <h3>TS조경<br/>구매 페이지</h3><hr><br/><br/>
 <form method="post" action="Buy_ok.jsp" name="form1">
     <center>
<font color ="black" size="4" face="함초롬돋움"><b></b>
<table width="90%" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px gray solid;">
<tr>
<td style="border:1px gray solid;">구매 상품 번호 : <%=pnum %></td></tr>
 <td style="border:1px gray solid;">이름</td><td style="border:1px gray solid;"><input type="text" name="name"></td></tr>
<tr>
 <td style="border:1px gray solid;">핸드폰 번호</td><td style="border:1px gray solid;"><input type="text" name="phnum" size=12></td></tr>
<tr>
 <td style="border:1px gray solid;">통장번호</td> <td style="border:1px gray solid;"> <input type="text" name="bank" size=24></td></tr>
 <tr>
 <td style="border:1px gray solid;">주소</td> <td style="border:1px gray solid;"> <input type="text" name="addr" size=50></td></tr>
 </table><br>
 <input type ="submit" value = "주문요청" onclick="buy_ok.jsp">
 <input type ="reset" value = "취소"></font>
 </center>
 </form>
 <%
} catch (SQLException e) {
	out.print(e.getMessage());
}finally {
if (stmt != null) stmt.close();
if (con != null) con.close();
}
 %>
</body>
</html>
