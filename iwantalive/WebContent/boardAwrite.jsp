<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*,java.util.*"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script language = javascript>
function valid_check() {
	if(document.form1.writer.value=="") {
		alert("작성자명을 입력하세요");
		document.form1.writer.focus();
		return false;
	}
	if(document.form1.title.value=="") {
		alert("제목을 입력하세요");
		document.form1.title.focus();
		return false;
	}
	if(document.form1.contents.value=="") {
		alert("내용을 입력하세요");
		document.form1.contents.focus();
		return false;
	}
	document.form1.submit();
}
function submit_list() {
	document.form1.action="boardA.jsp";
	document.form1.submit();
}
</script>
<body>
<h3>공지사항 글쓰기</h3>
<form name ="form1" action ="boardAwrite_ok.jsp" method = post>
<table width=500 border=1>
<tr>
<td width =40%>작성자명</td>
<td width =60%><input type = "test" name="writer" ></td>
</tr>
<tr>
<td width =40%>제목</td>
<td width =60%><input type = "test" name="title" ></td>
</tr>
<tr>
<td width =40%>내용</td>
<td width =60%><textarea name = "contents" rows="5" cols="60"></textarea></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type = "reset" value="다시작성">
<input type = "button" value="등록" onclick="valid_check()">
<input type = "button" value="목록으로" onclick="submit_list()">
</td>
</tr>

</table>
</form>

</body>
</html>