<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.sql.*"%>
    <%request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1:1 문의</title>
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
	if(document.form1.nick.value.length<1) {
		alert("nick 입력 필쑤");
		document.form1.nick.focus(); // //버튼 펑션 밸류 체크 정규식 리퀘스트.겟파라메타
		return false;
	}
			var exp = /^[0-9]+$/;
			if(!document.form1.phone.value.match(exp)) {
				alert("전화번호 입력시 숫자만 입력해주세요1");
				document.form1.phone.focus();
				return false;
			}
			if(!document.form1.phone2.value.match(exp)) {
				alert("전화번호 입력시 숫자만 입력해주세요2");
				document.form1.phone2.focus();
				return false;
			}
			if(!document.form1.phone3.value.match(exp)) {
				alert("전화번호 입력시 숫자만 입력하주세요3");
				document.form1.phone3.focus();
				return false;
			}
			

				document.form1.submit();
}
			
			
</script>
</head>
<body bgcolor="#ffffff">
 <h3>나무야 미안해<br>1:1문의</h3><hr><br><br>
 <form method="post" action="popmuni_ok.jsp" name="form1">
     <center>
<font color ="black" size="4" face="궁서"><b></b>
<table width="60%" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px gray solid;">
<tr>
 <td style="border:1px gray solid;" align="center">
닉네임</td><td style="border:1px gray solid;"><input type="text" name="nick" size=10></td></tr>
 <tr>
 <td style="border:1px gray solid;" align="center">이메일</td><td style="border:1px gray solid;"><input type="text" name="ema" size=16></td></tr>
 <tr>
 <td style="border:1px gray solid;" align="center">연락처(휴대폰)</td><td style="border:1px gray solid;"><input type="text" name="phone" size=3>
  - <input type="text" name="phone2" size=4>
  - <input type="text" name="phone3" size=4></td></tr>
  <tr>
  <td style="border:1px gray solid;" align="center">분류</td><td style="border:1px gray solid;">
  <select name="fireman">
   <option value="">뭐가 불만임?</option>
 <option value="환불">환불</option>
 <option value="교환">교환</option>
 <option value="짜증">짜증</option>
 <option value="상품">상품</option>
 <option value="구매">구매</option>
 <option value="주문">주문</option></select></td></tr>
 <tr>
<td width =40% align="center">내용</td>
<td width =60%><textarea name = "cont" rows="7" cols="40"></textarea></td>
</tr>
 </table><br>
 <input type ="button" value = "보낸다" onclick="valid_check()">
 <input type ="reset" value = "취소"></font>
 </center>
 </form>
 <style>
  
 </style>

</body>
</html>
