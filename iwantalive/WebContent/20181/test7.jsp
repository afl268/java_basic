<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.* , java.sql.*"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function valid_check() {
var exp=/(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*+=])(?=\S+$).{5,10}/;
	if(!document.form1.pw.value.match(exp)) {
		alert("한개의 소문 대문 숫자 특문 포함");
		
		return false;
	}
	document.form1.submit();
}
</script>
</head>
<body>
<form method =post name = "form1" action=test7db_ok.jsp>

아아디 : <input type ="text" name ="uid"><br>
패스워드 : <input type="text" name="pw"><br>
<input type="button" value="체크" onclick="valid_check();">
</form>

</body>
</html>