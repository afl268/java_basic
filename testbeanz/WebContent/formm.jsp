<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>주소록 등록</h2>
<hr>

<form name=form1 method="post" action=add.jsp>

<table border=1 cellspacing="1" cellpadding="5">
<tr>
<td>이 름</td>
<td><input type=text size=20 name=username></td>
</tr>
<tr>
<td>전 번</td>
<td><input type=text size=20 name=tel></td>
</tr>
<tr>
<td>메 일</td>
<td><input type=text size=20 name=email></td>
</tr>
<tr>
<td>성 별</td>
<td><select name=sex>
<option selected>남</option>
<option>여</option>
</select>
</td>
</tr>
<tr><td colspan=2 align=center>
<input type=submit value="확인">
<input type=reset value="취소"></td>
</tr>
</table>
</form>
</body>
</html>