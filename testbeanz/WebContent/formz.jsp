<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFFF">
<div align=center>
<h2>로그인</h2>
<hr>

<form method="post" action="login.jsp" name="form1">

<table width="250" border="1" alig="center" cellspacing="0" cellpadding="5">
<tr>
<td colspan="2" align="center"> 로그인</td>
</tr>
<tr>
<td>아이디</td>
<td><input type="text" name="userid" size=10></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type="password" name="passwd" size=10></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" name="Submit" value="로그인"></td>
</tr>
</table> 
</form>
</div>

</body>
</html>