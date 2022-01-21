<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.* , java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<title>MainPage</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table id="Table_01" width="1024" height="768" border="0" cellpadding="0" cellspacing="0">
<script language = "javascript">
function submit_login() {
	document.form1.action="mem_login_ok.jsp";
	document.form1.submit();
	
}
function submit_gaip() {
	document.form1.action="Gaip.jsp";
	document.form1.submit();
	
}
function submit_board() {
	document.form1.action="boardBlist.jsp";
	document.form1.submit();
	
}

</script>
<tr><td>
 <input type="image" onclick="self.location='test.jsp'" src="C:\Users\emoot\eclipse-workspace\iwantalive\WebContent\20181/coffee1.gif" width="256" height="164" alt="">
</td>
<td>
<input type="image" onclick="self.location='test.jsp'" src="C:\Users\emoot\eclipse-workspace\iwantalive\WebContent\20181/coffee2.gif"  width="497" height="164" alt="">
	</td><td>
			<input type="image" onclick="self.location='test.jsp'" src="C:\Users\emoot\eclipse-workspace\iwantalive\WebContent\20181/coffee3.gif" width="271" height="164" alt=""></td>
	</tr>
	<tr>
		<td>
			<a href="ESP.html">
				<input type="image" onclick="self.location='test.jsp'" src="C:\Users\emoot\eclipse-workspace\iwantalive\WebContent\20181/coffee4.gif" width="256" height="141" border="0" alt=""></a></td>
		<td>
			<input type="image" onclick="self.location='test.jsp'" src="C:\Users\emoot\eclipse-workspace\iwantalive\WebContent\20181/coffee5.gif"width="497" height="141" alt=""></td>
		<td>
			<a href="AME.html">
			<input type="image" onclick="self.location='test.jsp'" src="C:\Users\emoot\eclipse-workspace\iwantalive\WebContent\20181/coffee6.gif"  width="271" height="141" border="0" alt=""></a></td>
	</tr>
	<tr>
		<td>
			<input type="image" onclick="self.location='test.jsp'" src="C:\Users\emoot\eclipse-workspace\iwantalive\WebContent\20181/coffee7.gif"  width="256" height="168" alt=""></td>
		<td>
			<input type="image" onclick="self.location='test.jsp'" src="C:\Users\emoot\eclipse-workspace\iwantalive\WebContent\20181/coffee8.gif" width="497" height="168" alt=""></td>
		<td>
			<input type="image" onclick="self.location='test.jsp'" src="C:\Users\emoot\eclipse-workspace\iwantalive\WebContent\20181/coffee9.gif" width="271" height="168" alt=""></td>
	</tr>
	<tr>
		<td>
			<a href="CHINO.html">
				<input type="image" onclick="self.location='test.jsp'" src="C:\Users\emoot\eclipse-workspace\iwantalive\WebContent\20181/coffee10.gif" width="256" height="114" border="0" alt=""></a></td>
		<td>
			<input type="image" onclick="self.location='test.jsp'" src="C:\Users\emoot\eclipse-workspace\iwantalive\WebContent\20181/coffee11.gif" width="497" height="114" alt=""></td>
		<td>
			<a href="LATTE.html">
				<input type="image" onclick="self.location='test.jsp'" src="C:\Users\emoot\eclipse-workspace\iwantalive\WebContent\20181/coffee12.gif" width="271" height="114" border="0" alt=""></a></td>
	</tr>
	<tr>
		<td>
			<input type="image" onclick="self.location='test.jsp'" src="C:\Users\emoot\eclipse-workspace\iwantalive\WebContent\20181/coffee13.gif" width="256" height="181" alt=""></td>
		<td>
			<input type="image" onclick="self.location='test.jsp'" src="C:\Users\emoot\eclipse-workspace\iwantalive\WebContent\20181/coffee14.gif" width="497" height="181" alt=""></td>
		<td>
			<input type="image" onclick="self.location='test.jsp'" src="C:\Users\emoot\eclipse-workspace\iwantalive\WebContent\20181/coffee15.gif" width="271" height="181" alt=""></td>
	</tr>
	<script language= "javascript">
		function valid_check() {
			if(document.form1.uid.value.length<4) {
				alert("아이디 입력해주세요 제대로");
				document.form1.uid.focus();
				return false;
				
			}
			if(document.form1.pw.value=="") {
				alert("비밀번호 써주세요 제대로");
				document.form1.pw.focus();
				return false;
		}
			document.form1.submit();
		}
		</script>
		</head>
		<body>
		
<!-- End Save for Web Slices -->
</body>
</html>