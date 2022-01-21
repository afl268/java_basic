<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="testbean.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Student student = new Student();

student.setUserName("홍길동");
student.setUserNo(20);

out.print("번호 : " + student.getUserNo() + "<BR>");
out.print("성명 : " + student.getUserName() + "<BR>");
%>
</body>
</html>