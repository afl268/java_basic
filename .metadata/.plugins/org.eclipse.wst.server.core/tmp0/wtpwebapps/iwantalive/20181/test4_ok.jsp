<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>id pw 리처</title>
</head>
<body>
<% 
String uid = request.getParameter("uid");
String upw = request.getParameter("upw");
out.print (" you are id " + uid+"<br>");
out.print (" you are pw " + upw);


%> 


</body>
</html>