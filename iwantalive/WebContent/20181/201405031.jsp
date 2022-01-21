<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>201405031</title>
<script language = "javascript">
function valid_check() {
	if(document.form1.uid.value.length==0) {
		alert("아이디를 입력해주세요");
		document.form1.uid.focus(); 
		return false;
	}
	if(document.form1.pw.value.length>6) {
		alert("비밀번호를 정확히 입력해주세요");
	document.form1.pw.focus(); 
	return false;
	}
	document.form1.submit();
}

		</script>
</head>
<body>
 <form method="post" action="201405031_ok.jsp" name="form1">
아이디 : <input type ="text" name = "uid" size = 10> <br>
비밀번호 : <input type = "text" name = "pw" size = 10><br>
<input type ="button" value = "로그인" onclick = "valid_check()">
<input type ="button" value = "회원가입">
</form>
</body>
</html>