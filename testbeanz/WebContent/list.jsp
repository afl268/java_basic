<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="testbeanz.*" %>
    
    <jsp:useBean id ="am" class="testbeanz.AddrManager" scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align=center>
<h2>주소록</h2>
<hr>
<a href="formm.jsp">주소추가</a><p>

<table border=1 width=500>
<tr><td>이름</td><td>전번</td><td>메일</td><td>성별</td></tr>
<%
for(AddrBean ab : am.getAddrList()) {
	%>

<tr>
<td><%=ab.getUsername() %></td>
<td><%=ab.getTel() %>
<td><%=ab.getEmail() %></td>
<td><%=ab.getSex() %></td>
</tr>
<%
}%>
</table>
</div>
</body>
</html>