<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
Date today = new Date();
Calendar cal = Calendar.getInstance();
%>
오늘은 <%=today %>입니다.
<br>
오늘은 <%=cal.get(Calendar.YEAR) %> 년
<%= cal.get(Calendar.MONTH)+1 %> 월
<%= cal.get(Calendar.DATE) %> 일입니다.
</body>
</html>

중간고사에 나옴