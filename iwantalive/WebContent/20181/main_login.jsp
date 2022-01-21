<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>입력받기</title>
<script language= "javascript">
function valid_check() {
	if(document.form1.uid.value.length<4) {
		alert("4자이상 입력");
		document.form1.uid.focus();
		return false;
		
	}
	if(document.form1.pw.value=="") {
		alert("패스워드를 입력하세요");
		document.form1.pw.focus();
		return false;
}
	document.form1.submit();
}
</script>
</head>
<body>
<form method="post" action="mem_login_ok.jsp" name="form1">
<table width=300 border=1>
<tr>
<td width="40%">아이디 </td><td> <input type = "text" , name="uid" size = 10> </td>
</tr>
<tr>
<td width="40%">패스워드 </td><td> <input type = "password" , name="pw" size = 10> </td>
</tr>
<tr>
<td colspan="2">

<input type ="button" value = "로그인" onclick="valid_check()">
</td>
</tr>
</table>

</form>

</body>
</html>