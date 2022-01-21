<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.* , java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript">
function valid_check() {
	if (document.form1.writer.value=="") {
		alert("작성자명을 입력하세요");
		document.form1.writer.focus();
		return false;
	}
	if (document.form1.contents.value=="") {
		alert("내용을 입력하세요");
		document.form1.contents.focus();
		return false;
	}
	if (document.form1.title.value=="") {
		alert("제목을 입력하세요");
		document.form1.title.focus();
		return false;
	}
	document.form1.submit();
}
function submit_list() {
	document.form1.action="boardBlist.jsp";
	document.form1.submit();
}
</script>
<title>공지사항 새글쓰기</title>
</head>
<body>
<form action="boardBwrite_ok.jsp" method = "post" name = "form1">
<table width=500 border=1>
<tr><td width="40%" align="left">작성자 명</td><td><input type="text" name="writer">
</td>
</tr> 
<tr><td>제목</td><td><input type="text" name="title">
</td>
</tr> 
<tr><td>내용</td><td><textarea name="contents" rows=5 cols=60></textarea>
</td>
</tr> 
<tr>
<td width="100%" align=center colspan=2>
<table>
<tr>
<td colspan="2" align="center">
<input type = "reset" value="다시작성">
<input type = "button" value="등록" onclick="valid_check()">
<input type = "button" value="목록으로" onclick="submit_list()">
</td>
</tr>
</table>
</td>
</tr>
</table>
</form>

</body>
</html>