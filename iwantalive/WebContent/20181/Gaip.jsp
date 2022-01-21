<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.sql.*"%>
    <%request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ChiyU</title>
<script language = "javascript">

function valid_check() {
	if(document.form1.uid.value.length<4) {
		alert("아이디는 4자이상 입력해주세요");
		document.form1.uid.focus(); // //버튼 펑션 밸류 체크 정규식 리퀘스트.겟파라메타
		return false;
	}
	var exp1=/(?=.*[0-9])/;
		if(!document.form1.pw.value.match(exp1)) {
			alert("숫자만 입력하세요");
			document.form1.pw.focus();
			return false;
		}

		
			var exp2=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+\.([a-zA-Z0-9_-])+/;
			if(!document.form1.mail.value.match(exp2)) {
				alert("맞게 입력하세요");
				document.form1.mail.focus();
				return false;
			}
		
			var exp = /^[0-9]+$/;
			if(!document.form1.hp2.value.match(exp)) {
				alert("전화번호 입력시 숫자만 입력해주세요");
				document.form1.hp2.focus();
				return false;
			}
			if(!document.form1.hp3.value.match(exp)) {
				alert("전화번호 입력시 숫자만 입력하주세요2");
				document.form1.hp3.focus();
				return false;
			}
			if(!document.form1.jm.value.match(exp)) {
				alert("주민번호 입력하세요");
				document.form1.jm.focus();
				return false;
			}

				document.form1.submit();
}
			
</script>
</head>
<body bgcolor="#724C00">
 
 <form method="post" action="Gaipdb_ok.jsp" name="form1">
     <center>
<font color ="white" size="4" face="궁서"><b></b>
<tr><td>이름 : </td><td><input type="text" name="uname"></td></tr><br><br><br>
아이디 : <input type="text" name="uid" size= 10> <input type ="button" value = "중복확인" ><br><br>
비밀번호 : <input type="password" name="pw" size=10> <br><br>
성별 : 남<input type="radio" name="sex"value="Male">
 여<input type="radio" name="gender"value="Female"><br><br>
 생년월일 : <input type="text" name="bd"size=16><br><br>
 이메일 : <input type="text" name="mail" size= 15><br><br>
세부 주소 : <input type="text" name="ad" size=60><br><br>
 직업 : <select name="job">
 <option value="">직업을 선택해주세요</option>
  <option value="1">대학생</option>
  <option value="2">대학원생</option>
  <option value="3">회사원</option>
  <option value="4">군인</option>
  <option value="5">백수</option> 
 </select> <br><br>
 
 연락처(휴대폰) : <select name="hp1">
 <option value="010">010</option>
 <option value="011">011</option>
 <option value="012">012</option>
 <option value="013">013</option>
 <option value="019">019</option>
 <option value="017">017</option>
 <input type="text" name="hp2" size=4>
 <input type="text" name="hp3" size=4> </select><br><br>
 주민번호 : <input type="text" name="jm" size= 6><br><br>
<input type ="button" value = "가입" onclick="valid_check()">
 <input type ="reset" value = "취소">
 </center>
 <style>
  
 </style>

</body>
</html>
