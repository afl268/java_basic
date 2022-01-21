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
	if(document.form1.upw.value.length<6) {
		alert("패스워드를 입력하세요");
		document.form1.uwd.focus();
		return false;
}
	document.form1.submit();
}
</script>
</head>
<body>
<form method="post" action="test4_ok.jsp" name="form1">
id : <input type="text" name="uid" size= 10> <br>
password : <input type="password" name="upw" size=10> <br>
<input type ="button" value = "로그인" onclick="valid_check()">
<input type ="reset" value = "취소">

</form>

</body>
</html>