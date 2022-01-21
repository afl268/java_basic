<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="testbeanz.*" %>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    
    <jsp:useBean id="addr" class="testbeanz.AddrBean" />
    <jsp:setProperty name="addr" property="*"/>
    <jsp:useBean id="am" class="testbeanz.AddrManager" scope="application"/>
    <%
    am.add(addr);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>등록내용</h2>

이름 : <jsp:getProperty property="username" name="addr"/><P>
전번 : <jsp:getProperty property="tel" name="addr"/><P>
메일 : <jsp:getProperty property="email" name="addr"/><P>
성별 : <jsp:getProperty property="sex" name="addr"/><P>
<hr>

<a href="list.jsp">목록 보기</a>
</div>
</body>
</html>