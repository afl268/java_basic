<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.sql.*"%>
    <%request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
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
	if(document.form1.userid.value.length<4) {
		alert("아이디는 4자이상 입력해주세요");
		document.form1.userid.focus(); // //버튼 펑션 밸류 체크 정규식 리퀘스트.겟파라메타
		return false;
	}
	var exp1=/(?=.*[0-9])/;
		if(!document.form1.userpassword.value.match(exp1)) {
			alert("숫자만 입력하세요");
			document.form1.userpassword.focus();
			return false;
		}

			var exp = /^[0-9]+$/;
			if(!document.form1.phnumber.value.match(exp)) {
				alert("전화번호 입력시 숫자만 입력해주세요1");
				document.form1.phnumber.focus();
				return false;
			}
			if(!document.form1.phnumber2.value.match(exp)) {
				alert("전화번호 입력시 숫자만 입력해주세요2");
				document.form1.phnumber2.focus();
				return false;
			}
			if(!document.form1.phnumber3.value.match(exp)) {
				alert("전화번호 입력시 숫자만 입력하주세요3");
				document.form1.phnumber3.focus();
				return false;
			}
			

				document.form1.submit();
}
			
			
</script>
</head>
<body bgcolor="#ffffff">
 <h3>나무야 미안해<br>회원가입</h3><hr><br><br>
 <form method="post" action="Gaip_ok.jsp" name="form1">
     <center>
<font color ="black" size="4" face="궁서"><b></b>
<table width="90%" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px gray solid;">
<tr>
 <td style="border:1px gray solid;">
닉네임</td><td style="border:1px gray solid;"><input type="text" name="nickname"></td></tr>
<tr>
 <td style="border:1px gray solid;">아이디 </td><td style="border:1px gray solid;">
 <input type="text" name="userid"></td></tr>
<tr>
 <td style="border:1px gray solid;">비밀번호</td> <td style="border:1px gray solid;"> <input type="password" name="userpassword" size=10></td></tr>
 <tr>
 <td style="border:1px gray solid;">연락처(휴대폰)</td><td style="border:1px gray solid;"><input type="text" name="phnumber" size=3>
  - <input type="text" name="phnumber2" size=4>
  - <input type="text" name="phnumber3" size=4></td> </tr>
 </table><br>
 <input type ="button" value = "가입" onclick="valid_check()">
 <input type ="reset" value = "취소"></font>
 </center>
 </form>
 <style>
  
 </style>

</body>
</html>
